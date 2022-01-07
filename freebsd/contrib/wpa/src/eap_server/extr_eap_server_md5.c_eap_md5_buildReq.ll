; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_md5.c_eap_md5_buildReq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_md5.c_eap_md5_buildReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_md5_data = type { i8*, i32 }

@CHALLENGE_LEN = common dso_local global i64 0, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"EAP-MD5: Failed to get random data\00", align 1
@FAILURE = common dso_local global i8* null, align 8
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_MD5 = common dso_local global i32 0, align 4
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"EAP-MD5: Failed to allocate memory for request\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"EAP-MD5: Challenge\00", align 1
@CONTINUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i8*, i32)* @eap_md5_buildReq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_md5_buildReq(%struct.eap_sm* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.eap_md5_data*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.eap_md5_data*
  store %struct.eap_md5_data* %11, %struct.eap_md5_data** %8, align 8
  %12 = load %struct.eap_md5_data*, %struct.eap_md5_data** %8, align 8
  %13 = getelementptr inbounds %struct.eap_md5_data, %struct.eap_md5_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i64, i64* @CHALLENGE_LEN, align 8
  %16 = call i64 @random_get_bytes(i32 %14, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i32, i32* @MSG_ERROR, align 4
  %20 = call i32 @wpa_printf(i32 %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %21 = load i8*, i8** @FAILURE, align 8
  %22 = load %struct.eap_md5_data*, %struct.eap_md5_data** %8, align 8
  %23 = getelementptr inbounds %struct.eap_md5_data, %struct.eap_md5_data* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %60

24:                                               ; preds = %3
  %25 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %26 = load i32, i32* @EAP_TYPE_MD5, align 4
  %27 = load i64, i64* @CHALLENGE_LEN, align 8
  %28 = add nsw i64 1, %27
  %29 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call %struct.wpabuf* @eap_msg_alloc(i32 %25, i32 %26, i64 %28, i32 %29, i32 %30)
  store %struct.wpabuf* %31, %struct.wpabuf** %9, align 8
  %32 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %33 = icmp eq %struct.wpabuf* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load i32, i32* @MSG_ERROR, align 4
  %36 = call i32 @wpa_printf(i32 %35, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i8*, i8** @FAILURE, align 8
  %38 = load %struct.eap_md5_data*, %struct.eap_md5_data** %8, align 8
  %39 = getelementptr inbounds %struct.eap_md5_data, %struct.eap_md5_data* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %60

40:                                               ; preds = %24
  %41 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %42 = load i64, i64* @CHALLENGE_LEN, align 8
  %43 = call i32 @wpabuf_put_u8(%struct.wpabuf* %41, i64 %42)
  %44 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %45 = load %struct.eap_md5_data*, %struct.eap_md5_data** %8, align 8
  %46 = getelementptr inbounds %struct.eap_md5_data, %struct.eap_md5_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* @CHALLENGE_LEN, align 8
  %49 = call i32 @wpabuf_put_data(%struct.wpabuf* %44, i32 %47, i64 %48)
  %50 = load i32, i32* @MSG_MSGDUMP, align 4
  %51 = load %struct.eap_md5_data*, %struct.eap_md5_data** %8, align 8
  %52 = getelementptr inbounds %struct.eap_md5_data, %struct.eap_md5_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* @CHALLENGE_LEN, align 8
  %55 = call i32 @wpa_hexdump(i32 %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %53, i64 %54)
  %56 = load i8*, i8** @CONTINUE, align 8
  %57 = load %struct.eap_md5_data*, %struct.eap_md5_data** %8, align 8
  %58 = getelementptr inbounds %struct.eap_md5_data, %struct.eap_md5_data* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  store %struct.wpabuf* %59, %struct.wpabuf** %4, align 8
  br label %60

60:                                               ; preds = %40, %34, %18
  %61 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %61
}

declare dso_local i64 @random_get_bytes(i32, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i64, i32, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32, i64) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
