; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_gtc.c_eap_gtc_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_gtc.c_eap_gtc_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_method_ret = type { i8*, i32, i32, i8* }
%struct.wpabuf = type { i32 }
%struct.eap_gtc_data = type { i64 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_GTC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"EAP-GTC: Request message\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"CHALLENGE=\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"EAP-GTC: Challenge did not start with expected prefix\00", align 1
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"EAP-GTC: Password not configured\00", align 1
@FALSE = common dso_local global i8* null, align 8
@METHOD_MAY_CONT = common dso_local global i32 0, align 4
@METHOD_DONE = common dso_local global i32 0, align 4
@DECISION_COND_SUCC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"RESPONSE=\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"EAP-GTC: Response\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"EAP-GTC: Forgetting used password\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i8*, %struct.eap_method_ret*, %struct.wpabuf*)* @eap_gtc_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_gtc_process(%struct.eap_sm* %0, i8* %1, %struct.eap_method_ret* %2, %struct.wpabuf* %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.eap_method_ret*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.eap_gtc_data*, align 8
  %11 = alloca %struct.wpabuf*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %8, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %9, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.eap_gtc_data*
  store %struct.eap_gtc_data* %22, %struct.eap_gtc_data** %10, align 8
  %23 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %24 = load i32, i32* @EAP_TYPE_GTC, align 4
  %25 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %26 = call i8* @eap_hdr_validate(i32 %23, i32 %24, %struct.wpabuf* %25, i64* %17)
  store i8* %26, i8** %12, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load i8*, i8** @TRUE, align 8
  %31 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %32 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %166

33:                                               ; preds = %4
  %34 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %35 = call signext i8 @eap_get_id(%struct.wpabuf* %34)
  store i8 %35, i8* %20, align 1
  %36 = load i32, i32* @MSG_MSGDUMP, align 4
  %37 = load i8*, i8** %12, align 8
  %38 = load i64, i64* %17, align 8
  %39 = call i32 @wpa_hexdump_ascii(i32 %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %37, i64 %38)
  %40 = load %struct.eap_gtc_data*, %struct.eap_gtc_data** %10, align 8
  %41 = getelementptr inbounds %struct.eap_gtc_data, %struct.eap_gtc_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %33
  %45 = load i64, i64* %17, align 8
  %46 = icmp ult i64 %45, 10
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load i8*, i8** %12, align 8
  %49 = call i64 @os_memcmp(i8* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 10)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %47, %44
  %52 = load i32, i32* @MSG_DEBUG, align 4
  %53 = call i32 @wpa_printf(i32 %52, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %55 = load i32, i32* @EAP_TYPE_GTC, align 4
  %56 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %57 = load i8, i8* %20, align 1
  %58 = call %struct.wpabuf* @eap_msg_alloc(i32 %54, i32 %55, i64 0, i32 %56, i8 signext %57)
  store %struct.wpabuf* %58, %struct.wpabuf** %11, align 8
  %59 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  store %struct.wpabuf* %59, %struct.wpabuf** %5, align 8
  br label %166

60:                                               ; preds = %47, %33
  %61 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %62 = call i8* @eap_get_config_otp(%struct.eap_sm* %61, i64* %15)
  store i8* %62, i8** %13, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 1, i32* %19, align 4
  br label %69

66:                                               ; preds = %60
  %67 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %68 = call i8* @eap_get_config_password(%struct.eap_sm* %67, i64* %15)
  store i8* %68, i8** %13, align 8
  store i32 0, i32* %19, align 4
  br label %69

69:                                               ; preds = %66, %65
  %70 = load i8*, i8** %13, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %82

72:                                               ; preds = %69
  %73 = load i32, i32* @MSG_INFO, align 4
  %74 = call i32 @wpa_printf(i32 %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %75 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = load i64, i64* %17, align 8
  %78 = call i32 @eap_sm_request_otp(%struct.eap_sm* %75, i8* %76, i64 %77)
  %79 = load i8*, i8** @TRUE, align 8
  %80 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %81 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %166

82:                                               ; preds = %69
  %83 = load i8*, i8** @FALSE, align 8
  %84 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %85 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  %86 = load %struct.eap_gtc_data*, %struct.eap_gtc_data** %10, align 8
  %87 = getelementptr inbounds %struct.eap_gtc_data, %struct.eap_gtc_data* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = load i32, i32* @METHOD_MAY_CONT, align 4
  br label %94

92:                                               ; preds = %82
  %93 = load i32, i32* @METHOD_DONE, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  %96 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %97 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @DECISION_COND_SUCC, align 4
  %99 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %100 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  %101 = load i8*, i8** @FALSE, align 8
  %102 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %103 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  %104 = load i64, i64* %15, align 8
  store i64 %104, i64* %18, align 8
  %105 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %106 = call i8* @eap_get_config_identity(%struct.eap_sm* %105, i64* %16)
  store i8* %106, i8** %14, align 8
  %107 = load i8*, i8** %14, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %94
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %166

110:                                              ; preds = %94
  %111 = load %struct.eap_gtc_data*, %struct.eap_gtc_data** %10, align 8
  %112 = getelementptr inbounds %struct.eap_gtc_data, %struct.eap_gtc_data* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load i64, i64* %16, align 8
  %117 = add i64 9, %116
  %118 = add i64 %117, 1
  %119 = load i64, i64* %18, align 8
  %120 = add i64 %119, %118
  store i64 %120, i64* %18, align 8
  br label %121

121:                                              ; preds = %115, %110
  %122 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %123 = load i32, i32* @EAP_TYPE_GTC, align 4
  %124 = load i64, i64* %18, align 8
  %125 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %126 = load i8, i8* %20, align 1
  %127 = call %struct.wpabuf* @eap_msg_alloc(i32 %122, i32 %123, i64 %124, i32 %125, i8 signext %126)
  store %struct.wpabuf* %127, %struct.wpabuf** %11, align 8
  %128 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %129 = icmp eq %struct.wpabuf* %128, null
  br i1 %129, label %130, label %131

130:                                              ; preds = %121
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %166

131:                                              ; preds = %121
  %132 = load %struct.eap_gtc_data*, %struct.eap_gtc_data** %10, align 8
  %133 = getelementptr inbounds %struct.eap_gtc_data, %struct.eap_gtc_data* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %131
  %137 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %138 = call i32 @wpabuf_put_data(%struct.wpabuf* %137, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64 9)
  %139 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %140 = load i8*, i8** %14, align 8
  %141 = load i64, i64* %16, align 8
  %142 = call i32 @wpabuf_put_data(%struct.wpabuf* %139, i8* %140, i64 %141)
  %143 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %144 = call i32 @wpabuf_put_u8(%struct.wpabuf* %143, i8 signext 0)
  br label %145

145:                                              ; preds = %136, %131
  %146 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %147 = load i8*, i8** %13, align 8
  %148 = load i64, i64* %15, align 8
  %149 = call i32 @wpabuf_put_data(%struct.wpabuf* %146, i8* %147, i64 %148)
  %150 = load i32, i32* @MSG_MSGDUMP, align 4
  %151 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %152 = call i64 @wpabuf_head_u8(%struct.wpabuf* %151)
  %153 = add i64 %152, 4
  %154 = add i64 %153, 1
  %155 = load i64, i64* %18, align 8
  %156 = call i32 @wpa_hexdump_ascii_key(i32 %150, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i64 %154, i64 %155)
  %157 = load i32, i32* %19, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %145
  %160 = load i32, i32* @MSG_DEBUG, align 4
  %161 = call i32 @wpa_printf(i32 %160, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %162 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %163 = call i32 @eap_clear_config_otp(%struct.eap_sm* %162)
  br label %164

164:                                              ; preds = %159, %145
  %165 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  store %struct.wpabuf* %165, %struct.wpabuf** %5, align 8
  br label %166

166:                                              ; preds = %164, %130, %109, %72, %51, %29
  %167 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %167
}

declare dso_local i8* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local signext i8 @eap_get_id(%struct.wpabuf*) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i8*, i64) #1

declare dso_local i64 @os_memcmp(i8*, i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i64, i32, i8 signext) #1

declare dso_local i8* @eap_get_config_otp(%struct.eap_sm*, i64*) #1

declare dso_local i8* @eap_get_config_password(%struct.eap_sm*, i64*) #1

declare dso_local i32 @eap_sm_request_otp(%struct.eap_sm*, i8*, i64) #1

declare dso_local i8* @eap_get_config_identity(%struct.eap_sm*, i64*) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i8*, i64) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i8 signext) #1

declare dso_local i32 @wpa_hexdump_ascii_key(i32, i8*, i64, i64) #1

declare dso_local i64 @wpabuf_head_u8(%struct.wpabuf*) #1

declare dso_local i32 @eap_clear_config_otp(%struct.eap_sm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
