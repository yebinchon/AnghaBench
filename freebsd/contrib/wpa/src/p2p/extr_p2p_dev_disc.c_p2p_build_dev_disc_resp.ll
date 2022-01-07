; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_dev_disc.c_p2p_build_dev_disc_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_dev_disc.c_p2p_build_dev_disc_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@P2P_DEV_DISC_RESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (i32, i32)* @p2p_build_dev_disc_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @p2p_build_dev_disc_resp(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = call %struct.wpabuf* @wpabuf_alloc(i32 100)
  store %struct.wpabuf* %8, %struct.wpabuf** %6, align 8
  %9 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %10 = icmp eq %struct.wpabuf* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %26

12:                                               ; preds = %2
  %13 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %14 = load i32, i32* @P2P_DEV_DISC_RESP, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @p2p_buf_add_public_action_hdr(%struct.wpabuf* %13, i32 %14, i32 %15)
  %17 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %18 = call i32* @p2p_buf_add_ie_hdr(%struct.wpabuf* %17)
  store i32* %18, i32** %7, align 8
  %19 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @p2p_buf_add_status(%struct.wpabuf* %19, i32 %20)
  %22 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @p2p_buf_update_ie_hdr(%struct.wpabuf* %22, i32* %23)
  %25 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  store %struct.wpabuf* %25, %struct.wpabuf** %3, align 8
  br label %26

26:                                               ; preds = %12, %11
  %27 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %27
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @p2p_buf_add_public_action_hdr(%struct.wpabuf*, i32, i32) #1

declare dso_local i32* @p2p_buf_add_ie_hdr(%struct.wpabuf*) #1

declare dso_local i32 @p2p_buf_add_status(%struct.wpabuf*, i32) #1

declare dso_local i32 @p2p_buf_update_ie_hdr(%struct.wpabuf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
