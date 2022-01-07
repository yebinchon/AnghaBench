; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant_sd.c_wpas_p2p_sd_request_upnp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant_sd.c_wpas_p2p_sd_request_upnp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpabuf = type { i32 }

@P2P_SERV_UPNP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_p2p_sd_request_upnp(%struct.wpa_supplicant* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = call i64 @os_strlen(i8* %12)
  %14 = add nsw i64 5, %13
  %15 = call %struct.wpabuf* @wpabuf_alloc(i64 %14)
  store %struct.wpabuf* %15, %struct.wpabuf** %10, align 8
  %16 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %17 = icmp eq %struct.wpabuf* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %43

19:                                               ; preds = %4
  %20 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = call i64 @os_strlen(i8* %21)
  %23 = add nsw i64 3, %22
  %24 = call i32 @wpabuf_put_le16(%struct.wpabuf* %20, i64 %23)
  %25 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %26 = load i32, i32* @P2P_SERV_UPNP, align 4
  %27 = call i32 @wpabuf_put_u8(%struct.wpabuf* %25, i32 %26)
  %28 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %29 = call i32 @wpabuf_put_u8(%struct.wpabuf* %28, i32 1)
  %30 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @wpabuf_put_u8(%struct.wpabuf* %30, i32 %31)
  %33 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @wpabuf_put_str(%struct.wpabuf* %33, i8* %34)
  %36 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %39 = call i32 @wpas_p2p_sd_request(%struct.wpa_supplicant* %36, i32* %37, %struct.wpabuf* %38)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %41 = call i32 @wpabuf_free(%struct.wpabuf* %40)
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %19, %18
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i32 @wpabuf_put_le16(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_str(%struct.wpabuf*, i8*) #1

declare dso_local i32 @wpas_p2p_sd_request(%struct.wpa_supplicant*, i32*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
