; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/des/extr_ofb_enc.c_DES_ofb_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/des/extr_ofb_enc.c_DES_ofb_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DES_ENCRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DES_ofb_encrypt(i8* %0, i8* %1, i32 %2, i64 %3, i32* %4, i8** %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca [2 x i32], align 4
  %25 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i8** %5, i8*** %12, align 8
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 7
  %28 = sdiv i32 %27, 8
  store i32 %28, i32* %19, align 4
  %29 = load i64, i64* %10, align 8
  store i64 %29, i64* %22, align 8
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %23, align 4
  %31 = load i32, i32* %23, align 4
  %32 = icmp sgt i32 %31, 64
  br i1 %32, label %33, label %34

33:                                               ; preds = %6
  br label %197

34:                                               ; preds = %6
  %35 = load i32, i32* %23, align 4
  %36 = icmp sgt i32 %35, 32
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  store i32 -1, i32* %20, align 4
  %38 = load i32, i32* %23, align 4
  %39 = icmp sge i32 %38, 64
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* %20, align 4
  store i32 %41, i32* %21, align 4
  br label %49

42:                                               ; preds = %37
  %43 = load i32, i32* %23, align 4
  %44 = sub nsw i32 %43, 32
  %45 = zext i32 %44 to i64
  %46 = shl i64 1, %45
  %47 = sub nsw i64 %46, 1
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %21, align 4
  br label %49

49:                                               ; preds = %42, %40
  br label %61

50:                                               ; preds = %34
  %51 = load i32, i32* %23, align 4
  %52 = icmp eq i32 %51, 32
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 -1, i32* %20, align 4
  br label %60

54:                                               ; preds = %50
  %55 = load i32, i32* %23, align 4
  %56 = zext i32 %55 to i64
  %57 = shl i64 1, %56
  %58 = sub nsw i64 %57, 1
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %20, align 4
  br label %60

60:                                               ; preds = %54, %53
  store i32 0, i32* %21, align 4
  br label %61

61:                                               ; preds = %60, %49
  %62 = load i8**, i8*** %12, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  store i8* %64, i8** %25, align 8
  %65 = load i8*, i8** %25, align 8
  %66 = load i32, i32* %17, align 4
  %67 = call i32 @c2l(i8* %65, i32 %66)
  %68 = load i8*, i8** %25, align 8
  %69 = load i32, i32* %18, align 4
  %70 = call i32 @c2l(i8* %68, i32 %69)
  %71 = load i32, i32* %17, align 4
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %18, align 4
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 1
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %184, %61
  %76 = load i64, i64* %22, align 8
  %77 = add nsw i64 %76, -1
  store i64 %77, i64* %22, align 8
  %78 = icmp sgt i64 %76, 0
  br i1 %78, label %79, label %185

79:                                               ; preds = %75
  %80 = load i32, i32* %17, align 4
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* %18, align 4
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 1
  store i32 %82, i32* %83, align 4
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* @DES_ENCRYPT, align 4
  %87 = call i32 @DES_encrypt1(i32* %84, i32* %85, i32 %86)
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %15, align 4
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %16, align 4
  %92 = load i8*, i8** %7, align 8
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %19, align 4
  %96 = call i32 @c2ln(i8* %92, i32 %93, i32 %94, i32 %95)
  %97 = load i32, i32* %19, align 4
  %98 = load i8*, i8** %7, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8* %100, i8** %7, align 8
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %15, align 4
  %103 = xor i32 %101, %102
  %104 = load i32, i32* %20, align 4
  %105 = and i32 %103, %104
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %16, align 4
  %108 = xor i32 %106, %107
  %109 = load i32, i32* %21, align 4
  %110 = and i32 %108, %109
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load i8*, i8** %8, align 8
  %114 = load i32, i32* %19, align 4
  %115 = call i32 @l2cn(i32 %111, i32 %112, i8* %113, i32 %114)
  %116 = load i32, i32* %19, align 4
  %117 = load i8*, i8** %8, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8* %119, i8** %8, align 8
  %120 = load i32, i32* %23, align 4
  %121 = icmp eq i32 %120, 32
  br i1 %121, label %122, label %125

122:                                              ; preds = %79
  %123 = load i32, i32* %18, align 4
  store i32 %123, i32* %17, align 4
  %124 = load i32, i32* %15, align 4
  store i32 %124, i32* %18, align 4
  br label %184

125:                                              ; preds = %79
  %126 = load i32, i32* %23, align 4
  %127 = icmp eq i32 %126, 64
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32, i32* %15, align 4
  store i32 %129, i32* %17, align 4
  %130 = load i32, i32* %16, align 4
  store i32 %130, i32* %18, align 4
  br label %183

131:                                              ; preds = %125
  %132 = load i32, i32* %23, align 4
  %133 = icmp sgt i32 %132, 32
  br i1 %133, label %134, label %159

134:                                              ; preds = %131
  %135 = load i32, i32* %18, align 4
  %136 = load i32, i32* %23, align 4
  %137 = sub nsw i32 %136, 32
  %138 = ashr i32 %135, %137
  %139 = load i32, i32* %15, align 4
  %140 = load i32, i32* %23, align 4
  %141 = sub nsw i32 64, %140
  %142 = shl i32 %139, %141
  %143 = or i32 %138, %142
  %144 = sext i32 %143 to i64
  %145 = and i64 %144, 4294967295
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %17, align 4
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* %23, align 4
  %149 = sub nsw i32 %148, 32
  %150 = ashr i32 %147, %149
  %151 = load i32, i32* %16, align 4
  %152 = load i32, i32* %23, align 4
  %153 = sub nsw i32 64, %152
  %154 = shl i32 %151, %153
  %155 = or i32 %150, %154
  %156 = sext i32 %155 to i64
  %157 = and i64 %156, 4294967295
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %18, align 4
  br label %182

159:                                              ; preds = %131
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* %23, align 4
  %162 = ashr i32 %160, %161
  %163 = load i32, i32* %18, align 4
  %164 = load i32, i32* %23, align 4
  %165 = sub nsw i32 32, %164
  %166 = shl i32 %163, %165
  %167 = or i32 %162, %166
  %168 = sext i32 %167 to i64
  %169 = and i64 %168, 4294967295
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %17, align 4
  %171 = load i32, i32* %18, align 4
  %172 = load i32, i32* %23, align 4
  %173 = ashr i32 %171, %172
  %174 = load i32, i32* %15, align 4
  %175 = load i32, i32* %23, align 4
  %176 = sub nsw i32 32, %175
  %177 = shl i32 %174, %176
  %178 = or i32 %173, %177
  %179 = sext i32 %178 to i64
  %180 = and i64 %179, 4294967295
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %18, align 4
  br label %182

182:                                              ; preds = %159, %134
  br label %183

183:                                              ; preds = %182, %128
  br label %184

184:                                              ; preds = %183, %122
  br label %75

185:                                              ; preds = %75
  %186 = load i8**, i8*** %12, align 8
  %187 = load i8*, i8** %186, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 0
  store i8* %188, i8** %25, align 8
  %189 = load i32, i32* %17, align 4
  %190 = load i8*, i8** %25, align 8
  %191 = call i32 @l2c(i32 %189, i8* %190)
  %192 = load i32, i32* %18, align 4
  %193 = load i8*, i8** %25, align 8
  %194 = call i32 @l2c(i32 %192, i8* %193)
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  %195 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 1
  store i32 0, i32* %195, align 4
  %196 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  store i32 0, i32* %196, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %197

197:                                              ; preds = %185, %33
  ret void
}

declare dso_local i32 @c2l(i8*, i32) #1

declare dso_local i32 @DES_encrypt1(i32*, i32*, i32) #1

declare dso_local i32 @c2ln(i8*, i32, i32, i32) #1

declare dso_local i32 @l2cn(i32, i32, i8*, i32) #1

declare dso_local i32 @l2c(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
