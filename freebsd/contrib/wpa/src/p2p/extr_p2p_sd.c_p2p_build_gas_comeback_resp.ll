; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_sd.c_p2p_build_gas_comeback_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_sd.c_p2p_build_gas_comeback_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@ANQP_VENDOR_SPECIFIC = common dso_local global i64 0, align 8
@P2P_IE_VENDOR_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (i64, i64, i64, i64*, i64, i64, i64, i64)* @p2p_build_gas_comeback_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @p2p_build_gas_comeback_resp(i64 %0, i64 %1, i64 %2, i64* %3, i64 %4, i64 %5, i64 %6, i64 %7) #0 {
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.wpabuf*, align 8
  store i64 %0, i64* %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64* %3, i64** %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i64 %7, i64* %17, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* %15, align 8
  %22 = load i64, i64* %16, align 8
  %23 = load i64, i64* %14, align 8
  %24 = add i64 100, %23
  %25 = trunc i64 %24 to i32
  %26 = call %struct.wpabuf* @gas_anqp_build_comeback_resp(i64 %19, i64 %20, i64 %21, i64 %22, i32 0, i32 %25)
  store %struct.wpabuf* %26, %struct.wpabuf** %18, align 8
  %27 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %28 = icmp eq %struct.wpabuf* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %8
  store %struct.wpabuf* null, %struct.wpabuf** %9, align 8
  br label %55

30:                                               ; preds = %8
  %31 = load i64, i64* %15, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %35 = load i64, i64* @ANQP_VENDOR_SPECIFIC, align 8
  %36 = call i32 @wpabuf_put_le16(%struct.wpabuf* %34, i64 %35)
  %37 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %38 = load i64, i64* %17, align 8
  %39 = add nsw i64 6, %38
  %40 = call i32 @wpabuf_put_le16(%struct.wpabuf* %37, i64 %39)
  %41 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %42 = load i32, i32* @P2P_IE_VENDOR_TYPE, align 4
  %43 = call i32 @wpabuf_put_be32(%struct.wpabuf* %41, i32 %42)
  %44 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %45 = load i64, i64* %12, align 8
  %46 = call i32 @wpabuf_put_le16(%struct.wpabuf* %44, i64 %45)
  br label %47

47:                                               ; preds = %33, %30
  %48 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %49 = load i64*, i64** %13, align 8
  %50 = load i64, i64* %14, align 8
  %51 = call i32 @wpabuf_put_data(%struct.wpabuf* %48, i64* %49, i64 %50)
  %52 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %53 = call i32 @gas_anqp_set_len(%struct.wpabuf* %52)
  %54 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  store %struct.wpabuf* %54, %struct.wpabuf** %9, align 8
  br label %55

55:                                               ; preds = %47, %29
  %56 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  ret %struct.wpabuf* %56
}

declare dso_local %struct.wpabuf* @gas_anqp_build_comeback_resp(i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @wpabuf_put_le16(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_be32(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i64*, i64) #1

declare dso_local i32 @gas_anqp_set_len(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
