; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_gmk_to_gtk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_gmk_to_gtk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ETH_ALEN = common dso_local global i32 0, align 4
@WPA_NONCE_LEN = common dso_local global i32 0, align 4
@WPA_GTK_MAX_LEN = common dso_local global i32 0, align 4
@WPA_GMK_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i32*, i32*, i64)* @wpa_gmk_to_gtk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_gmk_to_gtk(i32* %0, i8* %1, i32* %2, i32* %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = load i32, i32* @WPA_NONCE_LEN, align 4
  %19 = add nsw i32 %17, %18
  %20 = add nsw i32 %19, 8
  %21 = load i32, i32* @WPA_GTK_MAX_LEN, align 4
  %22 = add nsw i32 %20, %21
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %13, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %14, align 8
  store i32 0, i32* %16, align 4
  %26 = mul nuw i64 4, %23
  %27 = trunc i64 %26 to i32
  %28 = call i32 @os_memset(i32* %25, i32 0, i32 %27)
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* @ETH_ALEN, align 4
  %31 = call i32 @os_memcpy(i32* %25, i32* %29, i32 %30)
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %25, i64 %33
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* @WPA_NONCE_LEN, align 4
  %37 = call i32 @os_memcpy(i32* %34, i32* %35, i32 %36)
  %38 = load i32, i32* @ETH_ALEN, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %25, i64 %39
  %41 = load i32, i32* @WPA_NONCE_LEN, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32* %43, i32** %15, align 8
  %44 = load i32*, i32** %15, align 8
  %45 = call i32 @wpa_get_ntp_timestamp(i32* %44)
  %46 = load i32*, i32** %15, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 8
  store i32* %47, i32** %15, align 8
  %48 = load i32*, i32** %15, align 8
  %49 = load i64, i64* %12, align 8
  %50 = call i64 @random_get_bytes(i32* %48, i64 %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %6
  store i32 -1, i32* %16, align 4
  br label %53

53:                                               ; preds = %52, %6
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* @WPA_GMK_LEN, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = mul nuw i64 4, %23
  %58 = trunc i64 %57 to i32
  %59 = load i32*, i32** %11, align 8
  %60 = load i64, i64* %12, align 8
  %61 = call i64 @sha1_prf(i32* %54, i32 %55, i8* %56, i32* %25, i32 %58, i32* %59, i64 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  store i32 -1, i32* %16, align 4
  br label %64

64:                                               ; preds = %63, %53
  %65 = mul nuw i64 4, %23
  %66 = trunc i64 %65 to i32
  %67 = call i32 @forced_memzero(i32* %25, i32 %66)
  %68 = load i32, i32* %16, align 4
  %69 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %69)
  ret i32 %68
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_memset(i32*, i32, i32) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

declare dso_local i32 @wpa_get_ntp_timestamp(i32*) #2

declare dso_local i64 @random_get_bytes(i32*, i64) #2

declare dso_local i64 @sha1_prf(i32*, i32, i8*, i32*, i32, i32*, i64) #2

declare dso_local i32 @forced_memzero(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
