; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.c_hostapd_set_drv_ieee8021x.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.c_hostapd_set_drv_ieee8021x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wpa_bss_params = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32 }

@WPA_PROTO_WPA = common dso_local global i32 0, align 4
@WPA_PROTO_RSN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_set_drv_ieee8021x(%struct.hostapd_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_bss_params, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 @os_memset(%struct.wpa_bss_params* %7, i32 0, i32 40)
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds %struct.wpa_bss_params, %struct.wpa_bss_params* %7, i32 0, i32 0
  store i8* %9, i8** %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = getelementptr inbounds %struct.wpa_bss_params, %struct.wpa_bss_params* %7, i32 0, i32 1
  store i32 %11, i32* %12, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %107

15:                                               ; preds = %3
  %16 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %17 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.wpa_bss_params, %struct.wpa_bss_params* %7, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %23 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.wpa_bss_params, %struct.wpa_bss_params* %7, i32 0, i32 8
  store i32 %26, i32* %27, align 4
  %28 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %29 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.wpa_bss_params, %struct.wpa_bss_params* %7, i32 0, i32 7
  store i32 %32, i32* %33, align 8
  %34 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %35 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @WPA_PROTO_WPA, align 4
  %40 = load i32, i32* @WPA_PROTO_RSN, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = load i32, i32* @WPA_PROTO_WPA, align 4
  %44 = load i32, i32* @WPA_PROTO_RSN, align 4
  %45 = or i32 %43, %44
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %15
  %48 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %49 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %54 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %52, %57
  %59 = getelementptr inbounds %struct.wpa_bss_params, %struct.wpa_bss_params* %7, i32 0, i32 3
  store i32 %58, i32* %59, align 8
  br label %94

60:                                               ; preds = %15
  %61 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %62 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @WPA_PROTO_RSN, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %60
  %70 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %71 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.wpa_bss_params, %struct.wpa_bss_params* %7, i32 0, i32 3
  store i32 %74, i32* %75, align 8
  br label %93

76:                                               ; preds = %60
  %77 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %78 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @WPA_PROTO_WPA, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %76
  %86 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %87 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.wpa_bss_params, %struct.wpa_bss_params* %7, i32 0, i32 3
  store i32 %90, i32* %91, align 8
  br label %92

92:                                               ; preds = %85, %76
  br label %93

93:                                               ; preds = %92, %69
  br label %94

94:                                               ; preds = %93, %47
  %95 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %96 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.wpa_bss_params, %struct.wpa_bss_params* %7, i32 0, i32 6
  store i32 %99, i32* %100, align 4
  %101 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %102 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.wpa_bss_params, %struct.wpa_bss_params* %7, i32 0, i32 5
  store i32 %105, i32* %106, align 8
  br label %107

107:                                              ; preds = %94, %3
  %108 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %109 = call i32 @hostapd_set_ieee8021x(%struct.hostapd_data* %108, %struct.wpa_bss_params* %7)
  ret i32 %109
}

declare dso_local i32 @os_memset(%struct.wpa_bss_params*, i32, i32) #1

declare dso_local i32 @hostapd_set_ieee8021x(%struct.hostapd_data*, %struct.wpa_bss_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
