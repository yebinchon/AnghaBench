; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpas_glue.c_wpa_supplicant_set_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpas_glue.c_wpa_supplicant_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i32, i32, i64, i32, i32, i32, i64 }

@WPA_ALG_TKIP = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@WPA_ALG_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32, i32, i32*, i64, i32*, i64)* @wpa_supplicant_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_set_key(i8* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32* %5, i64 %6, i32* %7, i64 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.wpa_supplicant*, align 8
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32* %7, i32** %17, align 8
  store i64 %8, i64* %18, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = bitcast i8* %20 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %21, %struct.wpa_supplicant** %19, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @WPA_ALG_TKIP, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %9
  %26 = load i32, i32* %13, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i64, i64* %18, align 8
  %30 = icmp eq i64 %29, 32
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %19, align 8
  %33 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %32, i32 0, i32 7
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %31, %28, %25, %9
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %19, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32*, i32** %15, align 8
  %41 = load i64, i64* %16, align 8
  %42 = load i32*, i32** %17, align 8
  %43 = load i64, i64* %18, align 8
  %44 = call i32 @wpa_drv_set_key(%struct.wpa_supplicant* %35, i32 %36, i32* %37, i32 %38, i32 %39, i32* %40, i64 %41, i32* %42, i64 %43)
  ret i32 %44
}

declare dso_local i32 @wpa_drv_set_key(%struct.wpa_supplicant*, i32, i32*, i32, i32, i32*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
