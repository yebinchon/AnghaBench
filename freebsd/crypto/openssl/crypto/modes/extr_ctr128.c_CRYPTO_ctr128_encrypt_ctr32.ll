; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_ctr128.c_CRYPTO_ctr128_encrypt_ctr32.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_ctr128.c_CRYPTO_ctr128_encrypt_ctr32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CRYPTO_ctr128_encrypt_ctr32(i8* %0, i8* %1, i64 %2, i8* %3, i8* %4, i8* %5, i32* %6, i32 (i8*, i8*, i32, i8*, i8*)* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32 (i8*, i8*, i32, i8*, i8*)*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 (i8*, i8*, i32, i8*, i8*)* %7, i32 (i8*, i8*, i32, i8*, i8*)** %16, align 8
  %20 = load i32*, i32** %15, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %17, align 4
  br label %22

22:                                               ; preds = %30, %8
  %23 = load i32, i32* %17, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i64, i64* %11, align 8
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i1 [ false, %22 ], [ %27, %25 ]
  br i1 %29, label %30, label %50

30:                                               ; preds = %28
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %9, align 8
  %33 = load i8, i8* %31, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8*, i8** %14, align 8
  %36 = load i32, i32* %17, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = xor i32 %34, %40
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %10, align 8
  store i8 %42, i8* %43, align 1
  %45 = load i64, i64* %11, align 8
  %46 = add i64 %45, -1
  store i64 %46, i64* %11, align 8
  %47 = load i32, i32* %17, align 4
  %48 = add i32 %47, 1
  %49 = urem i32 %48, 16
  store i32 %49, i32* %17, align 4
  br label %22

50:                                               ; preds = %28
  %51 = load i8*, i8** %13, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 12
  %53 = call i32 @GETU32(i8* %52)
  store i32 %53, i32* %18, align 4
  br label %54

54:                                               ; preds = %96, %50
  %55 = load i64, i64* %11, align 8
  %56 = icmp uge i64 %55, 16
  br i1 %56, label %57, label %108

57:                                               ; preds = %54
  %58 = load i64, i64* %11, align 8
  %59 = udiv i64 %58, 16
  store i64 %59, i64* %19, align 8
  %60 = load i64, i64* %19, align 8
  %61 = icmp ugt i64 %60, 268435456
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i64 268435456, i64* %19, align 8
  br label %63

63:                                               ; preds = %62, %57
  %64 = load i64, i64* %19, align 8
  %65 = load i32, i32* %18, align 4
  %66 = zext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %18, align 4
  %70 = zext i32 %69 to i64
  %71 = load i64, i64* %19, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %63
  %74 = load i32, i32* %18, align 4
  %75 = zext i32 %74 to i64
  %76 = load i64, i64* %19, align 8
  %77 = sub i64 %76, %75
  store i64 %77, i64* %19, align 8
  store i32 0, i32* %18, align 4
  br label %78

78:                                               ; preds = %73, %63
  %79 = load i32 (i8*, i8*, i32, i8*, i8*)*, i32 (i8*, i8*, i32, i8*, i8*)** %16, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = load i64, i64* %19, align 8
  %83 = trunc i64 %82 to i32
  %84 = load i8*, i8** %12, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = call i32 %79(i8* %80, i8* %81, i32 %83, i8* %84, i8* %85)
  %87 = load i8*, i8** %13, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 12
  %89 = load i32, i32* %18, align 4
  %90 = call i32 @PUTU32(i8* %88, i32 %89)
  %91 = load i32, i32* %18, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %78
  %94 = load i8*, i8** %13, align 8
  %95 = call i32 @ctr96_inc(i8* %94)
  br label %96

96:                                               ; preds = %93, %78
  %97 = load i64, i64* %19, align 8
  %98 = mul i64 %97, 16
  store i64 %98, i64* %19, align 8
  %99 = load i64, i64* %19, align 8
  %100 = load i64, i64* %11, align 8
  %101 = sub i64 %100, %99
  store i64 %101, i64* %11, align 8
  %102 = load i64, i64* %19, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 %102
  store i8* %104, i8** %10, align 8
  %105 = load i64, i64* %19, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 %105
  store i8* %107, i8** %9, align 8
  br label %54

108:                                              ; preds = %54
  %109 = load i64, i64* %11, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %158

111:                                              ; preds = %108
  %112 = load i8*, i8** %14, align 8
  %113 = call i32 @memset(i8* %112, i32 0, i32 16)
  %114 = load i32 (i8*, i8*, i32, i8*, i8*)*, i32 (i8*, i8*, i32, i8*, i8*)** %16, align 8
  %115 = load i8*, i8** %14, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = load i8*, i8** %12, align 8
  %118 = load i8*, i8** %13, align 8
  %119 = call i32 %114(i8* %115, i8* %116, i32 1, i8* %117, i8* %118)
  %120 = load i32, i32* %18, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %18, align 4
  %122 = load i8*, i8** %13, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 12
  %124 = load i32, i32* %18, align 4
  %125 = call i32 @PUTU32(i8* %123, i32 %124)
  %126 = load i32, i32* %18, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %111
  %129 = load i8*, i8** %13, align 8
  %130 = call i32 @ctr96_inc(i8* %129)
  br label %131

131:                                              ; preds = %128, %111
  br label %132

132:                                              ; preds = %136, %131
  %133 = load i64, i64* %11, align 8
  %134 = add i64 %133, -1
  store i64 %134, i64* %11, align 8
  %135 = icmp ne i64 %133, 0
  br i1 %135, label %136, label %157

136:                                              ; preds = %132
  %137 = load i8*, i8** %9, align 8
  %138 = load i32, i32* %17, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = load i8*, i8** %14, align 8
  %144 = load i32, i32* %17, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = xor i32 %142, %148
  %150 = trunc i32 %149 to i8
  %151 = load i8*, i8** %10, align 8
  %152 = load i32, i32* %17, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  store i8 %150, i8* %154, align 1
  %155 = load i32, i32* %17, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %17, align 4
  br label %132

157:                                              ; preds = %132
  br label %158

158:                                              ; preds = %157, %108
  %159 = load i32, i32* %17, align 4
  %160 = load i32*, i32** %15, align 8
  store i32 %159, i32* %160, align 4
  ret void
}

declare dso_local i32 @GETU32(i8*) #1

declare dso_local i32 @PUTU32(i8*, i32) #1

declare dso_local i32 @ctr96_inc(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
