; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_build.c_p2p_buf_add_p2p_interface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_build.c_p2p_buf_add_p2p_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.p2p_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@P2P_ATTR_INTERFACE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_buf_add_p2p_interface(%struct.wpabuf* %0, %struct.p2p_data* %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.p2p_data*, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %3, align 8
  store %struct.p2p_data* %1, %struct.p2p_data** %4, align 8
  %5 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %6 = load i32, i32* @P2P_ATTR_INTERFACE, align 4
  %7 = call i32 @wpabuf_put_u8(%struct.wpabuf* %5, i32 %6)
  %8 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %9 = load i64, i64* @ETH_ALEN, align 8
  %10 = add nsw i64 %9, 1
  %11 = load i64, i64* @ETH_ALEN, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @wpabuf_put_le16(%struct.wpabuf* %8, i64 %12)
  %14 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %15 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %16 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* @ETH_ALEN, align 8
  %21 = call i32 @wpabuf_put_data(%struct.wpabuf* %14, i32 %19, i64 %20)
  %22 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %23 = call i32 @wpabuf_put_u8(%struct.wpabuf* %22, i32 1)
  %24 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %25 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %26 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* @ETH_ALEN, align 8
  %31 = call i32 @wpabuf_put_data(%struct.wpabuf* %24, i32 %29, i64 %30)
  ret void
}

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_le16(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
