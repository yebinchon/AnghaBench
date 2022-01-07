; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_arc4random.c__rs_rekey.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_arc4random.c__rs_rekey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rs_buf = common dso_local global i32* null, align 8
@RSBUFSZ = common dso_local global i64 0, align 8
@rs = common dso_local global i32 0, align 4
@KEYSZ = common dso_local global i64 0, align 8
@IVSZ = common dso_local global i64 0, align 8
@rs_have = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @_rs_rekey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rs_rekey(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32*, i32** @rs_buf, align 8
  %8 = load i64, i64* @RSBUFSZ, align 8
  %9 = call i32 @memset(i32* %7, i32 0, i64 %8)
  %10 = load i32*, i32** @rs_buf, align 8
  %11 = load i32*, i32** @rs_buf, align 8
  %12 = load i64, i64* @RSBUFSZ, align 8
  %13 = call i32 @chacha_encrypt_bytes(i32* @rs, i32* %10, i32* %11, i64 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %40

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @KEYSZ, align 8
  %19 = load i64, i64* @IVSZ, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i64 @MIN(i64 %17, i64 %20)
  store i64 %21, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %22

22:                                               ; preds = %36, %16
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = load i32*, i32** %3, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** @rs_buf, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = xor i32 %34, %30
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %26
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %5, align 8
  br label %22

39:                                               ; preds = %22
  br label %40

40:                                               ; preds = %39, %2
  %41 = load i32*, i32** @rs_buf, align 8
  %42 = load i64, i64* @KEYSZ, align 8
  %43 = load i64, i64* @IVSZ, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @_rs_init(i32* %41, i64 %44)
  %46 = load i32*, i32** @rs_buf, align 8
  %47 = load i64, i64* @KEYSZ, align 8
  %48 = load i64, i64* @IVSZ, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @memset(i32* %46, i32 0, i64 %49)
  %51 = load i64, i64* @RSBUFSZ, align 8
  %52 = load i64, i64* @KEYSZ, align 8
  %53 = sub nsw i64 %51, %52
  %54 = load i64, i64* @IVSZ, align 8
  %55 = sub nsw i64 %53, %54
  store i64 %55, i64* @rs_have, align 8
  ret void
}

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @chacha_encrypt_bytes(i32*, i32*, i32*, i64) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @_rs_init(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
