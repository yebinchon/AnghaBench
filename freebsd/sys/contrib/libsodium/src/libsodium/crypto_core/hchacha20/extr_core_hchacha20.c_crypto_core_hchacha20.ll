; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_core/hchacha20/extr_core_hchacha20.c_crypto_core_hchacha20.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_core/hchacha20/extr_core_hchacha20.c_crypto_core_hchacha20.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_core_hchacha20(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i32 1634760805, i32* %10, align 4
  store i32 857760878, i32* %11, align 4
  store i32 2036477234, i32* %12, align 4
  store i32 1797285236, i32* %13, align 4
  br label %42

29:                                               ; preds = %4
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = call i32 @LOAD32_LE(i8* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 4
  %35 = call i32 @LOAD32_LE(i8* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 8
  %38 = call i32 @LOAD32_LE(i8* %37)
  store i32 %38, i32* %12, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 12
  %41 = call i32 @LOAD32_LE(i8* %40)
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %29, %28
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = call i32 @LOAD32_LE(i8* %44)
  store i32 %45, i32* %14, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 4
  %48 = call i32 @LOAD32_LE(i8* %47)
  store i32 %48, i32* %15, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 8
  %51 = call i32 @LOAD32_LE(i8* %50)
  store i32 %51, i32* %16, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 12
  %54 = call i32 @LOAD32_LE(i8* %53)
  store i32 %54, i32* %17, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 16
  %57 = call i32 @LOAD32_LE(i8* %56)
  store i32 %57, i32* %18, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 20
  %60 = call i32 @LOAD32_LE(i8* %59)
  store i32 %60, i32* %19, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 24
  %63 = call i32 @LOAD32_LE(i8* %62)
  store i32 %63, i32* %20, align 4
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 28
  %66 = call i32 @LOAD32_LE(i8* %65)
  store i32 %66, i32* %21, align 4
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = call i32 @LOAD32_LE(i8* %68)
  store i32 %69, i32* %22, align 4
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 4
  %72 = call i32 @LOAD32_LE(i8* %71)
  store i32 %72, i32* %23, align 4
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 8
  %75 = call i32 @LOAD32_LE(i8* %74)
  store i32 %75, i32* %24, align 4
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 12
  %78 = call i32 @LOAD32_LE(i8* %77)
  store i32 %78, i32* %25, align 4
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %123, %42
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %80, 10
  br i1 %81, label %82, label %126

82:                                               ; preds = %79
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %22, align 4
  %87 = call i32 @QUARTERROUND(i32 %83, i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %19, align 4
  %91 = load i32, i32* %23, align 4
  %92 = call i32 @QUARTERROUND(i32 %88, i32 %89, i32 %90, i32 %91)
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %20, align 4
  %96 = load i32, i32* %24, align 4
  %97 = call i32 @QUARTERROUND(i32 %93, i32 %94, i32 %95, i32 %96)
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* %21, align 4
  %101 = load i32, i32* %25, align 4
  %102 = call i32 @QUARTERROUND(i32 %98, i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %20, align 4
  %106 = load i32, i32* %25, align 4
  %107 = call i32 @QUARTERROUND(i32 %103, i32 %104, i32 %105, i32 %106)
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %21, align 4
  %111 = load i32, i32* %22, align 4
  %112 = call i32 @QUARTERROUND(i32 %108, i32 %109, i32 %110, i32 %111)
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* %23, align 4
  %117 = call i32 @QUARTERROUND(i32 %113, i32 %114, i32 %115, i32 %116)
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %19, align 4
  %121 = load i32, i32* %24, align 4
  %122 = call i32 @QUARTERROUND(i32 %118, i32 %119, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %82
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  br label %79

126:                                              ; preds = %79
  %127 = load i8*, i8** %5, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 0
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @STORE32_LE(i8* %128, i32 %129)
  %131 = load i8*, i8** %5, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 4
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @STORE32_LE(i8* %132, i32 %133)
  %135 = load i8*, i8** %5, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 8
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @STORE32_LE(i8* %136, i32 %137)
  %139 = load i8*, i8** %5, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 12
  %141 = load i32, i32* %13, align 4
  %142 = call i32 @STORE32_LE(i8* %140, i32 %141)
  %143 = load i8*, i8** %5, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 16
  %145 = load i32, i32* %22, align 4
  %146 = call i32 @STORE32_LE(i8* %144, i32 %145)
  %147 = load i8*, i8** %5, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 20
  %149 = load i32, i32* %23, align 4
  %150 = call i32 @STORE32_LE(i8* %148, i32 %149)
  %151 = load i8*, i8** %5, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 24
  %153 = load i32, i32* %24, align 4
  %154 = call i32 @STORE32_LE(i8* %152, i32 %153)
  %155 = load i8*, i8** %5, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 28
  %157 = load i32, i32* %25, align 4
  %158 = call i32 @STORE32_LE(i8* %156, i32 %157)
  ret i32 0
}

declare dso_local i32 @LOAD32_LE(i8*) #1

declare dso_local i32 @QUARTERROUND(i32, i32, i32, i32) #1

declare dso_local i32 @STORE32_LE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
