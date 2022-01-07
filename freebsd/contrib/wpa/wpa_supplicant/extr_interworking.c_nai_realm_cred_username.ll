; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_nai_realm_cred_username.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_nai_realm_cred_username.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.nai_realm_eap = type { i64, i64, i64 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"nai-realm-cred-username: EAP method not supported: %d\00", align 1
@EAP_TYPE_TTLS = common dso_local global i64 0, align 8
@EAP_TYPE_PEAP = common dso_local global i64 0, align 8
@EAP_TYPE_FAST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [63 x i8] c"nai-realm-cred-username: Method: %d is not TTLS, PEAP, or FAST\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"nai-realm-cred-username: PEAP/FAST: Inner method not supported: %d\00", align 1
@EAP_TYPE_MSCHAPV2 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"nai-realm-cred-username: MSCHAPv2 not supported\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"nai-realm-cred-username: TTLS, but inner not supported: %d\00", align 1
@NAI_REALM_INNER_NON_EAP_PAP = common dso_local global i64 0, align 8
@NAI_REALM_INNER_NON_EAP_CHAP = common dso_local global i64 0, align 8
@NAI_REALM_INNER_NON_EAP_MSCHAP = common dso_local global i64 0, align 8
@NAI_REALM_INNER_NON_EAP_MSCHAPV2 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [63 x i8] c"nai-realm-cred-username: TTLS, inner-non-eap not supported: %d\00", align 1
@EAP_TYPE_GTC = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [62 x i8] c"nai-realm-cred-username: inner-method not GTC or MSCHAPv2: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.nai_realm_eap*)* @nai_realm_cred_username to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nai_realm_cred_username(%struct.wpa_supplicant* %0, %struct.nai_realm_eap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.nai_realm_eap*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.nai_realm_eap* %1, %struct.nai_realm_eap** %5, align 8
  %6 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %7 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %8 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32* @eap_get_name(i32 %6, i64 %9)
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %16 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_msg(%struct.wpa_supplicant* %13, i32 %14, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %17)
  store i32 0, i32* %3, align 4
  br label %188

19:                                               ; preds = %2
  %20 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %21 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @EAP_TYPE_TTLS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %19
  %26 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %27 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @EAP_TYPE_PEAP, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %33 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @EAP_TYPE_FAST, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %41 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_msg(%struct.wpa_supplicant* %38, i32 %39, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  store i32 0, i32* %3, align 4
  br label %188

44:                                               ; preds = %31, %25, %19
  %45 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %46 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @EAP_TYPE_PEAP, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %52 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @EAP_TYPE_FAST, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %90

56:                                               ; preds = %50, %44
  %57 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %58 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %56
  %62 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %63 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %64 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32* @eap_get_name(i32 %62, i64 %65)
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %70 = load i32, i32* @MSG_DEBUG, align 4
  %71 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %72 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_msg(%struct.wpa_supplicant* %69, i32 %70, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i64 %73)
  store i32 0, i32* %3, align 4
  br label %188

75:                                               ; preds = %61, %56
  %76 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %77 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %82 = load i64, i64* @EAP_TYPE_MSCHAPV2, align 8
  %83 = call i32* @eap_get_name(i32 %81, i64 %82)
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %87 = load i32, i32* @MSG_DEBUG, align 4
  %88 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_msg(%struct.wpa_supplicant* %86, i32 %87, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %188

89:                                               ; preds = %80, %75
  br label %90

90:                                               ; preds = %89, %50
  %91 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %92 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @EAP_TYPE_TTLS, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %163

96:                                               ; preds = %90
  %97 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %98 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %103 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i32 1, i32* %3, align 4
  br label %188

107:                                              ; preds = %101, %96
  %108 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %109 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %107
  %113 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %114 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %115 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = call i32* @eap_get_name(i32 %113, i64 %116)
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %126

119:                                              ; preds = %112
  %120 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %121 = load i32, i32* @MSG_DEBUG, align 4
  %122 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %123 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_msg(%struct.wpa_supplicant* %120, i32 %121, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i64 %124)
  store i32 0, i32* %3, align 4
  br label %188

126:                                              ; preds = %112, %107
  %127 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %128 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %162

131:                                              ; preds = %126
  %132 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %133 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @NAI_REALM_INNER_NON_EAP_PAP, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %162

137:                                              ; preds = %131
  %138 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %139 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @NAI_REALM_INNER_NON_EAP_CHAP, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %162

143:                                              ; preds = %137
  %144 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %145 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @NAI_REALM_INNER_NON_EAP_MSCHAP, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %162

149:                                              ; preds = %143
  %150 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %151 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @NAI_REALM_INNER_NON_EAP_MSCHAPV2, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %149
  %156 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %157 = load i32, i32* @MSG_DEBUG, align 4
  %158 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %159 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_msg(%struct.wpa_supplicant* %156, i32 %157, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i64 %160)
  store i32 0, i32* %3, align 4
  br label %188

162:                                              ; preds = %149, %143, %137, %131, %126
  br label %163

163:                                              ; preds = %162, %90
  %164 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %165 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %187

168:                                              ; preds = %163
  %169 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %170 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @EAP_TYPE_GTC, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %187

174:                                              ; preds = %168
  %175 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %176 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @EAP_TYPE_MSCHAPV2, align 8
  %179 = icmp ne i64 %177, %178
  br i1 %179, label %180, label %187

180:                                              ; preds = %174
  %181 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %182 = load i32, i32* @MSG_DEBUG, align 4
  %183 = load %struct.nai_realm_eap*, %struct.nai_realm_eap** %5, align 8
  %184 = getelementptr inbounds %struct.nai_realm_eap, %struct.nai_realm_eap* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_msg(%struct.wpa_supplicant* %181, i32 %182, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0), i64 %185)
  store i32 0, i32* %3, align 4
  br label %188

187:                                              ; preds = %174, %168, %163
  store i32 1, i32* %3, align 4
  br label %188

188:                                              ; preds = %187, %180, %155, %119, %106, %85, %68, %37, %12
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i32* @eap_get_name(i32, i64) #1

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
