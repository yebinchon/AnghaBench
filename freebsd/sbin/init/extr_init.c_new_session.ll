; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_new_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_new_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__*, %struct.TYPE_7__*, i32, i32 }
%struct.ttyent = type { i32, i64, i64 }

@TTY_ON = common dso_local global i32 0, align 4
@SE_PRESENT = common dso_local global i32 0, align 4
@TTY_IFEXISTS = common dso_local global i32 0, align 4
@SE_IFEXISTS = common dso_local global i32 0, align 4
@TTY_IFCONSOLE = common dso_local global i32 0, align 4
@SE_IFCONSOLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@_PATH_DEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"asprintf\00", align 1
@sessions = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_7__*, %struct.ttyent*)* @new_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @new_session(%struct.TYPE_7__* %0, %struct.ttyent* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.ttyent*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.ttyent* %1, %struct.ttyent** %5, align 8
  %7 = load %struct.ttyent*, %struct.ttyent** %5, align 8
  %8 = getelementptr inbounds %struct.ttyent, %struct.ttyent* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @TTY_ON, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %2
  %14 = load %struct.ttyent*, %struct.ttyent** %5, align 8
  %15 = getelementptr inbounds %struct.ttyent, %struct.ttyent* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.ttyent*, %struct.ttyent** %5, align 8
  %20 = getelementptr inbounds %struct.ttyent, %struct.ttyent* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %13, %2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %94

24:                                               ; preds = %18
  %25 = call i64 @calloc(i32 1, i32 24)
  %26 = inttoptr i64 %25 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %6, align 8
  %27 = load i32, i32* @SE_PRESENT, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.ttyent*, %struct.ttyent** %5, align 8
  %33 = getelementptr inbounds %struct.ttyent, %struct.ttyent* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @TTY_IFEXISTS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %24
  %39 = load i32, i32* @SE_IFEXISTS, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %24
  %45 = load %struct.ttyent*, %struct.ttyent** %5, align 8
  %46 = getelementptr inbounds %struct.ttyent, %struct.ttyent* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @TTY_IFCONSOLE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load i32, i32* @SE_IFCONSOLE, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %51, %44
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load i32, i32* @_PATH_DEV, align 4
  %61 = load %struct.ttyent*, %struct.ttyent** %5, align 8
  %62 = getelementptr inbounds %struct.ttyent, %struct.ttyent* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @asprintf(i32* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %60, i64 %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %57
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = load %struct.ttyent*, %struct.ttyent** %5, align 8
  %71 = call i64 @setupargv(%struct.TYPE_7__* %69, %struct.ttyent* %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = call i32 @free_session(%struct.TYPE_7__* %74)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %94

76:                                               ; preds = %68
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %78, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %80 = icmp eq %struct.TYPE_7__* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %82, %struct.TYPE_7__** @sessions, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %84, align 8
  br label %92

85:                                               ; preds = %76
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  store %struct.TYPE_7__* %86, %struct.TYPE_7__** %88, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  store %struct.TYPE_7__* %89, %struct.TYPE_7__** %91, align 8
  br label %92

92:                                               ; preds = %85, %81
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %93, %struct.TYPE_7__** %3, align 8
  br label %94

94:                                               ; preds = %92, %73, %23
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %95
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @asprintf(i32*, i8*, i32, i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @setupargv(%struct.TYPE_7__*, %struct.ttyent*) #1

declare dso_local i32 @free_session(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
