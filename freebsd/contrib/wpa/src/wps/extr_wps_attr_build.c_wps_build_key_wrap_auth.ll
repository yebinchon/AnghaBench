; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_attr_build.c_wps_build_key_wrap_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_attr_build.c_wps_build_key_wrap_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i32 }
%struct.wpabuf = type { i32 }

@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"WPS:  * Key Wrap Authenticator\00", align 1
@WPS_AUTHKEY_LEN = common dso_local global i32 0, align 4
@ATTR_KEY_WRAP_AUTH = common dso_local global i32 0, align 4
@WPS_KWA_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_build_key_wrap_auth(%struct.wps_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.wps_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.wps_data* %0, %struct.wps_data** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  %7 = load i32, i32* @SHA256_MAC_LEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load i32, i32* @MSG_DEBUG, align 4
  %12 = call i32 @wpa_printf(i32 %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %14 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @WPS_AUTHKEY_LEN, align 4
  %17 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %18 = call i32 @wpabuf_head(%struct.wpabuf* %17)
  %19 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %20 = call i32 @wpabuf_len(%struct.wpabuf* %19)
  %21 = call i32 @hmac_sha256(i32 %15, i32 %16, i32 %18, i32 %20, i32* %10)
  %22 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %23 = load i32, i32* @ATTR_KEY_WRAP_AUTH, align 4
  %24 = call i32 @wpabuf_put_be16(%struct.wpabuf* %22, i32 %23)
  %25 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %26 = load i32, i32* @WPS_KWA_LEN, align 4
  %27 = call i32 @wpabuf_put_be16(%struct.wpabuf* %25, i32 %26)
  %28 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %29 = load i32, i32* @WPS_KWA_LEN, align 4
  %30 = call i32 @wpabuf_put_data(%struct.wpabuf* %28, i32* %10, i32 %29)
  %31 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %31)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i32 @hmac_sha256(i32, i32, i32, i32, i32*) #2

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #2

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #2

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #2

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
