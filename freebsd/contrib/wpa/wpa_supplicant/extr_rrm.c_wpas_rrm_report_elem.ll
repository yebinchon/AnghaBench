; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_rrm_report_elem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_rrm_report_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@WLAN_EID_MEASURE_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpabuf**, i32, i32, i32, i32*, i64)* @wpas_rrm_report_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_rrm_report_elem(%struct.wpabuf** %0, i32 %1, i32 %2, i32 %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.wpabuf** %0, %struct.wpabuf*** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %14 = load %struct.wpabuf**, %struct.wpabuf*** %8, align 8
  %15 = load i64, i64* %13, align 8
  %16 = add i64 5, %15
  %17 = trunc i64 %16 to i32
  %18 = call i64 @wpabuf_resize(%struct.wpabuf** %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %53

21:                                               ; preds = %6
  %22 = load %struct.wpabuf**, %struct.wpabuf*** %8, align 8
  %23 = load %struct.wpabuf*, %struct.wpabuf** %22, align 8
  %24 = load i32, i32* @WLAN_EID_MEASURE_REPORT, align 4
  %25 = call i32 @wpabuf_put_u8(%struct.wpabuf* %23, i32 %24)
  %26 = load %struct.wpabuf**, %struct.wpabuf*** %8, align 8
  %27 = load %struct.wpabuf*, %struct.wpabuf** %26, align 8
  %28 = load i64, i64* %13, align 8
  %29 = add i64 3, %28
  %30 = trunc i64 %29 to i32
  %31 = call i32 @wpabuf_put_u8(%struct.wpabuf* %27, i32 %30)
  %32 = load %struct.wpabuf**, %struct.wpabuf*** %8, align 8
  %33 = load %struct.wpabuf*, %struct.wpabuf** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @wpabuf_put_u8(%struct.wpabuf* %33, i32 %34)
  %36 = load %struct.wpabuf**, %struct.wpabuf*** %8, align 8
  %37 = load %struct.wpabuf*, %struct.wpabuf** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @wpabuf_put_u8(%struct.wpabuf* %37, i32 %38)
  %40 = load %struct.wpabuf**, %struct.wpabuf*** %8, align 8
  %41 = load %struct.wpabuf*, %struct.wpabuf** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @wpabuf_put_u8(%struct.wpabuf* %41, i32 %42)
  %44 = load i64, i64* %13, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %21
  %47 = load %struct.wpabuf**, %struct.wpabuf*** %8, align 8
  %48 = load %struct.wpabuf*, %struct.wpabuf** %47, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = load i64, i64* %13, align 8
  %51 = call i32 @wpabuf_put_data(%struct.wpabuf* %48, i32* %49, i64 %50)
  br label %52

52:                                               ; preds = %46, %21
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %20
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i64 @wpabuf_resize(%struct.wpabuf**, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
