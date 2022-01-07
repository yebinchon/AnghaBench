; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_gas.c_gas_build_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_gas.c_gas_build_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@WLAN_ACTION_PUBLIC = common dso_local global i32 0, align 4
@WLAN_PA_GAS_COMEBACK_RESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (i32, i32, i32, i32, i32, i32, i64)* @gas_build_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @gas_build_resp(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.wpabuf*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  %17 = load i64, i64* %15, align 8
  %18 = add i64 100, %17
  %19 = trunc i64 %18 to i32
  %20 = call %struct.wpabuf* @wpabuf_alloc(i32 %19)
  store %struct.wpabuf* %20, %struct.wpabuf** %16, align 8
  %21 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  %22 = icmp eq %struct.wpabuf* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %7
  store %struct.wpabuf* null, %struct.wpabuf** %8, align 8
  br label %54

24:                                               ; preds = %7
  %25 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  %26 = load i32, i32* @WLAN_ACTION_PUBLIC, align 4
  %27 = call i32 @wpabuf_put_u8(%struct.wpabuf* %25, i32 %26)
  %28 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @wpabuf_put_u8(%struct.wpabuf* %28, i32 %29)
  %31 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @wpabuf_put_u8(%struct.wpabuf* %31, i32 %32)
  %34 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @wpabuf_put_le16(%struct.wpabuf* %34, i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @WLAN_PA_GAS_COMEBACK_RESP, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %24
  %41 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 128, i32 0
  %47 = or i32 %42, %46
  %48 = call i32 @wpabuf_put_u8(%struct.wpabuf* %41, i32 %47)
  br label %49

49:                                               ; preds = %40, %24
  %50 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @wpabuf_put_le16(%struct.wpabuf* %50, i32 %51)
  %53 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  store %struct.wpabuf* %53, %struct.wpabuf** %8, align 8
  br label %54

54:                                               ; preds = %49, %23
  %55 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  ret %struct.wpabuf* %55
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_le16(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
