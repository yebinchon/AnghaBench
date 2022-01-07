; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_pbe_scrypt.c_scryptROMix.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_pbe_scrypt.c_scryptROMix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32*, i32*, i32*)* @scryptROMix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scryptROMix(i8* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %19 = load i32*, i32** %12, align 8
  store i32* %19, i32** %14, align 8
  store i32 0, i32* %15, align 4
  %20 = load i8*, i8** %7, align 8
  store i8* %20, i8** %13, align 8
  br label %21

21:                                               ; preds = %56, %6
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* %8, align 4
  %24 = mul nsw i32 32, %23
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %61

26:                                               ; preds = %21
  %27 = load i8*, i8** %13, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %13, align 8
  %29 = load i8, i8* %27, align 1
  %30 = zext i8 %29 to i32
  %31 = load i32*, i32** %14, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i8*, i8** %13, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %13, align 8
  %34 = load i8, i8* %32, align 1
  %35 = zext i8 %34 to i32
  %36 = shl i32 %35, 8
  %37 = load i32*, i32** %14, align 8
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 4
  %40 = load i8*, i8** %13, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %13, align 8
  %42 = load i8, i8* %40, align 1
  %43 = zext i8 %42 to i32
  %44 = shl i32 %43, 16
  %45 = load i32*, i32** %14, align 8
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 4
  %48 = load i8*, i8** %13, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %13, align 8
  %50 = load i8, i8* %48, align 1
  %51 = zext i8 %50 to i32
  %52 = shl i32 %51, 24
  %53 = load i32*, i32** %14, align 8
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %26
  %57 = load i32, i32* %15, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %15, align 4
  %59 = load i32*, i32** %14, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %14, align 8
  br label %21

61:                                               ; preds = %21
  store i32 1, i32* %15, align 4
  br label %62

62:                                               ; preds = %76, %61
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %62
  %67 = load i32*, i32** %14, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = load i32, i32* %8, align 4
  %70 = mul nsw i32 32, %69
  %71 = sext i32 %70 to i64
  %72 = sub i64 0, %71
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @scryptBlockMix(i32* %67, i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %66
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %8, align 4
  %80 = mul nsw i32 32, %79
  %81 = load i32*, i32** %14, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %14, align 8
  br label %62

84:                                               ; preds = %62
  %85 = load i32*, i32** %10, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sub nsw i32 %87, 1
  %89 = mul nsw i32 %88, 32
  %90 = load i32, i32* %8, align 4
  %91 = mul nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %86, i64 %92
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @scryptBlockMix(i32* %85, i32* %93, i32 %94)
  store i32 0, i32* %15, align 4
  br label %96

96:                                               ; preds = %145, %84
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %148

100:                                              ; preds = %96
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* %8, align 4
  %103 = mul nsw i32 2, %102
  %104 = sub nsw i32 %103, 1
  %105 = mul nsw i32 16, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %101, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %9, align 4
  %110 = srem i32 %108, %109
  store i32 %110, i32* %17, align 4
  %111 = load i32*, i32** %12, align 8
  %112 = load i32, i32* %8, align 4
  %113 = mul nsw i32 32, %112
  %114 = load i32, i32* %17, align 4
  %115 = mul nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %111, i64 %116
  store i32* %117, i32** %14, align 8
  store i32 0, i32* %16, align 4
  br label %118

118:                                              ; preds = %137, %100
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* %8, align 4
  %121 = mul nsw i32 32, %120
  %122 = icmp slt i32 %119, %121
  br i1 %122, label %123, label %140

123:                                              ; preds = %118
  %124 = load i32*, i32** %10, align 8
  %125 = load i32, i32* %16, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %14, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %14, align 8
  %131 = load i32, i32* %129, align 4
  %132 = xor i32 %128, %131
  %133 = load i32*, i32** %11, align 8
  %134 = load i32, i32* %16, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %132, i32* %136, align 4
  br label %137

137:                                              ; preds = %123
  %138 = load i32, i32* %16, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %16, align 4
  br label %118

140:                                              ; preds = %118
  %141 = load i32*, i32** %10, align 8
  %142 = load i32*, i32** %11, align 8
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @scryptBlockMix(i32* %141, i32* %142, i32 %143)
  br label %145

145:                                              ; preds = %140
  %146 = load i32, i32* %15, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %15, align 4
  br label %96

148:                                              ; preds = %96
  store i32 0, i32* %15, align 4
  %149 = load i8*, i8** %7, align 8
  store i8* %149, i8** %13, align 8
  br label %150

150:                                              ; preds = %184, %148
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %8, align 4
  %153 = mul nsw i32 32, %152
  %154 = icmp slt i32 %151, %153
  br i1 %154, label %155, label %187

155:                                              ; preds = %150
  %156 = load i32*, i32** %10, align 8
  %157 = load i32, i32* %15, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %18, align 4
  %161 = load i32, i32* %18, align 4
  %162 = and i32 %161, 255
  %163 = trunc i32 %162 to i8
  %164 = load i8*, i8** %13, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %13, align 8
  store i8 %163, i8* %164, align 1
  %166 = load i32, i32* %18, align 4
  %167 = ashr i32 %166, 8
  %168 = and i32 %167, 255
  %169 = trunc i32 %168 to i8
  %170 = load i8*, i8** %13, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %13, align 8
  store i8 %169, i8* %170, align 1
  %172 = load i32, i32* %18, align 4
  %173 = ashr i32 %172, 16
  %174 = and i32 %173, 255
  %175 = trunc i32 %174 to i8
  %176 = load i8*, i8** %13, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %13, align 8
  store i8 %175, i8* %176, align 1
  %178 = load i32, i32* %18, align 4
  %179 = ashr i32 %178, 24
  %180 = and i32 %179, 255
  %181 = trunc i32 %180 to i8
  %182 = load i8*, i8** %13, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %13, align 8
  store i8 %181, i8* %182, align 1
  br label %184

184:                                              ; preds = %155
  %185 = load i32, i32* %15, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %15, align 4
  br label %150

187:                                              ; preds = %150
  ret void
}

declare dso_local i32 @scryptBlockMix(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
