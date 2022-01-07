; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_udp.c_wpa_supplicant_global_get_cookie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_udp.c_wpa_supplicant_global_get_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctrl_iface_global_priv = type { i32 }

@COOKIE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"COOKIE=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ctrl_iface_global_priv*, i64*)* @wpa_supplicant_global_get_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @wpa_supplicant_global_get_cookie(%struct.ctrl_iface_global_priv* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ctrl_iface_global_priv*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  store %struct.ctrl_iface_global_priv* %0, %struct.ctrl_iface_global_priv** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load i32, i32* @COOKIE_LEN, align 4
  %8 = mul nsw i32 2, %7
  %9 = add nsw i32 7, %8
  %10 = add nsw i32 %9, 1
  %11 = call i8* @os_malloc(i32 %10)
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64*, i64** %5, align 8
  store i64 1, i64* %15, align 8
  store i8* null, i8** %3, align 8
  br label %35

16:                                               ; preds = %2
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @os_memcpy(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 7
  %21 = load i32, i32* @COOKIE_LEN, align 4
  %22 = mul nsw i32 2, %21
  %23 = add nsw i32 %22, 1
  %24 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %4, align 8
  %25 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @COOKIE_LEN, align 4
  %28 = call i32 @wpa_snprintf_hex(i8* %20, i32 %23, i32 %26, i32 %27)
  %29 = load i32, i32* @COOKIE_LEN, align 4
  %30 = mul nsw i32 2, %29
  %31 = add nsw i32 7, %30
  %32 = sext i32 %31 to i64
  %33 = load i64*, i64** %5, align 8
  store i64 %32, i64* %33, align 8
  %34 = load i8*, i8** %6, align 8
  store i8* %34, i8** %3, align 8
  br label %35

35:                                               ; preds = %16, %14
  %36 = load i8*, i8** %3, align 8
  ret i8* %36
}

declare dso_local i8* @os_malloc(i32) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i32) #1

declare dso_local i32 @wpa_snprintf_hex(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
