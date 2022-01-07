; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_sta_info.c_ap_sta_flags_txt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_sta_info.c_ap_sta_flags_txt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s\00", align 1
@WLAN_STA_AUTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"[AUTH]\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@WLAN_STA_ASSOC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"[ASSOC]\00", align 1
@WLAN_STA_AUTHORIZED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"[AUTHORIZED]\00", align 1
@WLAN_STA_PENDING_POLL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"[PENDING_POLL\00", align 1
@WLAN_STA_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"[SHORT_PREAMBLE]\00", align 1
@WLAN_STA_PREAUTH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"[PREAUTH]\00", align 1
@WLAN_STA_WMM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"[WMM]\00", align 1
@WLAN_STA_MFP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"[MFP]\00", align 1
@WLAN_STA_WPS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"[WPS]\00", align 1
@WLAN_STA_MAYBE_WPS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"[MAYBE_WPS]\00", align 1
@WLAN_STA_WDS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"[WDS]\00", align 1
@WLAN_STA_NONERP = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"[NonERP]\00", align 1
@WLAN_STA_WPS2 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"[WPS2]\00", align 1
@WLAN_STA_GAS = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"[GAS]\00", align 1
@WLAN_STA_HT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"[HT]\00", align 1
@WLAN_STA_VHT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"[VHT]\00", align 1
@WLAN_STA_VENDOR_VHT = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [13 x i8] c"[VENDOR_VHT]\00", align 1
@WLAN_STA_WNM_SLEEP_MODE = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [17 x i8] c"[WNM_SLEEP_MODE]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ap_sta_flags_txt(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  store i8 0, i8* %9, align 1
  %10 = load i8*, i8** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @WLAN_STA_AUTH, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @WLAN_STA_ASSOC, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @WLAN_STA_AUTHORIZED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @WLAN_STA_PENDING_POLL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @WLAN_STA_SHORT_PREAMBLE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @WLAN_STA_PREAUTH, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @WLAN_STA_WMM, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @WLAN_STA_MFP, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @WLAN_STA_WPS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @WLAN_STA_MAYBE_WPS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @WLAN_STA_WDS, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @WLAN_STA_NONERP, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @WLAN_STA_WPS2, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @WLAN_STA_GAS, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @WLAN_STA_HT, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @WLAN_STA_VHT, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @WLAN_STA_VENDOR_VHT, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @WLAN_STA_WNM_SLEEP_MODE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %120 = call i32 @os_snprintf(i8* %10, i64 %11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %23, i8* %29, i8* %35, i8* %41, i8* %47, i8* %53, i8* %59, i8* %65, i8* %71, i8* %77, i8* %83, i8* %89, i8* %95, i8* %101, i8* %107, i8* %113, i8* %119)
  store i32 %120, i32* %7, align 4
  %121 = load i64, i64* %6, align 8
  %122 = load i32, i32* %7, align 4
  %123 = call i64 @os_snprintf_error(i64 %121, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %3
  store i32 -1, i32* %7, align 4
  br label %126

126:                                              ; preds = %125, %3
  %127 = load i32, i32* %7, align 4
  ret i32 %127
}

declare dso_local i32 @os_snprintf(i8*, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @os_snprintf_error(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
