; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_ie.c_wpa_parse_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_ie.c_wpa_parse_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_eapol_ie_parse = type { i32*, i32, i32*, i32, i32*, i32*, i32, i32*, i32, i32*, i32, i32*, i32*, i32*, i32 }

@WPA_OUI_TYPE = common dso_local global i64 0, align 8
@WPA_SELECTOR_LEN = common dso_local global i32 0, align 4
@OSEN_IE_VENDOR_TYPE = common dso_local global i64 0, align 8
@RSN_SELECTOR_LEN = common dso_local global i32 0, align 4
@PMKID_LEN = common dso_local global i32 0, align 4
@RSN_KEY_DATA_PMKID = common dso_local global i64 0, align 8
@RSN_KEY_DATA_GROUPKEY = common dso_local global i64 0, align 8
@RSN_KEY_DATA_MAC_ADDR = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
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
  br label %162

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 6
  br i1 %17, label %18, label %51

18:                                               ; preds = %13
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = call i64 @RSN_SELECTOR_GET(i32* %20)
  %22 = load i64, i64* @WPA_OUI_TYPE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %18
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %27 = add nsw i32 2, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %51

32:                                               ; preds = %24
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %35 = add nsw i32 2, %34
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %51

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
  store i32 0, i32* %4, align 4
  br label %162

51:                                               ; preds = %32, %24, %18, %13
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp sge i32 %54, 4
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = call i64 @WPA_GET_BE32(i32* %58)
  %60 = load i64, i64* @OSEN_IE_VENDOR_TYPE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load i32*, i32** %5, align 8
  %64 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %65 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %64, i32 0, i32 2
  store i32* %63, i32** %65, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 2
  %70 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %71 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  store i32 0, i32* %4, align 4
  br label %162

72:                                               ; preds = %56, %51
  %73 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %74 = add nsw i32 1, %73
  %75 = sext i32 %74 to i64
  %76 = load i32*, i32** %6, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = ptrtoint i32* %76 to i64
  %79 = ptrtoint i32* %77 to i64
  %80 = sub i64 %78, %79
  %81 = sdiv exact i64 %80, 4
  %82 = icmp slt i64 %75, %81
  br i1 %82, label %83, label %105

83:                                               ; preds = %72
  %84 = load i32*, i32** %5, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %88 = load i32, i32* @PMKID_LEN, align 4
  %89 = add nsw i32 %87, %88
  %90 = icmp sge i32 %86, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %83
  %92 = load i32*, i32** %5, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = call i64 @RSN_SELECTOR_GET(i32* %93)
  %95 = load i64, i64* @RSN_KEY_DATA_PMKID, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %91
  %98 = load i32*, i32** %5, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  %100 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %104 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %103, i32 0, i32 4
  store i32* %102, i32** %104, align 8
  store i32 0, i32* %4, align 4
  br label %162

105:                                              ; preds = %91, %83, %72
  %106 = load i32*, i32** %5, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %110 = add nsw i32 %109, 2
  %111 = icmp sgt i32 %108, %110
  br i1 %111, label %112, label %133

112:                                              ; preds = %105
  %113 = load i32*, i32** %5, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  %115 = call i64 @RSN_SELECTOR_GET(i32* %114)
  %116 = load i64, i64* @RSN_KEY_DATA_GROUPKEY, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %133

118:                                              ; preds = %112
  %119 = load i32*, i32** %5, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  %121 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %125 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %124, i32 0, i32 5
  store i32* %123, i32** %125, align 8
  %126 = load i32*, i32** %5, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %130 = sub nsw i32 %128, %129
  %131 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %132 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %131, i32 0, i32 6
  store i32 %130, i32* %132, align 8
  store i32 0, i32* %4, align 4
  br label %162

133:                                              ; preds = %112, %105
  %134 = load i32*, i32** %5, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %138 = add nsw i32 %137, 2
  %139 = icmp sgt i32 %136, %138
  br i1 %139, label %140, label %161

140:                                              ; preds = %133
  %141 = load i32*, i32** %5, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 2
  %143 = call i64 @RSN_SELECTOR_GET(i32* %142)
  %144 = load i64, i64* @RSN_KEY_DATA_MAC_ADDR, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %161

146:                                              ; preds = %140
  %147 = load i32*, i32** %5, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  %149 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %153 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %152, i32 0, i32 7
  store i32* %151, i32** %153, align 8
  %154 = load i32*, i32** %5, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %158 = sub nsw i32 %156, %157
  %159 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %160 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %159, i32 0, i32 8
  store i32 %158, i32* %160, align 8
  store i32 0, i32* %4, align 4
  br label %162

161:                                              ; preds = %140, %133
  store i32 0, i32* %4, align 4
  br label %162

162:                                              ; preds = %161, %146, %118, %97, %62, %41, %12
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local i64 @RSN_SELECTOR_GET(i32*) #1

declare dso_local i64 @WPA_GET_BE32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
