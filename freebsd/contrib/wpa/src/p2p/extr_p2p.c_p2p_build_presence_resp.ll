; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_build_presence_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_build_presence_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@P2P_PRESENCE_RESP = common dso_local global i32 0, align 4
@P2P_ATTR_NOTICE_OF_ABSENCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (i32, i32*, i64, i32)* @p2p_build_presence_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @p2p_build_presence_resp(i32 %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %8, align 8
  %13 = add i64 100, %12
  %14 = trunc i64 %13 to i32
  %15 = call %struct.wpabuf* @wpabuf_alloc(i32 %14)
  store %struct.wpabuf* %15, %struct.wpabuf** %10, align 8
  %16 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %17 = icmp eq %struct.wpabuf* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %50

19:                                               ; preds = %4
  %20 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %21 = load i32, i32* @P2P_PRESENCE_RESP, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @p2p_buf_add_action_hdr(%struct.wpabuf* %20, i32 %21, i32 %22)
  %24 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %25 = call i32* @p2p_buf_add_ie_hdr(%struct.wpabuf* %24)
  store i32* %25, i32** %11, align 8
  %26 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @p2p_buf_add_status(%struct.wpabuf* %26, i32 %27)
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %19
  %32 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %33 = load i32, i32* @P2P_ATTR_NOTICE_OF_ABSENCE, align 4
  %34 = call i32 @wpabuf_put_u8(%struct.wpabuf* %32, i32 %33)
  %35 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @wpabuf_put_le16(%struct.wpabuf* %35, i64 %36)
  %38 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @wpabuf_put_data(%struct.wpabuf* %38, i32* %39, i64 %40)
  br label %45

42:                                               ; preds = %19
  %43 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %44 = call i32 @p2p_buf_add_noa(%struct.wpabuf* %43, i32 0, i32 0, i32 0, i32* null, i32* null)
  br label %45

45:                                               ; preds = %42, %31
  %46 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @p2p_buf_update_ie_hdr(%struct.wpabuf* %46, i32* %47)
  %49 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  store %struct.wpabuf* %49, %struct.wpabuf** %5, align 8
  br label %50

50:                                               ; preds = %45, %18
  %51 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %51
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @p2p_buf_add_action_hdr(%struct.wpabuf*, i32, i32) #1

declare dso_local i32* @p2p_buf_add_ie_hdr(%struct.wpabuf*) #1

declare dso_local i32 @p2p_buf_add_status(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_le16(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32*, i64) #1

declare dso_local i32 @p2p_buf_add_noa(%struct.wpabuf*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @p2p_buf_update_ie_hdr(%struct.wpabuf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
