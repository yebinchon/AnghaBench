; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpas_ctrl_vendor_elem_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpas_ctrl_vendor_elem_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32** }

@NUM_VENDOR_ELEM_FRAMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i8*, i8*, i64)* @wpas_ctrl_vendor_elem_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_ctrl_vendor_elem_get(%struct.wpa_supplicant* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @atoi(i8* %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @NUM_VENDOR_ELEM_FRAMES, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %4
  store i32 -1, i32* %5, align 4
  br label %53

20:                                               ; preds = %15
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call %struct.wpa_supplicant* @wpas_vendor_elem(%struct.wpa_supplicant* %21, i32 %22)
  store %struct.wpa_supplicant* %23, %struct.wpa_supplicant** %6, align 8
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %25 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %24, i32 0, i32 0
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %53

33:                                               ; preds = %20
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %37 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %36, i32 0, i32 0
  %38 = load i32**, i32*** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @wpabuf_head_u8(i32* %42)
  %44 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %45 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %44, i32 0, i32 0
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @wpabuf_len(i32* %50)
  %52 = call i32 @wpa_snprintf_hex(i8* %34, i64 %35, i32 %43, i32 %51)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %33, %32, %19
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local %struct.wpa_supplicant* @wpas_vendor_elem(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpa_snprintf_hex(i8*, i64, i32, i32) #1

declare dso_local i32 @wpabuf_head_u8(i32*) #1

declare dso_local i32 @wpabuf_len(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
