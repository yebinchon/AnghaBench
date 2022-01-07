; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_identity.c_eap_identity_buildReq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_identity.c_eap_identity_buildReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* (i32, i64*)* }
%struct.eap_identity_data = type { i32 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_IDENTITY = common dso_local global i32 0, align 4
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"EAP-Identity: Failed to allocate memory for request\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i8*, i32)* @eap_identity_buildReq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_identity_buildReq(%struct.eap_sm* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.eap_identity_data*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.eap_identity_data*
  store %struct.eap_identity_data* %13, %struct.eap_identity_data** %8, align 8
  %14 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %15 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8* (i32, i64*)*, i8* (i32, i64*)** %17, align 8
  %19 = icmp ne i8* (i32, i64*)* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %22 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i8* (i32, i64*)*, i8* (i32, i64*)** %24, align 8
  %26 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %27 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i8* %25(i32 %28, i64* %11)
  store i8* %29, i8** %10, align 8
  br label %31

30:                                               ; preds = %3
  store i8* null, i8** %10, align 8
  store i64 0, i64* %11, align 8
  br label %31

31:                                               ; preds = %30, %20
  %32 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %33 = load i32, i32* @EAP_TYPE_IDENTITY, align 4
  %34 = load i64, i64* %11, align 8
  %35 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call %struct.wpabuf* @eap_msg_alloc(i32 %32, i32 %33, i64 %34, i32 %35, i32 %36)
  store %struct.wpabuf* %37, %struct.wpabuf** %9, align 8
  %38 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %39 = icmp eq %struct.wpabuf* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load i32, i32* @MSG_ERROR, align 4
  %42 = call i32 @wpa_printf(i32 %41, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @FAILURE, align 4
  %44 = load %struct.eap_identity_data*, %struct.eap_identity_data** %8, align 8
  %45 = getelementptr inbounds %struct.eap_identity_data, %struct.eap_identity_data* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %52

46:                                               ; preds = %31
  %47 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @wpabuf_put_data(%struct.wpabuf* %47, i8* %48, i64 %49)
  %51 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  store %struct.wpabuf* %51, %struct.wpabuf** %4, align 8
  br label %52

52:                                               ; preds = %46, %40
  %53 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %53
}

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i64, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
