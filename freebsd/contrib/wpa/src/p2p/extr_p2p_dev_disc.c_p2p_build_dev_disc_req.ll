; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_dev_disc.c_p2p_build_dev_disc_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_dev_disc.c_p2p_build_dev_disc_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.p2p_data = type { i32 }
%struct.p2p_device = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@P2P_DEV_DISC_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.p2p_data*, %struct.p2p_device*, i32*)* @p2p_build_dev_disc_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @p2p_build_dev_disc_req(%struct.p2p_data* %0, %struct.p2p_device* %1, i32* %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.p2p_data*, align 8
  %6 = alloca %struct.p2p_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i32*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %5, align 8
  store %struct.p2p_device* %1, %struct.p2p_device** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = call %struct.wpabuf* @wpabuf_alloc(i32 100)
  store %struct.wpabuf* %10, %struct.wpabuf** %8, align 8
  %11 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %12 = icmp eq %struct.wpabuf* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %54

14:                                               ; preds = %3
  %15 = load %struct.p2p_device*, %struct.p2p_device** %6, align 8
  %16 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.p2p_device*, %struct.p2p_device** %6, align 8
  %20 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load %struct.p2p_device*, %struct.p2p_device** %6, align 8
  %25 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %14
  %27 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %28 = load i32, i32* @P2P_DEV_DISC_REQ, align 4
  %29 = load %struct.p2p_device*, %struct.p2p_device** %6, align 8
  %30 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @p2p_buf_add_public_action_hdr(%struct.wpabuf* %27, i32 %28, i32 %31)
  %33 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %34 = call i32* @p2p_buf_add_ie_hdr(%struct.wpabuf* %33)
  store i32* %34, i32** %9, align 8
  %35 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @p2p_buf_add_device_id(%struct.wpabuf* %35, i32* %36)
  %38 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %39 = load %struct.p2p_device*, %struct.p2p_device** %6, align 8
  %40 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.p2p_device*, %struct.p2p_device** %6, align 8
  %44 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.p2p_device*, %struct.p2p_device** %6, align 8
  %47 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @p2p_buf_add_group_id(%struct.wpabuf* %38, i32 %42, i32 %45, i32 %48)
  %50 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @p2p_buf_update_ie_hdr(%struct.wpabuf* %50, i32* %51)
  %53 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %53, %struct.wpabuf** %4, align 8
  br label %54

54:                                               ; preds = %26, %13
  %55 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %55
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @p2p_buf_add_public_action_hdr(%struct.wpabuf*, i32, i32) #1

declare dso_local i32* @p2p_buf_add_ie_hdr(%struct.wpabuf*) #1

declare dso_local i32 @p2p_buf_add_device_id(%struct.wpabuf*, i32*) #1

declare dso_local i32 @p2p_buf_add_group_id(%struct.wpabuf*, i32, i32, i32) #1

declare dso_local i32 @p2p_buf_update_ie_hdr(%struct.wpabuf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
