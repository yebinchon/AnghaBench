; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_md5.c_eap_md5_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_md5.c_eap_md5_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.wpabuf = type { i32 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_MD5 = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"EAP-MD5: Invalid frame\00", align 1
@TRUE = common dso_local global i32 0, align 4
@CHAP_MD5_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"EAP-MD5: Invalid response (response_len=%d payload_len=%lu\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, i8*, %struct.wpabuf*)* @eap_md5_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_md5_check(%struct.eap_sm* %0, i8* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  %10 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %11 = load i32, i32* @EAP_TYPE_MD5, align 4
  %12 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %13 = call i32* @eap_hdr_validate(i32 %10, i32 %11, %struct.wpabuf* %12, i64* %9)
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %9, align 8
  %18 = icmp ult i64 %17, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %16, %3
  %20 = load i32, i32* @MSG_INFO, align 4
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @TRUE, align 4
  store i32 %22, i32* %4, align 4
  br label %43

23:                                               ; preds = %16
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CHAP_MD5_LEN, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @CHAP_MD5_LEN, align 4
  %30 = add nsw i32 1, %29
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %9, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28, %23
  %35 = load i32, i32* @MSG_INFO, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %9, align 8
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %35, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %37, i64 %38)
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %4, align 4
  br label %43

41:                                               ; preds = %28
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %34, %19
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
