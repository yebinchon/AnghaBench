; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_ctr128.c_CRYPTO_ctr128_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_ctr128.c_CRYPTO_ctr128_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CRYPTO_ctr128_encrypt(i8* %0, i8* %1, i64 %2, i8* %3, i8* %4, i8* %5, i32* %6, i32 (i8*, i8*, i8*)* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32 (i8*, i8*, i8*)*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 (i8*, i8*, i8*)* %7, i32 (i8*, i8*, i8*)** %16, align 8
  store i64 0, i64* %18, align 8
  %19 = load i32*, i32** %15, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %17, align 4
  br label %21

21:                                               ; preds = %8
  br label %22

22:                                               ; preds = %30, %21
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
  br label %51

51:                                               ; preds = %89, %50
  %52 = load i64, i64* %11, align 8
  %53 = icmp uge i64 %52, 16
  br i1 %53, label %54, label %96

54:                                               ; preds = %51
  %55 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %16, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 %55(i8* %56, i8* %57, i8* %58)
  %60 = load i8*, i8** %13, align 8
  %61 = call i32 @ctr128_inc_aligned(i8* %60)
  store i32 0, i32* %17, align 4
  br label %62

62:                                               ; preds = %84, %54
  %63 = load i32, i32* %17, align 4
  %64 = icmp ult i32 %63, 16
  br i1 %64, label %65, label %89

65:                                               ; preds = %62
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* %17, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = bitcast i8* %69 to i64*
  %71 = load i64, i64* %70, align 8
  %72 = load i8*, i8** %14, align 8
  %73 = load i32, i32* %17, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = bitcast i8* %75 to i64*
  %77 = load i64, i64* %76, align 8
  %78 = xor i64 %71, %77
  %79 = load i8*, i8** %10, align 8
  %80 = load i32, i32* %17, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = bitcast i8* %82 to i64*
  store i64 %78, i64* %83, align 8
  br label %84

84:                                               ; preds = %65
  %85 = load i32, i32* %17, align 4
  %86 = zext i32 %85 to i64
  %87 = add i64 %86, 8
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %17, align 4
  br label %62

89:                                               ; preds = %62
  %90 = load i64, i64* %11, align 8
  %91 = sub i64 %90, 16
  store i64 %91, i64* %11, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 16
  store i8* %93, i8** %10, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 16
  store i8* %95, i8** %9, align 8
  store i32 0, i32* %17, align 4
  br label %51

96:                                               ; preds = %51
  %97 = load i64, i64* %11, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %133

99:                                               ; preds = %96
  %100 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %16, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = load i8*, i8** %14, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = call i32 %100(i8* %101, i8* %102, i8* %103)
  %105 = load i8*, i8** %13, align 8
  %106 = call i32 @ctr128_inc_aligned(i8* %105)
  br label %107

107:                                              ; preds = %111, %99
  %108 = load i64, i64* %11, align 8
  %109 = add i64 %108, -1
  store i64 %109, i64* %11, align 8
  %110 = icmp ne i64 %108, 0
  br i1 %110, label %111, label %132

111:                                              ; preds = %107
  %112 = load i8*, i8** %9, align 8
  %113 = load i32, i32* %17, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = load i8*, i8** %14, align 8
  %119 = load i32, i32* %17, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = xor i32 %117, %123
  %125 = trunc i32 %124 to i8
  %126 = load i8*, i8** %10, align 8
  %127 = load i32, i32* %17, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  store i8 %125, i8* %129, align 1
  %130 = load i32, i32* %17, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %17, align 4
  br label %107

132:                                              ; preds = %107
  br label %133

133:                                              ; preds = %132, %96
  %134 = load i32, i32* %17, align 4
  %135 = load i32*, i32** %15, align 8
  store i32 %134, i32* %135, align 4
  br label %177

136:                                              ; No predecessors!
  br label %137

137:                                              ; preds = %152, %136
  %138 = load i64, i64* %18, align 8
  %139 = load i64, i64* %11, align 8
  %140 = icmp ult i64 %138, %139
  br i1 %140, label %141, label %174

141:                                              ; preds = %137
  %142 = load i32, i32* %17, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %141
  %145 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %16, align 8
  %146 = load i8*, i8** %13, align 8
  %147 = load i8*, i8** %14, align 8
  %148 = load i8*, i8** %12, align 8
  %149 = call i32 %145(i8* %146, i8* %147, i8* %148)
  %150 = load i8*, i8** %13, align 8
  %151 = call i32 @ctr128_inc(i8* %150)
  br label %152

152:                                              ; preds = %144, %141
  %153 = load i8*, i8** %9, align 8
  %154 = load i64, i64* %18, align 8
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = load i8*, i8** %14, align 8
  %159 = load i32, i32* %17, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = xor i32 %157, %163
  %165 = trunc i32 %164 to i8
  %166 = load i8*, i8** %10, align 8
  %167 = load i64, i64* %18, align 8
  %168 = getelementptr inbounds i8, i8* %166, i64 %167
  store i8 %165, i8* %168, align 1
  %169 = load i64, i64* %18, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %18, align 8
  %171 = load i32, i32* %17, align 4
  %172 = add i32 %171, 1
  %173 = urem i32 %172, 16
  store i32 %173, i32* %17, align 4
  br label %137

174:                                              ; preds = %137
  %175 = load i32, i32* %17, align 4
  %176 = load i32*, i32** %15, align 8
  store i32 %175, i32* %176, align 4
  br label %177

177:                                              ; preds = %174, %133
  ret void
}

declare dso_local i32 @ctr128_inc_aligned(i8*) #1

declare dso_local i32 @ctr128_inc(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
