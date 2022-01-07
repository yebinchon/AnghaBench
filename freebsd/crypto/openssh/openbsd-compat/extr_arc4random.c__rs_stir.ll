; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_arc4random.c__rs_stir.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_arc4random.c__rs_stir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEYSZ = common dso_local global i32 0, align 4
@IVSZ = common dso_local global i32 0, align 4
@rs_initialized = common dso_local global i32 0, align 4
@rs_have = common dso_local global i64 0, align 8
@rs_buf = common dso_local global i32 0, align 4
@RSBUFSZ = common dso_local global i32 0, align 4
@rs_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @_rs_stir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rs_stir() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @KEYSZ, align 4
  %4 = load i32, i32* @IVSZ, align 4
  %5 = add nsw i32 %3, %4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %1, align 8
  %8 = alloca i32, i64 %6, align 16
  store i64 %6, i64* %2, align 8
  %9 = mul nuw i64 4, %6
  %10 = trunc i64 %9 to i32
  %11 = call i32 @getrnd(i32* %8, i32 %10)
  %12 = load i32, i32* @rs_initialized, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %0
  store i32 1, i32* @rs_initialized, align 4
  %15 = mul nuw i64 4, %6
  %16 = trunc i64 %15 to i32
  %17 = call i32 @_rs_init(i32* %8, i32 %16)
  br label %22

18:                                               ; preds = %0
  %19 = mul nuw i64 4, %6
  %20 = trunc i64 %19 to i32
  %21 = call i32 @_rs_rekey(i32* %8, i32 %20)
  br label %22

22:                                               ; preds = %18, %14
  %23 = mul nuw i64 4, %6
  %24 = trunc i64 %23 to i32
  %25 = call i32 @explicit_bzero(i32* %8, i32 %24)
  store i64 0, i64* @rs_have, align 8
  %26 = load i32, i32* @rs_buf, align 4
  %27 = load i32, i32* @RSBUFSZ, align 4
  %28 = call i32 @memset(i32 %26, i32 0, i32 %27)
  store i32 1600000, i32* @rs_count, align 4
  %29 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %29)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getrnd(i32*, i32) #2

declare dso_local i32 @_rs_init(i32*, i32) #2

declare dso_local i32 @_rs_rekey(i32*, i32) #2

declare dso_local i32 @explicit_bzero(i32*, i32) #2

declare dso_local i32 @memset(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
