; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_bss_load.c_update_channel_utilization.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_bss_load.c_update_channel_utilization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__*, %struct.hostapd_iface*, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.hostapd_iface = type { i32, i32, i32, i64, i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"BSS Load: Failed to get survey data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @update_channel_utilization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_channel_utilization(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hostapd_iface*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.hostapd_data*
  store %struct.hostapd_data* %11, %struct.hostapd_data** %5, align 8
  %12 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %13 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %12, i32 0, i32 1
  %14 = load %struct.hostapd_iface*, %struct.hostapd_iface** %13, align 8
  store %struct.hostapd_iface* %14, %struct.hostapd_iface** %9, align 8
  %15 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %16 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %21 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %2
  br label %106

25:                                               ; preds = %19
  %26 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %27 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %28 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %27, i32 0, i32 1
  %29 = load %struct.hostapd_iface*, %struct.hostapd_iface** %28, align 8
  %30 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @hostapd_drv_get_survey(%struct.hostapd_data* %26, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load i32, i32* @MSG_ERROR, align 4
  %37 = call i32 @wpa_printf(i32 %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %106

38:                                               ; preds = %25
  %39 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %40 = call i32 @ieee802_11_set_beacon(%struct.hostapd_data* %39)
  %41 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %42 = call i64 @get_bss_load_update_timeout(%struct.hostapd_data* %41, i32* %6, i32* %7)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %106

45:                                               ; preds = %38
  %46 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %47 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %101

52:                                               ; preds = %45
  %53 = load %struct.hostapd_iface*, %struct.hostapd_iface** %9, align 8
  %54 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.hostapd_iface*, %struct.hostapd_iface** %9, align 8
  %57 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %55
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 8
  %62 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %63 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.hostapd_iface*, %struct.hostapd_iface** %9, align 8
  %68 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.hostapd_iface*, %struct.hostapd_iface** %9, align 8
  %72 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %75 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp sge i32 %73, %78
  br i1 %79, label %80, label %100

80:                                               ; preds = %52
  %81 = load %struct.hostapd_iface*, %struct.hostapd_iface** %9, align 8
  %82 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.hostapd_iface*, %struct.hostapd_iface** %9, align 8
  %85 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %88 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sdiv i32 %86, %91
  %93 = sdiv i32 %83, %92
  %94 = load %struct.hostapd_iface*, %struct.hostapd_iface** %9, align 8
  %95 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.hostapd_iface*, %struct.hostapd_iface** %9, align 8
  %97 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %96, i32 0, i32 0
  store i32 0, i32* %97, align 8
  %98 = load %struct.hostapd_iface*, %struct.hostapd_iface** %9, align 8
  %99 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %98, i32 0, i32 1
  store i32 0, i32* %99, align 4
  br label %100

100:                                              ; preds = %80, %52
  br label %101

101:                                              ; preds = %100, %45
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %105 = call i32 @eloop_register_timeout(i32 %102, i32 %103, void (i8*, i8*)* @update_channel_utilization, %struct.hostapd_data* %104, i32* null)
  br label %106

106:                                              ; preds = %101, %44, %35, %24
  ret void
}

declare dso_local i32 @hostapd_drv_get_survey(%struct.hostapd_data*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @ieee802_11_set_beacon(%struct.hostapd_data*) #1

declare dso_local i64 @get_bss_load_update_timeout(%struct.hostapd_data*, i32*, i32*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, void (i8*, i8*)*, %struct.hostapd_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
