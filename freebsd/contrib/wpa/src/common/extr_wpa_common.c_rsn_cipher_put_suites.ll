; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_wpa_common.c_rsn_cipher_put_suites.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_wpa_common.c_rsn_cipher_put_suites.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WPA_CIPHER_CCMP_256 = common dso_local global i32 0, align 4
@RSN_CIPHER_SUITE_CCMP_256 = common dso_local global i32 0, align 4
@RSN_SELECTOR_LEN = common dso_local global i32 0, align 4
@WPA_CIPHER_GCMP_256 = common dso_local global i32 0, align 4
@RSN_CIPHER_SUITE_GCMP_256 = common dso_local global i32 0, align 4
@WPA_CIPHER_CCMP = common dso_local global i32 0, align 4
@RSN_CIPHER_SUITE_CCMP = common dso_local global i32 0, align 4
@WPA_CIPHER_GCMP = common dso_local global i32 0, align 4
@RSN_CIPHER_SUITE_GCMP = common dso_local global i32 0, align 4
@WPA_CIPHER_TKIP = common dso_local global i32 0, align 4
@RSN_CIPHER_SUITE_TKIP = common dso_local global i32 0, align 4
@WPA_CIPHER_NONE = common dso_local global i32 0, align 4
@RSN_CIPHER_SUITE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsn_cipher_put_suites(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  store i32* %6, i32** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @WPA_CIPHER_CCMP_256, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* @RSN_CIPHER_SUITE_CCMP_256, align 4
  %14 = call i32 @RSN_SELECTOR_PUT(i32* %12, i32 %13)
  %15 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32* %18, i32** %5, align 8
  br label %19

19:                                               ; preds = %11, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @WPA_CIPHER_GCMP_256, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @RSN_CIPHER_SUITE_GCMP_256, align 4
  %27 = call i32 @RSN_SELECTOR_PUT(i32* %25, i32 %26)
  %28 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32* %31, i32** %5, align 8
  br label %32

32:                                               ; preds = %24, %19
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @WPA_CIPHER_CCMP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @RSN_CIPHER_SUITE_CCMP, align 4
  %40 = call i32 @RSN_SELECTOR_PUT(i32* %38, i32 %39)
  %41 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32* %44, i32** %5, align 8
  br label %45

45:                                               ; preds = %37, %32
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @WPA_CIPHER_GCMP, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* @RSN_CIPHER_SUITE_GCMP, align 4
  %53 = call i32 @RSN_SELECTOR_PUT(i32* %51, i32 %52)
  %54 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32* %57, i32** %5, align 8
  br label %58

58:                                               ; preds = %50, %45
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @WPA_CIPHER_TKIP, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* @RSN_CIPHER_SUITE_TKIP, align 4
  %66 = call i32 @RSN_SELECTOR_PUT(i32* %64, i32 %65)
  %67 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32* %70, i32** %5, align 8
  br label %71

71:                                               ; preds = %63, %58
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @WPA_CIPHER_NONE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* @RSN_CIPHER_SUITE_NONE, align 4
  %79 = call i32 @RSN_SELECTOR_PUT(i32* %77, i32 %78)
  %80 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %5, align 8
  br label %84

84:                                               ; preds = %76, %71
  %85 = load i32*, i32** %5, align 8
  %86 = load i32*, i32** %3, align 8
  %87 = ptrtoint i32* %85 to i64
  %88 = ptrtoint i32* %86 to i64
  %89 = sub i64 %87, %88
  %90 = sdiv exact i64 %89, 4
  %91 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %92 = sext i32 %91 to i64
  %93 = sdiv i64 %90, %92
  %94 = trunc i64 %93 to i32
  ret i32 %94
}

declare dso_local i32 @RSN_SELECTOR_PUT(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
