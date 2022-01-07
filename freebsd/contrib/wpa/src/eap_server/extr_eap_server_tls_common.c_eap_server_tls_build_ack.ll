; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tls_common.c_eap_server_tls_build_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tls_common.c_eap_server_tls_build_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"SSL: Building ACK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @eap_server_tls_build_ack(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.wpabuf* @eap_tls_msg_alloc(i32 %9, i32 1, i32 %10, i32 %11)
  store %struct.wpabuf* %12, %struct.wpabuf** %8, align 8
  %13 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %14 = icmp eq %struct.wpabuf* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %23

16:                                               ; preds = %3
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = call i32 @wpa_printf(i32 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @wpabuf_put_u8(%struct.wpabuf* %19, i32 %20)
  %22 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %22, %struct.wpabuf** %4, align 8
  br label %23

23:                                               ; preds = %16, %15
  %24 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %24
}

declare dso_local %struct.wpabuf* @eap_tls_msg_alloc(i32, i32, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
