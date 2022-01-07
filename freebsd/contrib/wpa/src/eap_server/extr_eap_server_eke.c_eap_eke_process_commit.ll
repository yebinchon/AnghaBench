; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_eke.c_eap_eke_process_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_eke.c_eap_eke_process_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, i32 }
%struct.eap_eke_data = type { i64, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"EAP-EKE: Received Response/Commit\00", align 1
@COMMIT = common dso_local global i64 0, align 8
@EAP_EKE_FAIL_PROTO_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"EAP-EKE: Too short EAP-EKE-Commit\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"EAP-EKE: DHComponent_P\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"EAP-EKE: PNonce_P\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"EAP-EKE: CBValue\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"EAP-EKE: Failed to derive shared secret\00", align 1
@EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"EAP-EKE: Failed to derive Ke/Ki\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"EAP-EKE: Failed to decrypt PNonce_P\00", align 1
@EAP_EKE_FAIL_AUTHENTICATION_FAIL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [62 x i8] c"EAP-EKE: PNonce_P protected data too short to include Nonce_P\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"EAP-EKE: Nonce_P\00", align 1
@CONFIRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_eke_data*, %struct.wpabuf*, i32*, i64)* @eap_eke_process_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_eke_process_commit(%struct.eap_sm* %0, %struct.eap_eke_data* %1, %struct.wpabuf* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca %struct.eap_eke_data*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store %struct.eap_eke_data* %1, %struct.eap_eke_data** %7, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %19 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @COMMIT, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %25 = load i32, i32* @EAP_EKE_FAIL_PROTO_ERROR, align 4
  %26 = call i32 @eap_eke_fail(%struct.eap_eke_data* %24, i32 %25)
  br label %195

27:                                               ; preds = %5
  %28 = load i32*, i32** %9, align 8
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32* %31, i32** %12, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %34 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %32, i64 %37
  %39 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %40 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %38, i64 %43
  %45 = load i32*, i32** %12, align 8
  %46 = icmp ugt i32* %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %27
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = call i32 @wpa_printf(i32 %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %51 = load i32, i32* @EAP_EKE_FAIL_PROTO_ERROR, align 4
  %52 = call i32 @eap_eke_fail(%struct.eap_eke_data* %50, i32 %51)
  br label %195

53:                                               ; preds = %27
  %54 = load i32, i32* @MSG_DEBUG, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %57 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @wpa_hexdump(i32 %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* %55, i32 %59)
  %61 = load i32*, i32** %11, align 8
  store i32* %61, i32** %13, align 8
  %62 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %63 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %11, align 8
  %69 = load i32, i32* @MSG_DEBUG, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %72 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @wpa_hexdump(i32 %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %70, i32 %74)
  %76 = load i32*, i32** %11, align 8
  store i32* %76, i32** %14, align 8
  %77 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %78 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %11, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %11, align 8
  %84 = load i32, i32* @MSG_DEBUG, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = ptrtoint i32* %86 to i64
  %89 = ptrtoint i32* %87 to i64
  %90 = sub i64 %88, %89
  %91 = sdiv exact i64 %90, 4
  %92 = trunc i64 %91 to i32
  %93 = call i32 @wpa_hexdump(i32 %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32* %85, i32 %92)
  %94 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %95 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %94, i32 0, i32 2
  %96 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %97 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %100 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %13, align 8
  %103 = call i64 @eap_eke_shared_secret(%struct.TYPE_4__* %95, i32 %98, i32 %101, i32* %102)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %53
  %106 = load i32, i32* @MSG_INFO, align 4
  %107 = call i32 @wpa_printf(i32 %106, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %108 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %109 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %110 = call i32 @eap_eke_fail(%struct.eap_eke_data* %108, i32 %109)
  br label %195

111:                                              ; preds = %53
  %112 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %113 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %112, i32 0, i32 2
  %114 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %115 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %118 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %121 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %124 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @eap_eke_derive_ke_ki(%struct.TYPE_4__* %113, i32 %116, i32 %119, i32 %122, i32 %125)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %111
  %129 = load i32, i32* @MSG_INFO, align 4
  %130 = call i32 @wpa_printf(i32 %129, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %131 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %132 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %133 = call i32 @eap_eke_fail(%struct.eap_eke_data* %131, i32 %132)
  br label %195

134:                                              ; preds = %111
  store i64 4, i64* %15, align 8
  %135 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %136 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %135, i32 0, i32 2
  %137 = load i32*, i32** %14, align 8
  %138 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %139 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %143 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = call i64 @eap_eke_decrypt_prot(%struct.TYPE_4__* %136, i32* %137, i32 %141, i32 %144, i64* %15)
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %134
  %148 = load i32, i32* @MSG_INFO, align 4
  %149 = call i32 @wpa_printf(i32 %148, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %150 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %151 = load i32, i32* @EAP_EKE_FAIL_AUTHENTICATION_FAIL, align 4
  %152 = call i32 @eap_eke_fail(%struct.eap_eke_data* %150, i32 %151)
  br label %195

153:                                              ; preds = %134
  %154 = load i64, i64* %15, align 8
  %155 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %156 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = icmp ult i64 %154, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %153
  %161 = load i32, i32* @MSG_INFO, align 4
  %162 = call i32 @wpa_printf(i32 %161, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0))
  %163 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %164 = load i32, i32* @EAP_EKE_FAIL_AUTHENTICATION_FAIL, align 4
  %165 = call i32 @eap_eke_fail(%struct.eap_eke_data* %163, i32 %164)
  br label %195

166:                                              ; preds = %153
  %167 = load i32, i32* @MSG_DEBUG, align 4
  %168 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %169 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %172 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @wpa_hexdump_key(i32 %167, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %170, i64 %174)
  %176 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %177 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %176, i32 0, i32 1
  %178 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %179 = call i32 @wpabuf_len(%struct.wpabuf* %178)
  %180 = call i64 @wpabuf_resize(i32* %177, i32 %179)
  %181 = icmp slt i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %166
  %183 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %184 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %185 = call i32 @eap_eke_fail(%struct.eap_eke_data* %183, i32 %184)
  br label %195

186:                                              ; preds = %166
  %187 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %188 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %191 = call i32 @wpabuf_put_buf(i32 %189, %struct.wpabuf* %190)
  %192 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %193 = load i32, i32* @CONFIRM, align 4
  %194 = call i32 @eap_eke_state(%struct.eap_eke_data* %192, i32 %193)
  br label %195

195:                                              ; preds = %186, %182, %160, %147, %128, %105, %47, %23
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @eap_eke_fail(%struct.eap_eke_data*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i64 @eap_eke_shared_secret(%struct.TYPE_4__*, i32, i32, i32*) #1

declare dso_local i64 @eap_eke_derive_ke_ki(%struct.TYPE_4__*, i32, i32, i32, i32) #1

declare dso_local i64 @eap_eke_decrypt_prot(%struct.TYPE_4__*, i32*, i32, i32, i64*) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32, i64) #1

declare dso_local i64 @wpabuf_resize(i32*, i32) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_buf(i32, %struct.wpabuf*) #1

declare dso_local i32 @eap_eke_state(%struct.eap_eke_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
