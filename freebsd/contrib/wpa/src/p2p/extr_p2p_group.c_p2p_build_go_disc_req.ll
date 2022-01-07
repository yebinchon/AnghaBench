; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_build_go_disc_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_build_go_disc_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@P2P_GO_DISC_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* ()* @p2p_build_go_disc_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @p2p_build_go_disc_req() #0 {
  %1 = alloca %struct.wpabuf*, align 8
  %2 = alloca %struct.wpabuf*, align 8
  %3 = call %struct.wpabuf* @wpabuf_alloc(i32 100)
  store %struct.wpabuf* %3, %struct.wpabuf** %2, align 8
  %4 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %5 = icmp eq %struct.wpabuf* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store %struct.wpabuf* null, %struct.wpabuf** %1, align 8
  br label %12

7:                                                ; preds = %0
  %8 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %9 = load i32, i32* @P2P_GO_DISC_REQ, align 4
  %10 = call i32 @p2p_buf_add_action_hdr(%struct.wpabuf* %8, i32 %9, i32 0)
  %11 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  store %struct.wpabuf* %11, %struct.wpabuf** %1, align 8
  br label %12

12:                                               ; preds = %7, %6
  %13 = load %struct.wpabuf*, %struct.wpabuf** %1, align 8
  ret %struct.wpabuf* %13
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @p2p_buf_add_action_hdr(%struct.wpabuf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
