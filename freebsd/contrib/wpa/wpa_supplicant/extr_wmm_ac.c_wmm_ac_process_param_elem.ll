; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wmm_ac.c_wmm_ac_process_param_elem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wmm_ac.c_wmm_ac_process_param_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmm_ac_assoc_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.wpa_supplicant = type { i32 }
%struct.ieee802_11_elems = type { i32, i64 }
%struct.wmm_parameter_element = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ParseFailed = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"WMM AC: could not parse assoc ies\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"WMM AC: No WMM IE\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"WMM AC: Invalid WMM ie length\00", align 1
@WMM_AC_NUM = common dso_local global i32 0, align 4
@WMM_AC_ACM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"WMM AC: AC mandatory: AC_BE=%u AC_BK=%u AC_VI=%u AC_VO=%u\00", align 1
@WMM_AC_BE = common dso_local global i64 0, align 8
@WMM_AC_BK = common dso_local global i64 0, align 8
@WMM_AC_VI = common dso_local global i64 0, align 8
@WMM_AC_VO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wmm_ac_assoc_data* (%struct.wpa_supplicant*, i32*, i64)* @wmm_ac_process_param_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wmm_ac_assoc_data* @wmm_ac_process_param_elem(%struct.wpa_supplicant* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.wmm_ac_assoc_data*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee802_11_elems, align 8
  %9 = alloca %struct.wmm_parameter_element*, align 8
  %10 = alloca %struct.wmm_ac_assoc_data*, align 8
  %11 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i64 @ieee802_11_parse_elems(i32* %12, i64 %13, %struct.ieee802_11_elems* %8, i32 1)
  %15 = load i64, i64* @ParseFailed, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = call i32 (i32, i8*, ...) @wpa_printf(i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store %struct.wmm_ac_assoc_data* null, %struct.wmm_ac_assoc_data** %4, align 8
  br label %105

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %8, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = call i32 (i32, i8*, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store %struct.wmm_ac_assoc_data* null, %struct.wmm_ac_assoc_data** %4, align 8
  br label %105

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %8, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = icmp ne i64 %30, 8
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store %struct.wmm_ac_assoc_data* null, %struct.wmm_ac_assoc_data** %4, align 8
  br label %105

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %8, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.wmm_parameter_element*
  store %struct.wmm_parameter_element* %38, %struct.wmm_parameter_element** %9, align 8
  %39 = call %struct.wmm_ac_assoc_data* @os_zalloc(i32 8)
  store %struct.wmm_ac_assoc_data* %39, %struct.wmm_ac_assoc_data** %10, align 8
  %40 = load %struct.wmm_ac_assoc_data*, %struct.wmm_ac_assoc_data** %10, align 8
  %41 = icmp ne %struct.wmm_ac_assoc_data* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  store %struct.wmm_ac_assoc_data* null, %struct.wmm_ac_assoc_data** %4, align 8
  br label %105

43:                                               ; preds = %35
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %70, %43
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @WMM_AC_NUM, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %44
  %49 = load %struct.wmm_parameter_element*, %struct.wmm_parameter_element** %9, align 8
  %50 = getelementptr inbounds %struct.wmm_parameter_element, %struct.wmm_parameter_element* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @WMM_AC_ACM, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load %struct.wmm_ac_assoc_data*, %struct.wmm_ac_assoc_data** %10, align 8
  %64 = getelementptr inbounds %struct.wmm_ac_assoc_data, %struct.wmm_ac_assoc_data* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 %62, i32* %69, align 4
  br label %70

70:                                               ; preds = %48
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %44

73:                                               ; preds = %44
  %74 = load i32, i32* @MSG_DEBUG, align 4
  %75 = load %struct.wmm_ac_assoc_data*, %struct.wmm_ac_assoc_data** %10, align 8
  %76 = getelementptr inbounds %struct.wmm_ac_assoc_data, %struct.wmm_ac_assoc_data* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i64, i64* @WMM_AC_BE, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.wmm_ac_assoc_data*, %struct.wmm_ac_assoc_data** %10, align 8
  %83 = getelementptr inbounds %struct.wmm_ac_assoc_data, %struct.wmm_ac_assoc_data* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i64, i64* @WMM_AC_BK, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.wmm_ac_assoc_data*, %struct.wmm_ac_assoc_data** %10, align 8
  %90 = getelementptr inbounds %struct.wmm_ac_assoc_data, %struct.wmm_ac_assoc_data* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i64, i64* @WMM_AC_VI, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.wmm_ac_assoc_data*, %struct.wmm_ac_assoc_data** %10, align 8
  %97 = getelementptr inbounds %struct.wmm_ac_assoc_data, %struct.wmm_ac_assoc_data* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i64, i64* @WMM_AC_VO, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32, i8*, ...) @wpa_printf(i32 %74, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 %88, i32 %95, i32 %102)
  %104 = load %struct.wmm_ac_assoc_data*, %struct.wmm_ac_assoc_data** %10, align 8
  store %struct.wmm_ac_assoc_data* %104, %struct.wmm_ac_assoc_data** %4, align 8
  br label %105

105:                                              ; preds = %73, %42, %32, %24, %17
  %106 = load %struct.wmm_ac_assoc_data*, %struct.wmm_ac_assoc_data** %4, align 8
  ret %struct.wmm_ac_assoc_data* %106
}

declare dso_local i64 @ieee802_11_parse_elems(i32*, i64, %struct.ieee802_11_elems*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.wmm_ac_assoc_data* @os_zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
