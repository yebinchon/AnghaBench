; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_eke.c_eap_eke_build_confirm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_eke.c_eap_eke_build_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32, i32 }
%struct.eap_eke_data = type { %struct.TYPE_4__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i64, i32 }

@EAP_EKE_MAX_NONCE_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"EAP-EKE: Request/Confirm\00", align 1
@EAP_EKE_CONFIRM = common dso_local global i32 0, align 4
@EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"EAP-EKE: Nonce_S\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"EAP-EKE server\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"EAP-EKE: Auth_S\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_eke_data*, i32)* @eap_eke_build_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_eke_build_confirm(%struct.eap_sm* %0, %struct.eap_eke_data* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_eke_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_eke_data* %1, %struct.eap_eke_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @EAP_EKE_MAX_NONCE_LEN, align 4
  %16 = mul nsw i32 2, %15
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = call i32 @wpa_printf(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %23 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %27 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %25, %29
  store i64 %30, i64* %9, align 8
  %31 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i64, i64* %9, align 8
  %34 = load i32, i32* @EAP_EKE_CONFIRM, align 4
  %35 = call %struct.wpabuf* @eap_eke_build_msg(%struct.eap_eke_data* %31, i32 %32, i64 %33, i32 %34)
  store %struct.wpabuf* %35, %struct.wpabuf** %8, align 8
  %36 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %37 = icmp eq %struct.wpabuf* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %3
  %39 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %40 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %41 = call i32 @eap_eke_fail(%struct.eap_eke_data* %39, i32 %40)
  %42 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call %struct.wpabuf* @eap_eke_build_failure(%struct.eap_eke_data* %42, i32 %43)
  store %struct.wpabuf* %44, %struct.wpabuf** %4, align 8
  store i32 1, i32* %14, align 4
  br label %186

45:                                               ; preds = %3
  %46 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %47 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %50 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @random_get_bytes(i32 %48, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %45
  %56 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %57 = call i32 @wpabuf_free(%struct.wpabuf* %56)
  %58 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %59 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %60 = call i32 @eap_eke_fail(%struct.eap_eke_data* %58, i32 %59)
  %61 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call %struct.wpabuf* @eap_eke_build_failure(%struct.eap_eke_data* %61, i32 %62)
  store %struct.wpabuf* %63, %struct.wpabuf** %4, align 8
  store i32 1, i32* %14, align 4
  br label %186

64:                                               ; preds = %45
  %65 = load i32, i32* @MSG_DEBUG, align 4
  %66 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %67 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %70 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @wpa_hexdump_key(i32 %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %72)
  %74 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %75 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %78 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @os_memcpy(i32* %19, i32 %76, i32 %80)
  %82 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %83 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %19, i64 %86
  %88 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %89 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %92 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @os_memcpy(i32* %87, i32 %90, i32 %94)
  %96 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %97 = call i64 @wpabuf_tailroom(%struct.wpabuf* %96)
  store i64 %97, i64* %10, align 8
  %98 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %99 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %98, i32 0, i32 0
  %100 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %101 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = mul nsw i32 2, %103
  %105 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %106 = call i32* @wpabuf_put(%struct.wpabuf* %105, i64 0)
  %107 = call i64 @eap_eke_prot(%struct.TYPE_4__* %99, i32* %19, i32 %104, i32* %106, i64* %10)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %64
  %110 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %111 = call i32 @wpabuf_free(%struct.wpabuf* %110)
  %112 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %113 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %114 = call i32 @eap_eke_fail(%struct.eap_eke_data* %112, i32 %113)
  %115 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %116 = load i32, i32* %7, align 4
  %117 = call %struct.wpabuf* @eap_eke_build_failure(%struct.eap_eke_data* %115, i32 %116)
  store %struct.wpabuf* %117, %struct.wpabuf** %4, align 8
  store i32 1, i32* %14, align 4
  br label %186

118:                                              ; preds = %64
  %119 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %120 = load i64, i64* %10, align 8
  %121 = call i32* @wpabuf_put(%struct.wpabuf* %119, i64 %120)
  %122 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %123 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %122, i32 0, i32 0
  %124 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %125 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %128 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %131 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %134 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %137 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %140 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @eap_eke_derive_ka(%struct.TYPE_4__* %123, i32 %126, i32 %129, i32 %132, i32 %135, i32 %138, i32 %141)
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %118
  %145 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %146 = call i32 @wpabuf_free(%struct.wpabuf* %145)
  %147 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %148 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %149 = call i32 @eap_eke_fail(%struct.eap_eke_data* %147, i32 %148)
  %150 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %151 = load i32, i32* %7, align 4
  %152 = call %struct.wpabuf* @eap_eke_build_failure(%struct.eap_eke_data* %150, i32 %151)
  store %struct.wpabuf* %152, %struct.wpabuf** %4, align 8
  store i32 1, i32* %14, align 4
  br label %186

153:                                              ; preds = %118
  %154 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %155 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %156 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = call i32* @wpabuf_put(%struct.wpabuf* %154, i64 %158)
  store i32* %159, i32** %13, align 8
  %160 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %161 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %160, i32 0, i32 0
  %162 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %163 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load i32*, i32** %13, align 8
  %166 = call i64 @eap_eke_auth(%struct.TYPE_4__* %161, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %164, i32* %165)
  %167 = icmp slt i64 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %153
  %169 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %170 = call i32 @wpabuf_free(%struct.wpabuf* %169)
  %171 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %172 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %173 = call i32 @eap_eke_fail(%struct.eap_eke_data* %171, i32 %172)
  %174 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %175 = load i32, i32* %7, align 4
  %176 = call %struct.wpabuf* @eap_eke_build_failure(%struct.eap_eke_data* %174, i32 %175)
  store %struct.wpabuf* %176, %struct.wpabuf** %4, align 8
  store i32 1, i32* %14, align 4
  br label %186

177:                                              ; preds = %153
  %178 = load i32, i32* @MSG_DEBUG, align 4
  %179 = load i32*, i32** %13, align 8
  %180 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %181 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @wpa_hexdump(i32 %178, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* %179, i64 %183)
  %185 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %185, %struct.wpabuf** %4, align 8
  store i32 1, i32* %14, align 4
  br label %186

186:                                              ; preds = %177, %168, %144, %109, %55, %38
  %187 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %187)
  %188 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %188
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local %struct.wpabuf* @eap_eke_build_msg(%struct.eap_eke_data*, i32, i64, i32) #2

declare dso_local i32 @eap_eke_fail(%struct.eap_eke_data*, i32) #2

declare dso_local %struct.wpabuf* @eap_eke_build_failure(%struct.eap_eke_data*, i32) #2

declare dso_local i64 @random_get_bytes(i32, i32) #2

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32, i32) #2

declare dso_local i32 @os_memcpy(i32*, i32, i32) #2

declare dso_local i64 @wpabuf_tailroom(%struct.wpabuf*) #2

declare dso_local i64 @eap_eke_prot(%struct.TYPE_4__*, i32*, i32, i32*, i64*) #2

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i64) #2

declare dso_local i64 @eap_eke_derive_ka(%struct.TYPE_4__*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i64 @eap_eke_auth(%struct.TYPE_4__*, i8*, i32, i32*) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
