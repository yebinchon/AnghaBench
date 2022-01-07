; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp.c_build_fake_wsc_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp.c_build_fake_wsc_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@UPNP_WPS_WLANEVENT_TYPE_EAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"00:00:00:00:00:00\00", align 1
@WPS_WSC_ACK = common dso_local global i32 0, align 4
@ATTR_ENROLLEE_NONCE = common dso_local global i32 0, align 4
@WPS_NONCE_LEN = common dso_local global i32 0, align 4
@ATTR_REGISTRAR_NONCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* ()* @build_fake_wsc_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @build_fake_wsc_ack() #0 {
  %1 = alloca %struct.wpabuf*, align 8
  %2 = alloca %struct.wpabuf*, align 8
  %3 = call %struct.wpabuf* @wpabuf_alloc(i32 100)
  store %struct.wpabuf* %3, %struct.wpabuf** %2, align 8
  %4 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %5 = icmp eq %struct.wpabuf* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store %struct.wpabuf* null, %struct.wpabuf** %1, align 8
  br label %51

7:                                                ; preds = %0
  %8 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %9 = load i32, i32* @UPNP_WPS_WLANEVENT_TYPE_EAP, align 4
  %10 = call i32 @wpabuf_put_u8(%struct.wpabuf* %8, i32 %9)
  %11 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %12 = call i32 @wpabuf_put_str(%struct.wpabuf* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %14 = call i64 @wps_build_version(%struct.wpabuf* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %7
  %17 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %18 = load i32, i32* @WPS_WSC_ACK, align 4
  %19 = call i64 @wps_build_msg_type(%struct.wpabuf* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16, %7
  %22 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %23 = call i32 @wpabuf_free(%struct.wpabuf* %22)
  store %struct.wpabuf* null, %struct.wpabuf** %1, align 8
  br label %51

24:                                               ; preds = %16
  %25 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %26 = load i32, i32* @ATTR_ENROLLEE_NONCE, align 4
  %27 = call i32 @wpabuf_put_be16(%struct.wpabuf* %25, i32 %26)
  %28 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %29 = load i32, i32* @WPS_NONCE_LEN, align 4
  %30 = call i32 @wpabuf_put_be16(%struct.wpabuf* %28, i32 %29)
  %31 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %32 = load i32, i32* @WPS_NONCE_LEN, align 4
  %33 = call i32 @wpabuf_put(%struct.wpabuf* %31, i32 %32)
  %34 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %35 = load i32, i32* @ATTR_REGISTRAR_NONCE, align 4
  %36 = call i32 @wpabuf_put_be16(%struct.wpabuf* %34, i32 %35)
  %37 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %38 = load i32, i32* @WPS_NONCE_LEN, align 4
  %39 = call i32 @wpabuf_put_be16(%struct.wpabuf* %37, i32 %38)
  %40 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %41 = load i32, i32* @WPS_NONCE_LEN, align 4
  %42 = call i32 @wpabuf_put(%struct.wpabuf* %40, i32 %41)
  %43 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %44 = call i64 @wps_build_wfa_ext(%struct.wpabuf* %43, i32 0, i32* null, i32 0, i32 0)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %24
  %47 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %48 = call i32 @wpabuf_free(%struct.wpabuf* %47)
  store %struct.wpabuf* null, %struct.wpabuf** %1, align 8
  br label %51

49:                                               ; preds = %24
  %50 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  store %struct.wpabuf* %50, %struct.wpabuf** %1, align 8
  br label %51

51:                                               ; preds = %49, %46, %21, %6
  %52 = load %struct.wpabuf*, %struct.wpabuf** %1, align 8
  ret %struct.wpabuf* %52
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_str(%struct.wpabuf*, i8*) #1

declare dso_local i64 @wps_build_version(%struct.wpabuf*) #1

declare dso_local i64 @wps_build_msg_type(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_wfa_ext(%struct.wpabuf*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
