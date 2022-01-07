; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_cts128.c_CRYPTO_nistcts128_decrypt_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_cts128.c_CRYPTO_nistcts128_decrypt_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64, [24 x i8] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CRYPTO_nistcts128_decrypt_block(i8* %0, i8* %1, i64 %2, i8* %3, i8* %4, i32 (i8*, i8*, i8*)* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32 (i8*, i8*, i8*)*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %union.anon, align 8
  %17 = alloca i8, align 1
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 (i8*, i8*, i8*)* %5, i32 (i8*, i8*, i8*)** %13, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp ult i64 %18, 16
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %155

21:                                               ; preds = %6
  %22 = load i64, i64* %10, align 8
  %23 = urem i64 %22, 16
  store i64 %23, i64* %14, align 8
  %24 = load i64, i64* %14, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %13, align 8
  %33 = call i32 @CRYPTO_cbc128_decrypt(i8* %27, i8* %28, i64 %29, i8* %30, i8* %31, i32 (i8*, i8*, i8*)* %32)
  %34 = load i64, i64* %10, align 8
  store i64 %34, i64* %7, align 8
  br label %155

35:                                               ; preds = %21
  %36 = load i64, i64* %14, align 8
  %37 = add i64 16, %36
  %38 = load i64, i64* %10, align 8
  %39 = sub i64 %38, %37
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %35
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %13, align 8
  %49 = call i32 @CRYPTO_cbc128_decrypt(i8* %43, i8* %44, i64 %45, i8* %46, i8* %47, i32 (i8*, i8*, i8*)* %48)
  %50 = load i64, i64* %10, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 %50
  store i8* %52, i8** %8, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 %53
  store i8* %55, i8** %9, align 8
  br label %56

56:                                               ; preds = %42, %35
  %57 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %13, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i64, i64* %14, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = bitcast %union.anon* %16 to [32 x i8]*
  %62 = getelementptr inbounds [32 x i8], [32 x i8]* %61, i64 0, i64 0
  %63 = getelementptr inbounds i8, i8* %62, i64 16
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 %57(i8* %60, i8* %63, i8* %64)
  %66 = bitcast %union.anon* %16 to [32 x i8]*
  %67 = getelementptr inbounds [32 x i8], [32 x i8]* %66, i64 0, i64 0
  %68 = bitcast %union.anon* %16 to [32 x i8]*
  %69 = getelementptr inbounds [32 x i8], [32 x i8]* %68, i64 0, i64 0
  %70 = getelementptr inbounds i8, i8* %69, i64 16
  %71 = call i32 @memcpy(i8* %67, i8* %70, i64 16)
  %72 = bitcast %union.anon* %16 to [32 x i8]*
  %73 = getelementptr inbounds [32 x i8], [32 x i8]* %72, i64 0, i64 0
  %74 = load i8*, i8** %8, align 8
  %75 = load i64, i64* %14, align 8
  %76 = call i32 @memcpy(i8* %73, i8* %74, i64 %75)
  %77 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %13, align 8
  %78 = bitcast %union.anon* %16 to [32 x i8]*
  %79 = getelementptr inbounds [32 x i8], [32 x i8]* %78, i64 0, i64 0
  %80 = bitcast %union.anon* %16 to [32 x i8]*
  %81 = getelementptr inbounds [32 x i8], [32 x i8]* %80, i64 0, i64 0
  %82 = load i8*, i8** %11, align 8
  %83 = call i32 %77(i8* %79, i8* %81, i8* %82)
  store i64 0, i64* %15, align 8
  br label %84

84:                                               ; preds = %120, %56
  %85 = load i64, i64* %15, align 8
  %86 = icmp ult i64 %85, 16
  br i1 %86, label %87, label %123

87:                                               ; preds = %84
  %88 = load i8*, i8** %8, align 8
  %89 = load i64, i64* %15, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  %91 = load i8, i8* %90, align 1
  store i8 %91, i8* %17, align 1
  %92 = bitcast %union.anon* %16 to [32 x i8]*
  %93 = load i64, i64* %15, align 8
  %94 = getelementptr inbounds [32 x i8], [32 x i8]* %92, i64 0, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = load i8*, i8** %12, align 8
  %98 = load i64, i64* %15, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = xor i32 %96, %101
  %103 = trunc i32 %102 to i8
  %104 = load i8*, i8** %9, align 8
  %105 = load i64, i64* %15, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8 %103, i8* %106, align 1
  %107 = load i8*, i8** %8, align 8
  %108 = load i64, i64* %15, align 8
  %109 = load i64, i64* %14, align 8
  %110 = add i64 %108, %109
  %111 = getelementptr inbounds i8, i8* %107, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = load i8*, i8** %12, align 8
  %114 = load i64, i64* %15, align 8
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  store i8 %112, i8* %115, align 1
  %116 = load i8, i8* %17, align 1
  %117 = bitcast %union.anon* %16 to [32 x i8]*
  %118 = load i64, i64* %15, align 8
  %119 = getelementptr inbounds [32 x i8], [32 x i8]* %117, i64 0, i64 %118
  store i8 %116, i8* %119, align 1
  br label %120

120:                                              ; preds = %87
  %121 = load i64, i64* %15, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %15, align 8
  br label %84

123:                                              ; preds = %84
  %124 = load i64, i64* %14, align 8
  %125 = add i64 %124, 16
  store i64 %125, i64* %14, align 8
  br label %126

126:                                              ; preds = %147, %123
  %127 = load i64, i64* %15, align 8
  %128 = load i64, i64* %14, align 8
  %129 = icmp ult i64 %127, %128
  br i1 %129, label %130, label %150

130:                                              ; preds = %126
  %131 = bitcast %union.anon* %16 to [32 x i8]*
  %132 = load i64, i64* %15, align 8
  %133 = getelementptr inbounds [32 x i8], [32 x i8]* %131, i64 0, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = bitcast %union.anon* %16 to [32 x i8]*
  %137 = load i64, i64* %15, align 8
  %138 = sub i64 %137, 16
  %139 = getelementptr inbounds [32 x i8], [32 x i8]* %136, i64 0, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = xor i32 %135, %141
  %143 = trunc i32 %142 to i8
  %144 = load i8*, i8** %9, align 8
  %145 = load i64, i64* %15, align 8
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  store i8 %143, i8* %146, align 1
  br label %147

147:                                              ; preds = %130
  %148 = load i64, i64* %15, align 8
  %149 = add i64 %148, 1
  store i64 %149, i64* %15, align 8
  br label %126

150:                                              ; preds = %126
  %151 = load i64, i64* %10, align 8
  %152 = add i64 16, %151
  %153 = load i64, i64* %14, align 8
  %154 = add i64 %152, %153
  store i64 %154, i64* %7, align 8
  br label %155

155:                                              ; preds = %150, %26, %20
  %156 = load i64, i64* %7, align 8
  ret i64 %156
}

declare dso_local i32 @CRYPTO_cbc128_decrypt(i8*, i8*, i64, i8*, i8*, i32 (i8*, i8*, i8*)*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
