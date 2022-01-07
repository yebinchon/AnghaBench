; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/idea/extr_i_cbc.c_IDEA_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/idea/extr_i_cbc.c_IDEA_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IDEA_encrypt(i64* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %13 = load i64*, i64** %3, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = lshr i64 %16, 16
  store i64 %17, i64* %6, align 8
  %18 = load i64*, i64** %3, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = lshr i64 %21, 16
  store i64 %22, i64* %8, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32**, i32*** %24, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32* %28, i32** %5, align 8
  %29 = call i32 @E_IDEA(i32 0)
  %30 = call i32 @E_IDEA(i32 1)
  %31 = call i32 @E_IDEA(i32 2)
  %32 = call i32 @E_IDEA(i32 3)
  %33 = call i32 @E_IDEA(i32 4)
  %34 = call i32 @E_IDEA(i32 5)
  %35 = call i32 @E_IDEA(i32 6)
  %36 = call i32 @E_IDEA(i32 7)
  %37 = load i64, i64* %6, align 8
  %38 = and i64 %37, 65535
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @idea_mul(i64 %39, i64 %40, i32 %42, i64 %43)
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %5, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %5, align 8
  %50 = load i32, i32* %48, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %47, %51
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %5, align 8
  %56 = load i32, i32* %54, align 4
  %57 = sext i32 %56 to i64
  %58 = add i64 %53, %57
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %9, align 8
  %60 = and i64 %59, 65535
  store i64 %60, i64* %9, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %12, align 8
  %66 = call i32 @idea_mul(i64 %61, i64 %62, i32 %64, i64 %65)
  %67 = load i64, i64* %10, align 8
  %68 = and i64 %67, 65535
  %69 = load i64, i64* %6, align 8
  %70 = and i64 %69, 65535
  %71 = shl i64 %70, 16
  %72 = or i64 %68, %71
  %73 = load i64*, i64** %3, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  store i64 %72, i64* %74, align 8
  %75 = load i64, i64* %9, align 8
  %76 = and i64 %75, 65535
  %77 = load i64, i64* %11, align 8
  %78 = and i64 %77, 65535
  %79 = shl i64 %78, 16
  %80 = or i64 %76, %79
  %81 = load i64*, i64** %3, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 1
  store i64 %80, i64* %82, align 8
  ret void
}

declare dso_local i32 @E_IDEA(i32) #1

declare dso_local i32 @idea_mul(i64, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
