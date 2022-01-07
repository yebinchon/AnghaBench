; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_arc4random.c__rs_random_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_arc4random.c__rs_random_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rs_have = common dso_local global i64 0, align 8
@rs_buf = common dso_local global i64 0, align 8
@RSBUFSZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @_rs_random_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rs_random_buf(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @_rs_stir_if_needed(i64 %9)
  br label %11

11:                                               ; preds = %50, %2
  %12 = load i64, i64* %4, align 8
  %13 = icmp ugt i64 %12, 0
  br i1 %13, label %14, label %51

14:                                               ; preds = %11
  %15 = load i64, i64* @rs_have, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @rs_have, align 8
  %20 = call i64 @MIN(i64 %18, i64 %19)
  store i64 %20, i64* %6, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i64, i64* @rs_buf, align 8
  %23 = load i64, i64* @RSBUFSZ, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i64, i64* @rs_have, align 8
  %26 = sub nsw i64 %24, %25
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @memcpy(i32* %21, i64 %26, i64 %27)
  %29 = load i64, i64* @rs_buf, align 8
  %30 = load i64, i64* @RSBUFSZ, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i64, i64* @rs_have, align 8
  %33 = sub nsw i64 %31, %32
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @memset(i64 %33, i32 0, i64 %34)
  %36 = load i64, i64* %6, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 %36
  store i32* %38, i32** %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %4, align 8
  %41 = sub i64 %40, %39
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @rs_have, align 8
  %44 = sub i64 %43, %42
  store i64 %44, i64* @rs_have, align 8
  br label %45

45:                                               ; preds = %17, %14
  %46 = load i64, i64* @rs_have, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 @_rs_rekey(i32* null, i32 0)
  br label %50

50:                                               ; preds = %48, %45
  br label %11

51:                                               ; preds = %11
  ret void
}

declare dso_local i32 @_rs_stir_if_needed(i64) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @memcpy(i32*, i64, i64) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @_rs_rekey(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
