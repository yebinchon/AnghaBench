; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_curve25519.c_fe51_frombytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_curve25519.c_fe51_frombytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MASK51 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @fe51_frombytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fe51_frombytes(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @load_7(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 7
  %14 = call i32 @load_6(i32* %13)
  %15 = shl i32 %14, 5
  store i32 %15, i32* %6, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 13
  %18 = call i32 @load_7(i32* %17)
  %19 = shl i32 %18, 2
  store i32 %19, i32* %7, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 20
  %22 = call i32 @load_6(i32* %21)
  %23 = shl i32 %22, 7
  store i32 %23, i32* %8, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 26
  %26 = call i32 @load_6(i32* %25)
  %27 = sext i32 %26 to i64
  %28 = and i64 %27, 140737488355327
  %29 = shl i64 %28, 4
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %5, align 4
  %32 = ashr i32 %31, 51
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @MASK51, align 4
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = ashr i32 %38, 51
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* @MASK51, align 4
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = ashr i32 %45, 51
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* @MASK51, align 4
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = ashr i32 %52, 51
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* @MASK51, align 4
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32*, i32** %3, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32*, i32** %3, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32*, i32** %3, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32*, i32** %3, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32*, i32** %3, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  store i32 %71, i32* %73, align 4
  ret void
}

declare dso_local i32 @load_7(i32*) #1

declare dso_local i32 @load_6(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
