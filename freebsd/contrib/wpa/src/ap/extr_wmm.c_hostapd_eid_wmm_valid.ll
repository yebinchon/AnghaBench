; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wmm.c_hostapd_eid_wmm_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wmm.c_hostapd_eid_wmm_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.wmm_information_element = type { i64, i64, i32, i32, i32* }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"WMM IE\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Too short WMM IE (len=%lu)\00", align 1
@.str.2 = private unnamed_addr constant [95 x i8] c"Validating WMM IE: OUI %02x:%02x:%02x  OUI type %d  OUI sub-type %d  version %d  QoS info 0x%x\00", align 1
@WMM_OUI_SUBTYPE_INFORMATION_ELEMENT = common dso_local global i64 0, align 8
@WMM_VERSION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Unsupported WMM IE Subtype/Version\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_eid_wmm_valid(%struct.hostapd_data* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wmm_information_element*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* @MSG_MSGDUMP, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @wpa_hexdump(i32 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %10, i64 %11)
  %13 = load i64, i64* %7, align 8
  %14 = icmp ult i64 %13, 32
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = load i64, i64* %7, align 8
  %18 = call i32 (i32, i8*, ...) @wpa_printf(i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  store i32 0, i32* %4, align 4
  br label %66

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = bitcast i32* %20 to %struct.wmm_information_element*
  store %struct.wmm_information_element* %21, %struct.wmm_information_element** %8, align 8
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = load %struct.wmm_information_element*, %struct.wmm_information_element** %8, align 8
  %24 = getelementptr inbounds %struct.wmm_information_element, %struct.wmm_information_element* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.wmm_information_element*, %struct.wmm_information_element** %8, align 8
  %29 = getelementptr inbounds %struct.wmm_information_element, %struct.wmm_information_element* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.wmm_information_element*, %struct.wmm_information_element** %8, align 8
  %34 = getelementptr inbounds %struct.wmm_information_element, %struct.wmm_information_element* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.wmm_information_element*, %struct.wmm_information_element** %8, align 8
  %39 = getelementptr inbounds %struct.wmm_information_element, %struct.wmm_information_element* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.wmm_information_element*, %struct.wmm_information_element** %8, align 8
  %42 = getelementptr inbounds %struct.wmm_information_element, %struct.wmm_information_element* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.wmm_information_element*, %struct.wmm_information_element** %8, align 8
  %45 = getelementptr inbounds %struct.wmm_information_element, %struct.wmm_information_element* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.wmm_information_element*, %struct.wmm_information_element** %8, align 8
  %48 = getelementptr inbounds %struct.wmm_information_element, %struct.wmm_information_element* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.2, i64 0, i64 0), i32 %27, i32 %32, i32 %37, i32 %40, i64 %43, i64 %46, i32 %49)
  %51 = load %struct.wmm_information_element*, %struct.wmm_information_element** %8, align 8
  %52 = getelementptr inbounds %struct.wmm_information_element, %struct.wmm_information_element* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @WMM_OUI_SUBTYPE_INFORMATION_ELEMENT, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %19
  %57 = load %struct.wmm_information_element*, %struct.wmm_information_element** %8, align 8
  %58 = getelementptr inbounds %struct.wmm_information_element, %struct.wmm_information_element* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @WMM_VERSION, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56, %19
  %63 = load i32, i32* @MSG_DEBUG, align 4
  %64 = call i32 (i32, i8*, ...) @wpa_printf(i32 %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %66

65:                                               ; preds = %56
  store i32 1, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %62, %15
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
