; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_arc4random.c__rs_random_u32.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_arc4random.c__rs_random_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rs_have = common dso_local global i32 0, align 4
@rs_buf = common dso_local global i64 0, align 8
@RSBUFSZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @_rs_random_u32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rs_random_u32(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = call i32 @_rs_stir_if_needed(i32 4)
  %4 = load i32, i32* @rs_have, align 4
  %5 = sext i32 %4 to i64
  %6 = icmp ult i64 %5, 4
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @_rs_rekey(i32* null, i32 0)
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i32*, i32** %2, align 8
  %11 = load i64, i64* @rs_buf, align 8
  %12 = load i64, i64* @RSBUFSZ, align 8
  %13 = add nsw i64 %11, %12
  %14 = load i32, i32* @rs_have, align 4
  %15 = sext i32 %14 to i64
  %16 = sub nsw i64 %13, %15
  %17 = call i32 @memcpy(i32* %10, i64 %16, i32 4)
  %18 = load i64, i64* @rs_buf, align 8
  %19 = load i64, i64* @RSBUFSZ, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i32, i32* @rs_have, align 4
  %22 = sext i32 %21 to i64
  %23 = sub nsw i64 %20, %22
  %24 = call i32 @memset(i64 %23, i32 0, i32 4)
  %25 = load i32, i32* @rs_have, align 4
  %26 = sext i32 %25 to i64
  %27 = sub i64 %26, 4
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* @rs_have, align 4
  ret void
}

declare dso_local i32 @_rs_stir_if_needed(i32) #1

declare dso_local i32 @_rs_rekey(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
