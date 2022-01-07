; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_core/ed25519/ref10/extr_ed25519_ref10.c_ge25519_scalarmult.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_core/ed25519/ref10/extr_ed25519_ref10.c_ge25519_scalarmult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ge25519_scalarmult(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [64 x i8], align 16
  %8 = alloca i8, align 1
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
  %25 = alloca [8 x i32], align 16
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i64 0, i64 0
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @ge25519_p3_to_cached(i32* %28, i32* %29)
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @ge25519_p3_dbl(i32* %11, i32* %31)
  %33 = call i32 @ge25519_p1p1_to_p3(i32* %18, i32* %11)
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i64 0, i64 1
  %35 = call i32 @ge25519_p3_to_cached(i32* %34, i32* %18)
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i64 0, i64 1
  %38 = call i32 @ge25519_add(i32* %12, i32* %36, i32* %37)
  %39 = call i32 @ge25519_p1p1_to_p3(i32* %19, i32* %12)
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i64 0, i64 2
  %41 = call i32 @ge25519_p3_to_cached(i32* %40, i32* %19)
  %42 = call i32 @ge25519_p3_dbl(i32* %13, i32* %18)
  %43 = call i32 @ge25519_p1p1_to_p3(i32* %20, i32* %13)
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i64 0, i64 3
  %45 = call i32 @ge25519_p3_to_cached(i32* %44, i32* %20)
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i64 0, i64 3
  %48 = call i32 @ge25519_add(i32* %14, i32* %46, i32* %47)
  %49 = call i32 @ge25519_p1p1_to_p3(i32* %21, i32* %14)
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i64 0, i64 4
  %51 = call i32 @ge25519_p3_to_cached(i32* %50, i32* %21)
  %52 = call i32 @ge25519_p3_dbl(i32* %15, i32* %19)
  %53 = call i32 @ge25519_p1p1_to_p3(i32* %22, i32* %15)
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i64 0, i64 5
  %55 = call i32 @ge25519_p3_to_cached(i32* %54, i32* %22)
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i64 0, i64 5
  %58 = call i32 @ge25519_add(i32* %16, i32* %56, i32* %57)
  %59 = call i32 @ge25519_p1p1_to_p3(i32* %23, i32* %16)
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i64 0, i64 6
  %61 = call i32 @ge25519_p3_to_cached(i32* %60, i32* %23)
  %62 = call i32 @ge25519_p3_dbl(i32* %17, i32* %20)
  %63 = call i32 @ge25519_p1p1_to_p3(i32* %24, i32* %17)
  %64 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i64 0, i64 7
  %65 = call i32 @ge25519_p3_to_cached(i32* %64, i32* %24)
  store i32 0, i32* %27, align 4
  br label %66

66:                                               ; preds = %98, %3
  %67 = load i32, i32* %27, align 4
  %68 = icmp slt i32 %67, 32
  br i1 %68, label %69, label %101

69:                                               ; preds = %66
  %70 = load i8*, i8** %5, align 8
  %71 = load i32, i32* %27, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = ashr i32 %75, 0
  %77 = and i32 %76, 15
  %78 = trunc i32 %77 to i8
  %79 = load i32, i32* %27, align 4
  %80 = mul nsw i32 2, %79
  %81 = add nsw i32 %80, 0
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 %82
  store i8 %78, i8* %83, align 1
  %84 = load i8*, i8** %5, align 8
  %85 = load i32, i32* %27, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = ashr i32 %89, 4
  %91 = and i32 %90, 15
  %92 = trunc i32 %91 to i8
  %93 = load i32, i32* %27, align 4
  %94 = mul nsw i32 2, %93
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 %96
  store i8 %92, i8* %97, align 1
  br label %98

98:                                               ; preds = %69
  %99 = load i32, i32* %27, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %27, align 4
  br label %66

101:                                              ; preds = %66
  store i8 0, i8* %8, align 1
  store i32 0, i32* %27, align 4
  br label %102

102:                                              ; preds = %136, %101
  %103 = load i32, i32* %27, align 4
  %104 = icmp slt i32 %103, 63
  br i1 %104, label %105, label %139

105:                                              ; preds = %102
  %106 = load i8, i8* %8, align 1
  %107 = sext i8 %106 to i32
  %108 = load i32, i32* %27, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = add nsw i32 %112, %107
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %110, align 1
  %115 = load i32, i32* %27, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = add nsw i32 %119, 8
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %8, align 1
  %122 = load i8, i8* %8, align 1
  %123 = sext i8 %122 to i32
  %124 = ashr i32 %123, 4
  %125 = trunc i32 %124 to i8
  store i8 %125, i8* %8, align 1
  %126 = load i8, i8* %8, align 1
  %127 = sext i8 %126 to i32
  %128 = mul nsw i32 %127, 16
  %129 = load i32, i32* %27, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = sub nsw i32 %133, %128
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %131, align 1
  br label %136

136:                                              ; preds = %105
  %137 = load i32, i32* %27, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %27, align 4
  br label %102

139:                                              ; preds = %102
  %140 = load i8, i8* %8, align 1
  %141 = sext i8 %140 to i32
  %142 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 63
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = add nsw i32 %144, %141
  %146 = trunc i32 %145 to i8
  store i8 %146, i8* %142, align 1
  %147 = load i32*, i32** %4, align 8
  %148 = call i32 @ge25519_p3_0(i32* %147)
  store i32 63, i32* %27, align 4
  br label %149

149:                                              ; preds = %171, %139
  %150 = load i32, i32* %27, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %174

152:                                              ; preds = %149
  %153 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i64 0, i64 0
  %154 = load i32, i32* %27, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = call i32 @ge25519_select_cached(i32* %26, i32* %153, i8 signext %157)
  %159 = load i32*, i32** %4, align 8
  %160 = call i32 @ge25519_add(i32* %9, i32* %159, i32* %26)
  %161 = call i32 @ge25519_p1p1_to_p2(i32* %10, i32* %9)
  %162 = call i32 @ge25519_p2_dbl(i32* %9, i32* %10)
  %163 = call i32 @ge25519_p1p1_to_p2(i32* %10, i32* %9)
  %164 = call i32 @ge25519_p2_dbl(i32* %9, i32* %10)
  %165 = call i32 @ge25519_p1p1_to_p2(i32* %10, i32* %9)
  %166 = call i32 @ge25519_p2_dbl(i32* %9, i32* %10)
  %167 = call i32 @ge25519_p1p1_to_p2(i32* %10, i32* %9)
  %168 = call i32 @ge25519_p2_dbl(i32* %9, i32* %10)
  %169 = load i32*, i32** %4, align 8
  %170 = call i32 @ge25519_p1p1_to_p3(i32* %169, i32* %9)
  br label %171

171:                                              ; preds = %152
  %172 = load i32, i32* %27, align 4
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* %27, align 4
  br label %149

174:                                              ; preds = %149
  %175 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i64 0, i64 0
  %176 = load i32, i32* %27, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = call i32 @ge25519_select_cached(i32* %26, i32* %175, i8 signext %179)
  %181 = load i32*, i32** %4, align 8
  %182 = call i32 @ge25519_add(i32* %9, i32* %181, i32* %26)
  %183 = load i32*, i32** %4, align 8
  %184 = call i32 @ge25519_p1p1_to_p3(i32* %183, i32* %9)
  ret void
}

declare dso_local i32 @ge25519_p3_to_cached(i32*, i32*) #1

declare dso_local i32 @ge25519_p3_dbl(i32*, i32*) #1

declare dso_local i32 @ge25519_p1p1_to_p3(i32*, i32*) #1

declare dso_local i32 @ge25519_add(i32*, i32*, i32*) #1

declare dso_local i32 @ge25519_p3_0(i32*) #1

declare dso_local i32 @ge25519_select_cached(i32*, i32*, i8 signext) #1

declare dso_local i32 @ge25519_p1p1_to_p2(i32*, i32*) #1

declare dso_local i32 @ge25519_p2_dbl(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
