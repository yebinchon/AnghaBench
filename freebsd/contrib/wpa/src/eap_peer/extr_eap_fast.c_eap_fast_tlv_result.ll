; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_tlv_result.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_tlv_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_tlv_intermediate_result_tlv = type { i8*, i8*, i8* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"EAP-FAST: Add %sResult TLV(status=%d)\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Intermediate \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EAP_TLV_TYPE_MANDATORY = common dso_local global i32 0, align 4
@EAP_TLV_INTERMEDIATE_RESULT_TLV = common dso_local global i32 0, align 4
@EAP_TLV_RESULT_TLV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (i32, i32)* @eap_fast_tlv_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_fast_tlv_result(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_tlv_intermediate_result_tlv*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = call %struct.wpabuf* @wpabuf_alloc(i32 24)
  store %struct.wpabuf* %8, %struct.wpabuf** %6, align 8
  %9 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %10 = icmp eq %struct.wpabuf* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %43

12:                                               ; preds = %2
  %13 = load i32, i32* @MSG_DEBUG, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @wpa_printf(i32 %13, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %18)
  %20 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %21 = call %struct.eap_tlv_intermediate_result_tlv* @wpabuf_put(%struct.wpabuf* %20, i32 24)
  store %struct.eap_tlv_intermediate_result_tlv* %21, %struct.eap_tlv_intermediate_result_tlv** %7, align 8
  %22 = load i32, i32* @EAP_TLV_TYPE_MANDATORY, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %12
  %26 = load i32, i32* @EAP_TLV_INTERMEDIATE_RESULT_TLV, align 4
  br label %29

27:                                               ; preds = %12
  %28 = load i32, i32* @EAP_TLV_RESULT_TLV, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = or i32 %22, %30
  %32 = call i8* @host_to_be16(i32 %31)
  %33 = load %struct.eap_tlv_intermediate_result_tlv*, %struct.eap_tlv_intermediate_result_tlv** %7, align 8
  %34 = getelementptr inbounds %struct.eap_tlv_intermediate_result_tlv, %struct.eap_tlv_intermediate_result_tlv* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = call i8* @host_to_be16(i32 2)
  %36 = load %struct.eap_tlv_intermediate_result_tlv*, %struct.eap_tlv_intermediate_result_tlv** %7, align 8
  %37 = getelementptr inbounds %struct.eap_tlv_intermediate_result_tlv, %struct.eap_tlv_intermediate_result_tlv* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i8* @host_to_be16(i32 %38)
  %40 = load %struct.eap_tlv_intermediate_result_tlv*, %struct.eap_tlv_intermediate_result_tlv** %7, align 8
  %41 = getelementptr inbounds %struct.eap_tlv_intermediate_result_tlv, %struct.eap_tlv_intermediate_result_tlv* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  store %struct.wpabuf* %42, %struct.wpabuf** %3, align 8
  br label %43

43:                                               ; preds = %29, %11
  %44 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %44
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*, i32) #1

declare dso_local %struct.eap_tlv_intermediate_result_tlv* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i8* @host_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
