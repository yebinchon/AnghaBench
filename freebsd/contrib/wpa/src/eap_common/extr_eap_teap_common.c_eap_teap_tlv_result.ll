; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_teap_common.c_eap_teap_tlv_result.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_teap_common.c_eap_teap_tlv_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.teap_tlv_result = type { i8*, i8*, i8* }

@TEAP_STATUS_FAILURE = common dso_local global i32 0, align 4
@TEAP_STATUS_SUCCESS = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"EAP-TEAP: Add %sResult TLV(status=%s)\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Intermediate-\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Failure\00", align 1
@TEAP_TLV_MANDATORY = common dso_local global i32 0, align 4
@TEAP_TLV_INTERMEDIATE_RESULT = common dso_local global i32 0, align 4
@TEAP_TLV_RESULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @eap_teap_tlv_result(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.teap_tlv_result*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @TEAP_STATUS_FAILURE, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @TEAP_STATUS_SUCCESS, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %56

16:                                               ; preds = %11, %2
  %17 = call %struct.wpabuf* @wpabuf_alloc(i32 24)
  store %struct.wpabuf* %17, %struct.wpabuf** %6, align 8
  %18 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %19 = icmp ne %struct.wpabuf* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %56

21:                                               ; preds = %16
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @TEAP_STATUS_SUCCESS, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %32 = call i32 @wpa_printf(i32 %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %31)
  %33 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %34 = call %struct.teap_tlv_result* @wpabuf_put(%struct.wpabuf* %33, i32 24)
  store %struct.teap_tlv_result* %34, %struct.teap_tlv_result** %7, align 8
  %35 = load i32, i32* @TEAP_TLV_MANDATORY, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %21
  %39 = load i32, i32* @TEAP_TLV_INTERMEDIATE_RESULT, align 4
  br label %42

40:                                               ; preds = %21
  %41 = load i32, i32* @TEAP_TLV_RESULT, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = or i32 %35, %43
  %45 = call i8* @host_to_be16(i32 %44)
  %46 = load %struct.teap_tlv_result*, %struct.teap_tlv_result** %7, align 8
  %47 = getelementptr inbounds %struct.teap_tlv_result, %struct.teap_tlv_result* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = call i8* @host_to_be16(i32 2)
  %49 = load %struct.teap_tlv_result*, %struct.teap_tlv_result** %7, align 8
  %50 = getelementptr inbounds %struct.teap_tlv_result, %struct.teap_tlv_result* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i8* @host_to_be16(i32 %51)
  %53 = load %struct.teap_tlv_result*, %struct.teap_tlv_result** %7, align 8
  %54 = getelementptr inbounds %struct.teap_tlv_result, %struct.teap_tlv_result* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  store %struct.wpabuf* %55, %struct.wpabuf** %3, align 8
  br label %56

56:                                               ; preds = %42, %20, %15
  %57 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %57
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*, i8*) #1

declare dso_local %struct.teap_tlv_result* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i8* @host_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
