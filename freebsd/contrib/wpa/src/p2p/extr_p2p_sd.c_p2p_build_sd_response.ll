; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_sd.c_p2p_build_sd_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_sd.c_p2p_build_sd_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@ANQP_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@P2P_IE_VENDOR_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (i32, i32, i32, i32, %struct.wpabuf*)* @p2p_build_sd_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @p2p_build_sd_response(i32 %0, i32 %1, i32 %2, i32 %3, %struct.wpabuf* %4) #0 {
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wpabuf*, align 8
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.wpabuf* %4, %struct.wpabuf** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %18 = icmp ne %struct.wpabuf* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %21 = call i32 @wpabuf_len(%struct.wpabuf* %20)
  br label %23

22:                                               ; preds = %5
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi i32 [ %21, %19 ], [ 0, %22 ]
  %25 = add nsw i32 100, %24
  %26 = call %struct.wpabuf* @gas_anqp_build_initial_resp(i32 %14, i32 %15, i32 %16, i32 %25)
  store %struct.wpabuf* %26, %struct.wpabuf** %12, align 8
  %27 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %28 = icmp eq %struct.wpabuf* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  br label %53

30:                                               ; preds = %23
  %31 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %32 = icmp ne %struct.wpabuf* %31, null
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %35 = load i32, i32* @ANQP_VENDOR_SPECIFIC, align 4
  %36 = call i32* @gas_anqp_add_element(%struct.wpabuf* %34, i32 %35)
  store i32* %36, i32** %13, align 8
  %37 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %38 = load i32, i32* @P2P_IE_VENDOR_TYPE, align 4
  %39 = call i32 @wpabuf_put_be32(%struct.wpabuf* %37, i32 %38)
  %40 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @wpabuf_put_le16(%struct.wpabuf* %40, i32 %41)
  %43 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %44 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %45 = call i32 @wpabuf_put_buf(%struct.wpabuf* %43, %struct.wpabuf* %44)
  %46 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = call i32 @gas_anqp_set_element_len(%struct.wpabuf* %46, i32* %47)
  br label %49

49:                                               ; preds = %33, %30
  %50 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %51 = call i32 @gas_anqp_set_len(%struct.wpabuf* %50)
  %52 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  store %struct.wpabuf* %52, %struct.wpabuf** %6, align 8
  br label %53

53:                                               ; preds = %49, %29
  %54 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  ret %struct.wpabuf* %54
}

declare dso_local %struct.wpabuf* @gas_anqp_build_initial_resp(i32, i32, i32, i32) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

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
