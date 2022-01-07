; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_hostapd_ioctl_set_generic_elem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_hostapd_ioctl_set_generic_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostap_driver_data = type { i64, i64, i32, i32 }
%struct.prism2_hostapd_param = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32* }

@PRISM2_HOSTAPD_GENERIC_ELEMENT_HDR_LEN = common dso_local global i64 0, align 8
@PRISM2_HOSTAPD_SET_GENERIC_ELEMENT = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"hostap: Set generic IE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostap_driver_data*)* @hostapd_ioctl_set_generic_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_ioctl_set_generic_elem(%struct.hostap_driver_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostap_driver_data*, align 8
  %4 = alloca %struct.prism2_hostapd_param*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.hostap_driver_data* %0, %struct.hostap_driver_data** %3, align 8
  %8 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %3, align 8
  %9 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %3, align 8
  %12 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %10, %13
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* @PRISM2_HOSTAPD_GENERIC_ELEMENT_HDR_LEN, align 8
  %16 = load i64, i64* %7, align 8
  %17 = add i64 %15, %16
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ult i64 %18, 24
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i64 24, i64* %6, align 8
  br label %21

21:                                               ; preds = %20, %1
  %22 = load i64, i64* %6, align 8
  %23 = call %struct.prism2_hostapd_param* @os_zalloc(i64 %22)
  store %struct.prism2_hostapd_param* %23, %struct.prism2_hostapd_param** %4, align 8
  %24 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %4, align 8
  %25 = icmp eq %struct.prism2_hostapd_param* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 -1, i32* %2, align 4
  br label %91

27:                                               ; preds = %21
  %28 = load i32, i32* @PRISM2_HOSTAPD_SET_GENERIC_ELEMENT, align 4
  %29 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %4, align 8
  %30 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %4, align 8
  %33 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i64 %31, i64* %35, align 8
  %36 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %3, align 8
  %37 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %27
  %41 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %4, align 8
  %42 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %3, align 8
  %47 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %3, align 8
  %50 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @os_memcpy(i32* %45, i32 %48, i64 %51)
  br label %53

53:                                               ; preds = %40, %27
  %54 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %3, align 8
  %55 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %53
  %59 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %4, align 8
  %60 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %3, align 8
  %65 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %3, align 8
  %69 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %3, align 8
  %72 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @os_memcpy(i32* %67, i32 %70, i64 %73)
  br label %75

75:                                               ; preds = %58, %53
  %76 = load i32, i32* @MSG_DEBUG, align 4
  %77 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %4, align 8
  %78 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @wpa_hexdump(i32 %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %81, i64 %82)
  %84 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %3, align 8
  %85 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %4, align 8
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @hostapd_ioctl(%struct.hostap_driver_data* %84, %struct.prism2_hostapd_param* %85, i64 %86)
  store i32 %87, i32* %5, align 4
  %88 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %4, align 8
  %89 = call i32 @os_free(%struct.prism2_hostapd_param* %88)
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %75, %26
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.prism2_hostapd_param* @os_zalloc(i64) #1

declare dso_local i32 @os_memcpy(i32*, i32, i64) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @hostapd_ioctl(%struct.hostap_driver_data*, %struct.prism2_hostapd_param*, i64) #1

declare dso_local i32 @os_free(%struct.prism2_hostapd_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
