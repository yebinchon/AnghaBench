; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_mbo_add_ie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_mbo_add_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"MBO: Not enough room in buffer for MBO IE: buf len = %zu, attr_len = %zu\00", align 1
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@OUI_WFA = common dso_local global i32 0, align 4
@MBO_OUI_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbo_add_ie(i32* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* %9, align 8
  %12 = add i64 6, %11
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @wpa_printf(i32 %15, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i64 %16, i64 %17)
  store i64 0, i64* %5, align 8
  br label %42

19:                                               ; preds = %4
  %20 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %6, align 8
  store i32 %20, i32* %21, align 4
  %23 = load i64, i64* %9, align 8
  %24 = add i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %6, align 8
  store i32 %25, i32* %26, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @OUI_WFA, align 4
  %30 = call i32 @WPA_PUT_BE24(i32* %28, i32 %29)
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  store i32* %32, i32** %6, align 8
  %33 = load i32, i32* @MBO_OUI_TYPE, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @os_memcpy(i32* %36, i32* %37, i64 %38)
  %40 = load i64, i64* %9, align 8
  %41 = add i64 6, %40
  store i64 %41, i64* %5, align 8
  br label %42

42:                                               ; preds = %19, %14
  %43 = load i64, i64* %5, align 8
  ret i64 %43
}

declare dso_local i32 @wpa_printf(i32, i8*, i64, i64) #1

declare dso_local i32 @WPA_PUT_BE24(i32*, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
