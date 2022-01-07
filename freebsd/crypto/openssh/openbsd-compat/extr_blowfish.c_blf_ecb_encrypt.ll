; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_blowfish.c_blf_ecb_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_blowfish.c_blf_ecb_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blf_ecb_encrypt(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %103, %3
  %11 = load i64, i64* %9, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %106

14:                                               ; preds = %10
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 24
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 16
  %23 = or i32 %18, %22
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 8
  %28 = or i32 %23, %27
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %28, %31
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %7, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 24
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 5
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 16
  %42 = or i32 %37, %41
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 6
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 8
  %47 = or i32 %42, %46
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 7
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %47, %50
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %8, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @Blowfish_encipher(i32* %53, i64* %7, i64* %8)
  %55 = load i64, i64* %7, align 8
  %56 = ashr i64 %55, 24
  %57 = and i64 %56, 255
  %58 = trunc i64 %57 to i32
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %58, i32* %60, align 4
  %61 = load i64, i64* %7, align 8
  %62 = ashr i64 %61, 16
  %63 = and i64 %62, 255
  %64 = trunc i64 %63 to i32
  %65 = load i32*, i32** %5, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 %64, i32* %66, align 4
  %67 = load i64, i64* %7, align 8
  %68 = ashr i64 %67, 8
  %69 = and i64 %68, 255
  %70 = trunc i64 %69 to i32
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  store i32 %70, i32* %72, align 4
  %73 = load i64, i64* %7, align 8
  %74 = and i64 %73, 255
  %75 = trunc i64 %74 to i32
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  store i32 %75, i32* %77, align 4
  %78 = load i64, i64* %8, align 8
  %79 = ashr i64 %78, 24
  %80 = and i64 %79, 255
  %81 = trunc i64 %80 to i32
  %82 = load i32*, i32** %5, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 4
  store i32 %81, i32* %83, align 4
  %84 = load i64, i64* %8, align 8
  %85 = ashr i64 %84, 16
  %86 = and i64 %85, 255
  %87 = trunc i64 %86 to i32
  %88 = load i32*, i32** %5, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 5
  store i32 %87, i32* %89, align 4
  %90 = load i64, i64* %8, align 8
  %91 = ashr i64 %90, 8
  %92 = and i64 %91, 255
  %93 = trunc i64 %92 to i32
  %94 = load i32*, i32** %5, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 6
  store i32 %93, i32* %95, align 4
  %96 = load i64, i64* %8, align 8
  %97 = and i64 %96, 255
  %98 = trunc i64 %97 to i32
  %99 = load i32*, i32** %5, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 7
  store i32 %98, i32* %100, align 4
  %101 = load i32*, i32** %5, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 8
  store i32* %102, i32** %5, align 8
  br label %103

103:                                              ; preds = %14
  %104 = load i64, i64* %9, align 8
  %105 = add nsw i64 %104, 8
  store i64 %105, i64* %9, align 8
  br label %10

106:                                              ; preds = %10
  ret void
}

declare dso_local i32 @Blowfish_encipher(i32*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
