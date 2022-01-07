; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getpwent.c_compat_set_template.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getpwent.c_compat_set_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32, i32*, i32*, i32*, i32, i32, i32* }

@_PWF_UID = common dso_local global i32 0, align 4
@_PWF_GID = common dso_local global i32 0, align 4
@_PWF_GECOS = common dso_local global i32 0, align 4
@_PWF_DIR = common dso_local global i32 0, align 4
@_PWF_SHELL = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"getpwent memory allocation failure\00", align 1
@_PWF_PASSWD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.passwd*, %struct.passwd*)* @compat_set_template to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compat_set_template(%struct.passwd* %0, %struct.passwd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca %struct.passwd*, align 8
  store %struct.passwd* %0, %struct.passwd** %4, align 8
  store %struct.passwd* %1, %struct.passwd** %5, align 8
  %6 = load %struct.passwd*, %struct.passwd** %5, align 8
  %7 = call i32 @compat_clear_template(%struct.passwd* %6)
  %8 = load %struct.passwd*, %struct.passwd** %4, align 8
  %9 = getelementptr inbounds %struct.passwd, %struct.passwd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @_PWF_UID, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.passwd*, %struct.passwd** %4, align 8
  %16 = getelementptr inbounds %struct.passwd, %struct.passwd* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.passwd*, %struct.passwd** %5, align 8
  %19 = getelementptr inbounds %struct.passwd, %struct.passwd* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 4
  br label %20

20:                                               ; preds = %14, %2
  %21 = load %struct.passwd*, %struct.passwd** %4, align 8
  %22 = getelementptr inbounds %struct.passwd, %struct.passwd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @_PWF_GID, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.passwd*, %struct.passwd** %4, align 8
  %29 = getelementptr inbounds %struct.passwd, %struct.passwd* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.passwd*, %struct.passwd** %5, align 8
  %32 = getelementptr inbounds %struct.passwd, %struct.passwd* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %27, %20
  %34 = load %struct.passwd*, %struct.passwd** %4, align 8
  %35 = getelementptr inbounds %struct.passwd, %struct.passwd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @_PWF_GECOS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %33
  %41 = load %struct.passwd*, %struct.passwd** %4, align 8
  %42 = getelementptr inbounds %struct.passwd, %struct.passwd* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = call i8* @strdup(i32* %43)
  %45 = bitcast i8* %44 to i32*
  %46 = load %struct.passwd*, %struct.passwd** %5, align 8
  %47 = getelementptr inbounds %struct.passwd, %struct.passwd* %46, i32 0, i32 3
  store i32* %45, i32** %47, align 8
  %48 = icmp eq i32* %45, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %90

50:                                               ; preds = %40, %33
  %51 = load %struct.passwd*, %struct.passwd** %4, align 8
  %52 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @_PWF_DIR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %50
  %58 = load %struct.passwd*, %struct.passwd** %4, align 8
  %59 = getelementptr inbounds %struct.passwd, %struct.passwd* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = call i8* @strdup(i32* %60)
  %62 = bitcast i8* %61 to i32*
  %63 = load %struct.passwd*, %struct.passwd** %5, align 8
  %64 = getelementptr inbounds %struct.passwd, %struct.passwd* %63, i32 0, i32 2
  store i32* %62, i32** %64, align 8
  %65 = icmp eq i32* %62, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %90

67:                                               ; preds = %57, %50
  %68 = load %struct.passwd*, %struct.passwd** %4, align 8
  %69 = getelementptr inbounds %struct.passwd, %struct.passwd* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @_PWF_SHELL, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %67
  %75 = load %struct.passwd*, %struct.passwd** %4, align 8
  %76 = getelementptr inbounds %struct.passwd, %struct.passwd* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = call i8* @strdup(i32* %77)
  %79 = bitcast i8* %78 to i32*
  %80 = load %struct.passwd*, %struct.passwd** %5, align 8
  %81 = getelementptr inbounds %struct.passwd, %struct.passwd* %80, i32 0, i32 1
  store i32* %79, i32** %81, align 8
  %82 = icmp eq i32* %79, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %90

84:                                               ; preds = %74, %67
  %85 = load %struct.passwd*, %struct.passwd** %4, align 8
  %86 = getelementptr inbounds %struct.passwd, %struct.passwd* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.passwd*, %struct.passwd** %5, align 8
  %89 = getelementptr inbounds %struct.passwd, %struct.passwd* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  store i32 0, i32* %3, align 4
  br label %93

90:                                               ; preds = %83, %66, %49
  %91 = load i32, i32* @LOG_ERR, align 4
  %92 = call i32 @syslog(i32 %91, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %93

93:                                               ; preds = %90, %84
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @compat_clear_template(%struct.passwd*) #1

declare dso_local i8* @strdup(i32*) #1

declare dso_local i32 @syslog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
