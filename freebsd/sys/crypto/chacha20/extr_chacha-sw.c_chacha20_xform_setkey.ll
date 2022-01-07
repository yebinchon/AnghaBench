; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/chacha20/extr_chacha-sw.c_chacha20_xform_setkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/chacha20/extr_chacha-sw.c_chacha20_xform_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chacha_ctx = type { i32 }

@CHACHA_MINKEYLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M_CRYPTO_DATA = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32)* @chacha20_xform_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chacha20_xform_setkey(i32** %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.chacha_ctx*, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @CHACHA_MINKEYLEN, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 32
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %4, align 4
  br label %37

17:                                               ; preds = %12, %3
  %18 = load i32, i32* @M_CRYPTO_DATA, align 4
  %19 = load i32, i32* @M_NOWAIT, align 4
  %20 = load i32, i32* @M_ZERO, align 4
  %21 = or i32 %19, %20
  %22 = call %struct.chacha_ctx* @malloc(i32 4, i32 %18, i32 %21)
  store %struct.chacha_ctx* %22, %struct.chacha_ctx** %8, align 8
  %23 = load %struct.chacha_ctx*, %struct.chacha_ctx** %8, align 8
  %24 = bitcast %struct.chacha_ctx* %23 to i8*
  %25 = bitcast i8* %24 to i32*
  %26 = load i32**, i32*** %5, align 8
  store i32* %25, i32** %26, align 8
  %27 = load %struct.chacha_ctx*, %struct.chacha_ctx** %8, align 8
  %28 = icmp eq %struct.chacha_ctx* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i32, i32* @ENOMEM, align 4
  store i32 %30, i32* %4, align 4
  br label %37

31:                                               ; preds = %17
  %32 = load %struct.chacha_ctx*, %struct.chacha_ctx** %8, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = mul nsw i32 %34, 8
  %36 = call i32 @chacha_keysetup(%struct.chacha_ctx* %32, i32* %33, i32 %35)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %31, %29, %15
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.chacha_ctx* @malloc(i32, i32, i32) #1

declare dso_local i32 @chacha_keysetup(%struct.chacha_ctx*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
