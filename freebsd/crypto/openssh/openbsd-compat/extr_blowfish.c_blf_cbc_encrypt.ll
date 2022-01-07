; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_blowfish.c_blf_cbc_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_blowfish.c_blf_cbc_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blf_cbc_encrypt(i32* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %11, align 8
  br label %13

13:                                               ; preds = %124, %4
  %14 = load i64, i64* %11, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %127

17:                                               ; preds = %13
  store i64 0, i64* %12, align 8
  br label %18

18:                                               ; preds = %31, %17
  %19 = load i64, i64* %12, align 8
  %20 = icmp slt i64 %19, 8
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load i32*, i32** %6, align 8
  %23 = load i64, i64* %12, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i64, i64* %12, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = xor i32 %29, %25
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %21
  %32 = load i64, i64* %12, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %12, align 8
  br label %18

34:                                               ; preds = %18
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 24
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 16
  %43 = or i32 %38, %42
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 8
  %48 = or i32 %43, %47
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %48, %51
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %9, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 24
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 5
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 16
  %62 = or i32 %57, %61
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 6
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 8
  %67 = or i32 %62, %66
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 7
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %67, %70
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %10, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @Blowfish_encipher(i32* %73, i64* %9, i64* %10)
  %75 = load i64, i64* %9, align 8
  %76 = ashr i64 %75, 24
  %77 = and i64 %76, 255
  %78 = trunc i64 %77 to i32
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 %78, i32* %80, align 4
  %81 = load i64, i64* %9, align 8
  %82 = ashr i64 %81, 16
  %83 = and i64 %82, 255
  %84 = trunc i64 %83 to i32
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  store i32 %84, i32* %86, align 4
  %87 = load i64, i64* %9, align 8
  %88 = ashr i64 %87, 8
  %89 = and i64 %88, 255
  %90 = trunc i64 %89 to i32
  %91 = load i32*, i32** %7, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  store i32 %90, i32* %92, align 4
  %93 = load i64, i64* %9, align 8
  %94 = and i64 %93, 255
  %95 = trunc i64 %94 to i32
  %96 = load i32*, i32** %7, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  store i32 %95, i32* %97, align 4
  %98 = load i64, i64* %10, align 8
  %99 = ashr i64 %98, 24
  %100 = and i64 %99, 255
  %101 = trunc i64 %100 to i32
  %102 = load i32*, i32** %7, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 4
  store i32 %101, i32* %103, align 4
  %104 = load i64, i64* %10, align 8
  %105 = ashr i64 %104, 16
  %106 = and i64 %105, 255
  %107 = trunc i64 %106 to i32
  %108 = load i32*, i32** %7, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 5
  store i32 %107, i32* %109, align 4
  %110 = load i64, i64* %10, align 8
  %111 = ashr i64 %110, 8
  %112 = and i64 %111, 255
  %113 = trunc i64 %112 to i32
  %114 = load i32*, i32** %7, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 6
  store i32 %113, i32* %115, align 4
  %116 = load i64, i64* %10, align 8
  %117 = and i64 %116, 255
  %118 = trunc i64 %117 to i32
  %119 = load i32*, i32** %7, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 7
  store i32 %118, i32* %120, align 4
  %121 = load i32*, i32** %7, align 8
  store i32* %121, i32** %6, align 8
  %122 = load i32*, i32** %7, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 8
  store i32* %123, i32** %7, align 8
  br label %124

124:                                              ; preds = %34
  %125 = load i64, i64* %11, align 8
  %126 = add nsw i64 %125, 8
  store i64 %126, i64* %11, align 8
  br label %13

127:                                              ; preds = %13
  ret void
}

declare dso_local i32 @Blowfish_encipher(i32*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
