; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_sd.c_p2p_build_sd_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_sd.c_p2p_build_sd_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@ANQP_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@P2P_IE_VENDOR_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (i32, %struct.wpabuf*)* @p2p_build_sd_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @p2p_build_sd_query(i32 %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %8 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %9 = call i64 @wpabuf_len(%struct.wpabuf* %8)
  %10 = add nsw i64 100, %9
  %11 = call %struct.wpabuf* @gas_anqp_build_initial_req(i32 0, i64 %10)
  store %struct.wpabuf* %11, %struct.wpabuf** %6, align 8
  %12 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %13 = icmp eq %struct.wpabuf* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %34

15:                                               ; preds = %2
  %16 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %17 = load i32, i32* @ANQP_VENDOR_SPECIFIC, align 4
  %18 = call i32* @gas_anqp_add_element(%struct.wpabuf* %16, i32 %17)
  store i32* %18, i32** %7, align 8
  %19 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %20 = load i32, i32* @P2P_IE_VENDOR_TYPE, align 4
  %21 = call i32 @wpabuf_put_be32(%struct.wpabuf* %19, i32 %20)
  %22 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @wpabuf_put_le16(%struct.wpabuf* %22, i32 %23)
  %25 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %26 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %27 = call i32 @wpabuf_put_buf(%struct.wpabuf* %25, %struct.wpabuf* %26)
  %28 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @gas_anqp_set_element_len(%struct.wpabuf* %28, i32* %29)
  %31 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %32 = call i32 @gas_anqp_set_len(%struct.wpabuf* %31)
  %33 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  store %struct.wpabuf* %33, %struct.wpabuf** %3, align 8
  br label %34

34:                                               ; preds = %15, %14
  %35 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %35
}

declare dso_local %struct.wpabuf* @gas_anqp_build_initial_req(i32, i64) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32* @gas_anqp_add_element(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be32(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_le16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

declare dso_local i32 @gas_anqp_set_element_len(%struct.wpabuf*, i32*) #1

declare dso_local i32 @gas_anqp_set_len(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
