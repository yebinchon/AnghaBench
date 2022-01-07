; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bgscan_simple.c_bgscan_simple_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bgscan_simple.c_bgscan_simple_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgscan_simple_data = type { i64, i64, i64, i64, i64, i32, %struct.TYPE_4__*, %struct.wpa_supplicant* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.wpa_supplicant = type { i32 }
%struct.wpa_driver_scan_params = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"bgscan simple: Request a background scan\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"bgscan simple: Failed to trigger scan\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"bgscan simple: Backing off to long scan interval\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @bgscan_simple_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgscan_simple_timeout(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bgscan_simple_data*, align 8
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca %struct.wpa_driver_scan_params, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.bgscan_simple_data*
  store %struct.bgscan_simple_data* %9, %struct.bgscan_simple_data** %5, align 8
  %10 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %5, align 8
  %11 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %10, i32 0, i32 7
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  store %struct.wpa_supplicant* %12, %struct.wpa_supplicant** %6, align 8
  %13 = call i32 @os_memset(%struct.wpa_driver_scan_params* %7, i32 0, i32 16)
  %14 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %7, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %5, align 8
  %16 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %15, i32 0, i32 6
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %7, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i32 %19, i32* %23, align 4
  %24 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %5, align 8
  %25 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %24, i32 0, i32 6
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %7, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 4
  %33 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %5, align 8
  %34 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %33, i32 0, i32 6
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %7, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = call i32 @wpa_printf(i32 %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %42 = call i64 @wpa_supplicant_trigger_scan(%struct.wpa_supplicant* %41, %struct.wpa_driver_scan_params* %7)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %2
  %45 = load i32, i32* @MSG_DEBUG, align 4
  %46 = call i32 @wpa_printf(i32 %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %5, align 8
  %48 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %5, align 8
  %51 = call i32 @eloop_register_timeout(i64 %49, i32 0, void (i8*, i8*)* @bgscan_simple_timeout, %struct.bgscan_simple_data* %50, i32* null)
  br label %96

52:                                               ; preds = %2
  %53 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %5, align 8
  %54 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %5, align 8
  %57 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %52
  %61 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %5, align 8
  %62 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %62, align 8
  %65 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %5, align 8
  %66 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %5, align 8
  %69 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp sge i64 %67, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %60
  %73 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %5, align 8
  %74 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %5, align 8
  %77 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load i32, i32* @MSG_DEBUG, align 4
  %79 = call i32 @wpa_printf(i32 %78, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %72, %60
  br label %92

81:                                               ; preds = %52
  %82 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %5, align 8
  %83 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %5, align 8
  %88 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, -1
  store i64 %90, i64* %88, align 8
  br label %91

91:                                               ; preds = %86, %81
  br label %92

92:                                               ; preds = %91, %80
  %93 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %5, align 8
  %94 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %93, i32 0, i32 5
  %95 = call i32 @os_get_reltime(i32* %94)
  br label %96

96:                                               ; preds = %92, %44
  ret void
}

declare dso_local i32 @os_memset(%struct.wpa_driver_scan_params*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wpa_supplicant_trigger_scan(%struct.wpa_supplicant*, %struct.wpa_driver_scan_params*) #1

declare dso_local i32 @eloop_register_timeout(i64, i32, void (i8*, i8*)*, %struct.bgscan_simple_data*, i32*) #1

declare dso_local i32 @os_get_reltime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
