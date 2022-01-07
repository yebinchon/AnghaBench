; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-app-hotplug.c_cvmx_app_hotplug_unplug_cores.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-app-hotplug.c_cvmx_app_hotplug_unplug_cores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"\0AERROR: Failed to get hotplug info for app at index=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"\0AERROR: Not all cores requested are a part of the app r=%08x:%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"\0AERROR: Trying to remove all cores in app. r=%08x:%08x\0A\00", align 1
@CVMX_MAX_CORES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_app_hotplug_unplug_cores(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.TYPE_4__* @cvmx_app_hotplug_get_info_at_index(i32 %10)
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %8, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 -1, i32* %4, align 4
  br label %71

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %16
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %33)
  store i32 -1, i32* %4, align 4
  br label %71

35:                                               ; preds = %16
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %45)
  store i32 -1, i32* %4, align 4
  br label %71

47:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %67, %47
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @CVMX_MAX_CORES, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %70

52:                                               ; preds = %48
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = load i32, i32* %9, align 4
  %58 = zext i32 %57 to i64
  %59 = shl i64 1, %58
  %60 = and i64 %56, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @CVMX_CIU_MBOX_SETX(i32 %63)
  %65 = call i32 @cvmx_write_csr(i32 %64, i32 2)
  br label %66

66:                                               ; preds = %62, %52
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %48

70:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %41, %29, %13
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.TYPE_4__* @cvmx_app_hotplug_get_info_at_index(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_CIU_MBOX_SETX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
