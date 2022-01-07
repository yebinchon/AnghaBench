; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_config.c_parse_owners.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_config.c_parse_owners.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.passwd = type { i32, i32, i32 }
%struct.group = type { i32 }

@system_user = common dso_local global i64* null, align 8
@errno = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@system_group = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @parse_owners to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_owners(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.passwd*, align 8
  %7 = alloca %struct.group*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i64*, i64** @system_user, align 8
  %11 = icmp ne i64* %10, null
  br i1 %11, label %12, label %47

12:                                               ; preds = %1
  %13 = load i64*, i64** @system_user, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i8
  %17 = call i64 @isdigit(i8 zeroext %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load i64*, i64** @system_user, align 8
  %21 = call i32 @atoi(i64* %20)
  %22 = call %struct.passwd* @getpwuid(i32 %21)
  store %struct.passwd* %22, %struct.passwd** %6, align 8
  br label %26

23:                                               ; preds = %12
  %24 = load i64*, i64** @system_user, align 8
  %25 = call %struct.passwd* @getpwnam(i64* %24)
  store %struct.passwd* %25, %struct.passwd** %6, align 8
  br label %26

26:                                               ; preds = %23, %19
  %27 = load %struct.passwd*, %struct.passwd** %6, align 8
  %28 = icmp eq %struct.passwd* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @errno, align 4
  store i32 %30, i32* %2, align 4
  br label %94

31:                                               ; preds = %26
  %32 = load %struct.passwd*, %struct.passwd** %6, align 8
  %33 = getelementptr inbounds %struct.passwd, %struct.passwd* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i64* @strdup(i32 %34)
  store i64* %35, i64** @system_user, align 8
  %36 = load i64*, i64** @system_user, align 8
  %37 = icmp eq i64* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @ENOMEM, align 4
  store i32 %39, i32* %2, align 4
  br label %94

40:                                               ; preds = %31
  %41 = load %struct.passwd*, %struct.passwd** %6, align 8
  %42 = getelementptr inbounds %struct.passwd, %struct.passwd* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %4, align 4
  store i32 1, i32* %8, align 4
  %44 = load %struct.passwd*, %struct.passwd** %6, align 8
  %45 = getelementptr inbounds %struct.passwd, %struct.passwd* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %5, align 4
  store i32 1, i32* %9, align 4
  br label %47

47:                                               ; preds = %40, %1
  %48 = load i64*, i64** @system_group, align 8
  %49 = icmp ne i64* %48, null
  br i1 %49, label %50, label %73

50:                                               ; preds = %47
  %51 = load i64*, i64** @system_group, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i8
  %55 = call i64 @isdigit(i8 zeroext %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i64*, i64** @system_group, align 8
  %59 = call i32 @atoi(i64* %58)
  %60 = call %struct.group* @getgrgid(i32 %59)
  store %struct.group* %60, %struct.group** %7, align 8
  br label %64

61:                                               ; preds = %50
  %62 = load i64*, i64** @system_group, align 8
  %63 = call %struct.group* @getgrnam(i64* %62)
  store %struct.group* %63, %struct.group** %7, align 8
  br label %64

64:                                               ; preds = %61, %57
  %65 = load %struct.group*, %struct.group** %7, align 8
  %66 = icmp eq %struct.group* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @errno, align 4
  store i32 %68, i32* %2, align 4
  br label %94

69:                                               ; preds = %64
  %70 = load %struct.group*, %struct.group** %7, align 8
  %71 = getelementptr inbounds %struct.group, %struct.group* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %5, align 4
  store i32 1, i32* %9, align 4
  br label %73

73:                                               ; preds = %69, %47
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %83

80:                                               ; preds = %73
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  store i32 0, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %76
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  br label %93

90:                                               ; preds = %83
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i32 0, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %86
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %67, %38, %29
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @atoi(i64*) #1

declare dso_local %struct.passwd* @getpwnam(i64*) #1

declare dso_local i64* @strdup(i32) #1

declare dso_local %struct.group* @getgrgid(i32) #1

declare dso_local %struct.group* @getgrnam(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
