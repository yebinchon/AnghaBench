; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_gtc.c_eap_gtc_buildReq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_gtc.c_eap_gtc_buildReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_gtc_data = type { i32, i64 }

@.str = private unnamed_addr constant [19 x i8] c"CHALLENGE=Password\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Password\00", align 1
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_GTC = common dso_local global i32 0, align 4
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"EAP-GTC: Failed to allocate memory for request\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i8*, i32)* @eap_gtc_buildReq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_gtc_buildReq(%struct.eap_sm* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.eap_gtc_data*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.eap_gtc_data*
  store %struct.eap_gtc_data* %13, %struct.eap_gtc_data** %8, align 8
  %14 = load %struct.eap_gtc_data*, %struct.eap_gtc_data** %8, align 8
  %15 = getelementptr inbounds %struct.eap_gtc_data, %struct.eap_gtc_data* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call i64 @os_strlen(i8* %20)
  store i64 %21, i64* %11, align 8
  %22 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %23 = load i32, i32* @EAP_TYPE_GTC, align 4
  %24 = load i64, i64* %11, align 8
  %25 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.wpabuf* @eap_msg_alloc(i32 %22, i32 %23, i64 %24, i32 %25, i32 %26)
  store %struct.wpabuf* %27, %struct.wpabuf** %9, align 8
  %28 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %29 = icmp eq %struct.wpabuf* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = load i32, i32* @MSG_ERROR, align 4
  %32 = call i32 @wpa_printf(i32 %31, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* @FAILURE, align 4
  %34 = load %struct.eap_gtc_data*, %struct.eap_gtc_data** %8, align 8
  %35 = getelementptr inbounds %struct.eap_gtc_data, %struct.eap_gtc_data* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %45

36:                                               ; preds = %3
  %37 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @wpabuf_put_data(%struct.wpabuf* %37, i8* %38, i64 %39)
  %41 = load i32, i32* @CONTINUE, align 4
  %42 = load %struct.eap_gtc_data*, %struct.eap_gtc_data** %8, align 8
  %43 = getelementptr inbounds %struct.eap_gtc_data, %struct.eap_gtc_data* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  store %struct.wpabuf* %44, %struct.wpabuf** %4, align 8
  br label %45

45:                                               ; preds = %36, %30
  %46 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %46
}

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i64, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
