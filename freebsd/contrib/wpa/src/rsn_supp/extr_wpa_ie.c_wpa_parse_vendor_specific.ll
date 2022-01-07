; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa_ie.c_wpa_parse_vendor_specific.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa_ie.c_wpa_parse_vendor_specific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_eapol_ie_parse = type { i32*, i32 }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Too short vendor specific IE ignored (len=%u)\00", align 1
@OUI_MICROSOFT = common dso_local global i32 0, align 4
@WMM_OUI_TYPE = common dso_local global i32 0, align 4
@WMM_OUI_SUBTYPE_INFORMATION_ELEMENT = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"WPA: WMM IE\00", align 1
@WMM_OUI_SUBTYPE_PARAMETER_ELEMENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"WPA: WMM Parameter Element\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.wpa_eapol_ie_parse*)* @wpa_parse_vendor_specific to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_parse_vendor_specific(i32* %0, i32* %1, %struct.wpa_eapol_ie_parse* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.wpa_eapol_ie_parse*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.wpa_eapol_ie_parse* %2, %struct.wpa_eapol_ie_parse** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32, i32* @MSG_MSGDUMP, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @wpa_printf(i32 %14, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 1, i32* %4, align 4
  br label %88

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = call i32 @WPA_GET_BE24(i32* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @OUI_MICROSOFT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %87

26:                                               ; preds = %19
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 5
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @WMM_OUI_TYPE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %87

32:                                               ; preds = %26
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %35, 4
  br i1 %36, label %37, label %87

37:                                               ; preds = %32
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 6
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @WMM_OUI_SUBTYPE_INFORMATION_ELEMENT, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %37
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %47 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %46, i32 0, i32 0
  store i32* %45, i32** %47, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %52 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @MSG_DEBUG, align 4
  %54 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %55 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %58 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @wpa_hexdump(i32 %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %56, i32 %59)
  br label %86

61:                                               ; preds = %37
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 6
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @WMM_OUI_SUBTYPE_PARAMETER_ELEMENT, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %61
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %71 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %70, i32 0, i32 0
  store i32* %69, i32** %71, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %76 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @MSG_DEBUG, align 4
  %78 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %79 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %82 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @wpa_hexdump(i32 %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32* %80, i32 %83)
  br label %85

85:                                               ; preds = %67, %61
  br label %86

86:                                               ; preds = %85, %43
  br label %87

87:                                               ; preds = %86, %32, %26, %19
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %13
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @WPA_GET_BE24(i32*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
