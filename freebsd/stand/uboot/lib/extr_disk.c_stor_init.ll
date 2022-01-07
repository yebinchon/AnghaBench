; ModuleID = '/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_disk.c_stor_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_disk.c_stor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i64 }
%struct.device_info = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@devs_no = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"No U-Boot devices! Really enumerated?\0A\00", align 1
@DEV_TYP_STOR = common dso_local global i32 0, align 4
@stor_info_no = common dso_local global i32 0, align 4
@UB_MAX_DEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Too many storage devices: %d\0A\00", align 1
@stor_info = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"No storage devices\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"storage devices found: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @stor_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stor_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.device_info*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @devs_no, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %84

8:                                                ; preds = %0
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %73, %8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @devs_no, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %76

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.device_info* @ub_dev_get(i32 %14)
  store %struct.device_info* %15, %struct.device_info** %2, align 8
  %16 = load %struct.device_info*, %struct.device_info** %2, align 8
  %17 = icmp ne %struct.device_info* %16, null
  br i1 %17, label %18, label %72

18:                                               ; preds = %13
  %19 = load %struct.device_info*, %struct.device_info** %2, align 8
  %20 = getelementptr inbounds %struct.device_info, %struct.device_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @DEV_TYP_STOR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %72

25:                                               ; preds = %18
  %26 = load i32, i32* @stor_info_no, align 4
  %27 = load i32, i32* @UB_MAX_DEV, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @stor_info_no, align 4
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  store i32 -1, i32* %1, align 4
  br label %84

32:                                               ; preds = %25
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stor_info, align 8
  %35 = load i32, i32* @stor_info_no, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %33, i32* %38, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stor_info, align 8
  %40 = load i32, i32* @stor_info_no, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = load %struct.device_info*, %struct.device_info** %2, align 8
  %45 = getelementptr inbounds %struct.device_info, %struct.device_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stor_info, align 8
  %48 = load i32, i32* @stor_info_no, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 %46, i32* %51, align 4
  %52 = load %struct.device_info*, %struct.device_info** %2, align 8
  %53 = getelementptr inbounds %struct.device_info, %struct.device_info* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stor_info, align 8
  %57 = load i32, i32* @stor_info_no, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  store i32 %55, i32* %60, align 4
  %61 = load %struct.device_info*, %struct.device_info** %2, align 8
  %62 = getelementptr inbounds %struct.device_info, %struct.device_info* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stor_info, align 8
  %66 = load i32, i32* @stor_info_no, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  store i32 %64, i32* %69, align 8
  %70 = load i32, i32* @stor_info_no, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* @stor_info_no, align 4
  br label %72

72:                                               ; preds = %32, %18, %13
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %9

76:                                               ; preds = %9
  %77 = load i32, i32* @stor_info_no, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = call i32 (i8*, ...) @debugf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %84

81:                                               ; preds = %76
  %82 = load i32, i32* @stor_info_no, align 4
  %83 = call i32 (i8*, ...) @debugf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  store i32 0, i32* %1, align 4
  br label %84

84:                                               ; preds = %81, %79, %29, %6
  %85 = load i32, i32* %1, align 4
  ret i32 %85
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.device_info* @ub_dev_get(i32) #1

declare dso_local i32 @debugf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
