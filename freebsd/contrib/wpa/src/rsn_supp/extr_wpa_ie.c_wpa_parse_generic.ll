; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa_ie.c_wpa_parse_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa_ie.c_wpa_parse_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_eapol_ie_parse = type { i32*, i32, i32*, i32*, i32, i32*, i32, i32*, i32, i32*, i32*, i32*, i32 }

@WPA_OUI_TYPE = common dso_local global i64 0, align 8
@WPA_SELECTOR_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"WPA: WPA IE in EAPOL-Key\00", align 1
@RSN_SELECTOR_LEN = common dso_local global i32 0, align 4
@PMKID_LEN = common dso_local global i32 0, align 4
@RSN_KEY_DATA_PMKID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"WPA: PMKID in EAPOL-Key\00", align 1
@RSN_KEY_DATA_GROUPKEY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"WPA: GTK in EAPOL-Key\00", align 1
@RSN_KEY_DATA_MAC_ADDR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"WPA: MAC Address in EAPOL-Key\00", align 1
@RSN_KEY_DATA_IGTK = common dso_local global i64 0, align 8
@RSN_KEY_DATA_OCI = common dso_local global i64 0, align 8
@WFA_KEY_DATA_IP_ADDR_ALLOC = common dso_local global i64 0, align 8
@WFA_KEY_DATA_IP_ADDR_REQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.wpa_eapol_ie_parse*)* @wpa_parse_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_parse_generic(i32* %0, i32* %1, %struct.wpa_eapol_ie_parse* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.wpa_eapol_ie_parse*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.wpa_eapol_ie_parse* %2, %struct.wpa_eapol_ie_parse** %7, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %170

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 6
  br i1 %17, label %18, label %59

18:                                               ; preds = %13
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = call i64 @RSN_SELECTOR_GET(i32* %20)
  %22 = load i64, i64* @WPA_OUI_TYPE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %18
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %27 = add nsw i32 2, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %59

32:                                               ; preds = %24
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %35 = add nsw i32 2, %34
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %32
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %44 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %43, i32 0, i32 0
  store i32* %42, i32** %44, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 2
  %49 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %50 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %53 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %56 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @wpa_hexdump(i32 %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %54, i32 %57)
  store i32 0, i32* %4, align 4
  br label %170

59:                                               ; preds = %32, %24, %18, %13
  %60 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %61 = add nsw i32 1, %60
  %62 = sext i32 %61 to i64
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = ptrtoint i32* %63 to i64
  %66 = ptrtoint i32* %64 to i64
  %67 = sub i64 %65, %66
  %68 = sdiv exact i64 %67, 4
  %69 = icmp slt i64 %62, %68
  br i1 %69, label %70, label %99

70:                                               ; preds = %59
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %75 = load i32, i32* @PMKID_LEN, align 4
  %76 = add nsw i32 %74, %75
  %77 = icmp sge i32 %73, %76
  br i1 %77, label %78, label %99

78:                                               ; preds = %70
  %79 = load i32*, i32** %5, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = call i64 @RSN_SELECTOR_GET(i32* %80)
  %82 = load i64, i64* @RSN_KEY_DATA_PMKID, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %78
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %91 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %90, i32 0, i32 2
  store i32* %89, i32** %91, align 8
  %92 = load i32, i32* @MSG_DEBUG, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 2
  %98 = call i32 @wpa_hexdump(i32 %92, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* %93, i32 %97)
  store i32 0, i32* %4, align 4
  br label %170

99:                                               ; preds = %78, %70, %59
  %100 = load i32*, i32** %5, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %104 = add nsw i32 %103, 2
  %105 = icmp sgt i32 %102, %104
  br i1 %105, label %106, label %134

106:                                              ; preds = %99
  %107 = load i32*, i32** %5, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = call i64 @RSN_SELECTOR_GET(i32* %108)
  %110 = load i64, i64* @RSN_KEY_DATA_GROUPKEY, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %134

112:                                              ; preds = %106
  %113 = load i32*, i32** %5, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  %115 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %119 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %118, i32 0, i32 3
  store i32* %117, i32** %119, align 8
  %120 = load i32*, i32** %5, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %124 = sub nsw i32 %122, %123
  %125 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %126 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* @MSG_DEBUG, align 4
  %128 = load i32*, i32** %5, align 8
  %129 = load i32*, i32** %5, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 2
  %133 = call i32 @wpa_hexdump_key(i32 %127, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32* %128, i32 %132)
  store i32 0, i32* %4, align 4
  br label %170

134:                                              ; preds = %106, %99
  %135 = load i32*, i32** %5, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %139 = add nsw i32 %138, 2
  %140 = icmp sgt i32 %137, %139
  br i1 %140, label %141, label %169

141:                                              ; preds = %134
  %142 = load i32*, i32** %5, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 2
  %144 = call i64 @RSN_SELECTOR_GET(i32* %143)
  %145 = load i64, i64* @RSN_KEY_DATA_MAC_ADDR, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %169

147:                                              ; preds = %141
  %148 = load i32*, i32** %5, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 2
  %150 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %154 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %153, i32 0, i32 5
  store i32* %152, i32** %154, align 8
  %155 = load i32*, i32** %5, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %159 = sub nsw i32 %157, %158
  %160 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %161 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %160, i32 0, i32 6
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* @MSG_DEBUG, align 4
  %163 = load i32*, i32** %5, align 8
  %164 = load i32*, i32** %5, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 2
  %168 = call i32 @wpa_hexdump(i32 %162, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32* %163, i32 %167)
  store i32 0, i32* %4, align 4
  br label %170

169:                                              ; preds = %141, %134
  store i32 0, i32* %4, align 4
  br label %170

170:                                              ; preds = %169, %147, %112, %84, %41, %12
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local i64 @RSN_SELECTOR_GET(i32*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
