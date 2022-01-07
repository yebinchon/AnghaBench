; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_wpa_common.c_wpa_cipher_put_suites.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_wpa_common.c_wpa_cipher_put_suites.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WPA_CIPHER_CCMP = common dso_local global i32 0, align 4
@WPA_CIPHER_SUITE_CCMP = common dso_local global i32 0, align 4
@WPA_SELECTOR_LEN = common dso_local global i32 0, align 4
@WPA_CIPHER_TKIP = common dso_local global i32 0, align 4
@WPA_CIPHER_SUITE_TKIP = common dso_local global i32 0, align 4
@WPA_CIPHER_NONE = common dso_local global i32 0, align 4
@WPA_CIPHER_SUITE_NONE = common dso_local global i32 0, align 4
@RSN_SELECTOR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_cipher_put_suites(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  store i32* %6, i32** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @WPA_CIPHER_CCMP, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* @WPA_CIPHER_SUITE_CCMP, align 4
  %14 = call i32 @RSN_SELECTOR_PUT(i32* %12, i32 %13)
  %15 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32* %18, i32** %5, align 8
  br label %19

19:                                               ; preds = %11, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @WPA_CIPHER_TKIP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @WPA_CIPHER_SUITE_TKIP, align 4
  %27 = call i32 @RSN_SELECTOR_PUT(i32* %25, i32 %26)
  %28 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32* %31, i32** %5, align 8
  br label %32

32:                                               ; preds = %24, %19
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @WPA_CIPHER_NONE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @WPA_CIPHER_SUITE_NONE, align 4
  %40 = call i32 @RSN_SELECTOR_PUT(i32* %38, i32 %39)
  %41 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32* %44, i32** %5, align 8
  br label %45

45:                                               ; preds = %37, %32
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** %3, align 8
  %48 = ptrtoint i32* %46 to i64
  %49 = ptrtoint i32* %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 4
  %52 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %53 = sext i32 %52 to i64
  %54 = sdiv i64 %51, %53
  %55 = trunc i64 %54 to i32
  ret i32 %55
}

declare dso_local i32 @RSN_SELECTOR_PUT(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
