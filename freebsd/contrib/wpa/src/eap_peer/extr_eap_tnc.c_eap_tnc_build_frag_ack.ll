; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tnc.c_eap_tnc_build_frag_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tnc.c_eap_tnc_build_frag_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_TNC = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"EAP-TNC: Failed to allocate memory for fragment ack\00", align 1
@EAP_TNC_VERSION = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"EAP-TNC: Send fragment ack\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (i32, i32)* @eap_tnc_build_frag_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_tnc_build_frag_ack(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpabuf*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %8 = load i32, i32* @EAP_TYPE_TNC, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.wpabuf* @eap_msg_alloc(i32 %7, i32 %8, i32 1, i32 %9, i32 %10)
  store %struct.wpabuf* %11, %struct.wpabuf** %6, align 8
  %12 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %13 = icmp eq %struct.wpabuf* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @MSG_ERROR, align 4
  %16 = call i32 @wpa_printf(i32 %15, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %24

17:                                               ; preds = %2
  %18 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %19 = load i32, i32* @EAP_TNC_VERSION, align 4
  %20 = call i32 @wpabuf_put_u8(%struct.wpabuf* %18, i32 %19)
  %21 = load i32, i32* @MSG_DEBUG, align 4
  %22 = call i32 @wpa_printf(i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  store %struct.wpabuf* %23, %struct.wpabuf** %3, align 8
  br label %24

24:                                               ; preds = %17, %14
  %25 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %25
}

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i32, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
