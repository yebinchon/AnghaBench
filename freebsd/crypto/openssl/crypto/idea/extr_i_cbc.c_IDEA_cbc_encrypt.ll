; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/idea/extr_i_cbc.c_IDEA_cbc_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/idea/extr_i_cbc.c_IDEA_cbc_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IDEA_cbc_encrypt(i8* %0, i8* %1, i64 %2, i32* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca [2 x i64], align 16
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %21 = load i64, i64* %9, align 8
  store i64 %21, i64* %19, align 8
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %111

24:                                               ; preds = %6
  %25 = load i8*, i8** %11, align 8
  %26 = load i64, i64* %15, align 8
  %27 = call i32 @n2l(i8* %25, i64 %26)
  %28 = load i8*, i8** %11, align 8
  %29 = load i64, i64* %16, align 8
  %30 = call i32 @n2l(i8* %28, i64 %29)
  %31 = load i8*, i8** %11, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 -8
  store i8* %32, i8** %11, align 8
  %33 = load i64, i64* %19, align 8
  %34 = sub nsw i64 %33, 8
  store i64 %34, i64* %19, align 8
  br label %35

35:                                               ; preds = %68, %24
  %36 = load i64, i64* %19, align 8
  %37 = icmp sge i64 %36, 0
  br i1 %37, label %38, label %71

38:                                               ; preds = %35
  %39 = load i8*, i8** %7, align 8
  %40 = load i64, i64* %13, align 8
  %41 = call i32 @n2l(i8* %39, i64 %40)
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %14, align 8
  %44 = call i32 @n2l(i8* %42, i64 %43)
  %45 = load i64, i64* %15, align 8
  %46 = load i64, i64* %13, align 8
  %47 = xor i64 %46, %45
  store i64 %47, i64* %13, align 8
  %48 = load i64, i64* %16, align 8
  %49 = load i64, i64* %14, align 8
  %50 = xor i64 %49, %48
  store i64 %50, i64* %14, align 8
  %51 = load i64, i64* %13, align 8
  %52 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  store i64 %51, i64* %52, align 16
  %53 = load i64, i64* %14, align 8
  %54 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  store i64 %53, i64* %54, align 8
  %55 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @IDEA_encrypt(i64* %55, i32* %56)
  %58 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %59 = load i64, i64* %58, align 16
  store i64 %59, i64* %15, align 8
  %60 = load i64, i64* %15, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @l2n(i64 %60, i8* %61)
  %63 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %16, align 8
  %65 = load i64, i64* %16, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @l2n(i64 %65, i8* %66)
  br label %68

68:                                               ; preds = %38
  %69 = load i64, i64* %19, align 8
  %70 = sub nsw i64 %69, 8
  store i64 %70, i64* %19, align 8
  br label %35

71:                                               ; preds = %35
  %72 = load i64, i64* %19, align 8
  %73 = icmp ne i64 %72, -8
  br i1 %73, label %74, label %104

74:                                               ; preds = %71
  %75 = load i8*, i8** %7, align 8
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* %14, align 8
  %78 = load i64, i64* %19, align 8
  %79 = add nsw i64 %78, 8
  %80 = call i32 @n2ln(i8* %75, i64 %76, i64 %77, i64 %79)
  %81 = load i64, i64* %15, align 8
  %82 = load i64, i64* %13, align 8
  %83 = xor i64 %82, %81
  store i64 %83, i64* %13, align 8
  %84 = load i64, i64* %16, align 8
  %85 = load i64, i64* %14, align 8
  %86 = xor i64 %85, %84
  store i64 %86, i64* %14, align 8
  %87 = load i64, i64* %13, align 8
  %88 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  store i64 %87, i64* %88, align 16
  %89 = load i64, i64* %14, align 8
  %90 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  store i64 %89, i64* %90, align 8
  %91 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @IDEA_encrypt(i64* %91, i32* %92)
  %94 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %95 = load i64, i64* %94, align 16
  store i64 %95, i64* %15, align 8
  %96 = load i64, i64* %15, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 @l2n(i64 %96, i8* %97)
  %99 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %16, align 8
  %101 = load i64, i64* %16, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = call i32 @l2n(i64 %101, i8* %102)
  br label %104

104:                                              ; preds = %74, %71
  %105 = load i64, i64* %15, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = call i32 @l2n(i64 %105, i8* %106)
  %108 = load i64, i64* %16, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = call i32 @l2n(i64 %108, i8* %109)
  br label %198

111:                                              ; preds = %6
  %112 = load i8*, i8** %11, align 8
  %113 = load i64, i64* %17, align 8
  %114 = call i32 @n2l(i8* %112, i64 %113)
  %115 = load i8*, i8** %11, align 8
  %116 = load i64, i64* %18, align 8
  %117 = call i32 @n2l(i8* %115, i64 %116)
  %118 = load i8*, i8** %11, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 -8
  store i8* %119, i8** %11, align 8
  %120 = load i64, i64* %19, align 8
  %121 = sub nsw i64 %120, 8
  store i64 %121, i64* %19, align 8
  br label %122

122:                                              ; preds = %155, %111
  %123 = load i64, i64* %19, align 8
  %124 = icmp sge i64 %123, 0
  br i1 %124, label %125, label %158

125:                                              ; preds = %122
  %126 = load i8*, i8** %7, align 8
  %127 = load i64, i64* %13, align 8
  %128 = call i32 @n2l(i8* %126, i64 %127)
  %129 = load i64, i64* %13, align 8
  %130 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  store i64 %129, i64* %130, align 16
  %131 = load i8*, i8** %7, align 8
  %132 = load i64, i64* %14, align 8
  %133 = call i32 @n2l(i8* %131, i64 %132)
  %134 = load i64, i64* %14, align 8
  %135 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  store i64 %134, i64* %135, align 8
  %136 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %137 = load i32*, i32** %10, align 8
  %138 = call i32 @IDEA_encrypt(i64* %136, i32* %137)
  %139 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %140 = load i64, i64* %139, align 16
  %141 = load i64, i64* %17, align 8
  %142 = xor i64 %140, %141
  store i64 %142, i64* %15, align 8
  %143 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %18, align 8
  %146 = xor i64 %144, %145
  store i64 %146, i64* %16, align 8
  %147 = load i64, i64* %15, align 8
  %148 = load i8*, i8** %8, align 8
  %149 = call i32 @l2n(i64 %147, i8* %148)
  %150 = load i64, i64* %16, align 8
  %151 = load i8*, i8** %8, align 8
  %152 = call i32 @l2n(i64 %150, i8* %151)
  %153 = load i64, i64* %13, align 8
  store i64 %153, i64* %17, align 8
  %154 = load i64, i64* %14, align 8
  store i64 %154, i64* %18, align 8
  br label %155

155:                                              ; preds = %125
  %156 = load i64, i64* %19, align 8
  %157 = sub nsw i64 %156, 8
  store i64 %157, i64* %19, align 8
  br label %122

158:                                              ; preds = %122
  %159 = load i64, i64* %19, align 8
  %160 = icmp ne i64 %159, -8
  br i1 %160, label %161, label %191

161:                                              ; preds = %158
  %162 = load i8*, i8** %7, align 8
  %163 = load i64, i64* %13, align 8
  %164 = call i32 @n2l(i8* %162, i64 %163)
  %165 = load i64, i64* %13, align 8
  %166 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  store i64 %165, i64* %166, align 16
  %167 = load i8*, i8** %7, align 8
  %168 = load i64, i64* %14, align 8
  %169 = call i32 @n2l(i8* %167, i64 %168)
  %170 = load i64, i64* %14, align 8
  %171 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  store i64 %170, i64* %171, align 8
  %172 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %173 = load i32*, i32** %10, align 8
  %174 = call i32 @IDEA_encrypt(i64* %172, i32* %173)
  %175 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %176 = load i64, i64* %175, align 16
  %177 = load i64, i64* %17, align 8
  %178 = xor i64 %176, %177
  store i64 %178, i64* %15, align 8
  %179 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* %18, align 8
  %182 = xor i64 %180, %181
  store i64 %182, i64* %16, align 8
  %183 = load i64, i64* %15, align 8
  %184 = load i64, i64* %16, align 8
  %185 = load i8*, i8** %8, align 8
  %186 = load i64, i64* %19, align 8
  %187 = add nsw i64 %186, 8
  %188 = call i32 @l2nn(i64 %183, i64 %184, i8* %185, i64 %187)
  %189 = load i64, i64* %13, align 8
  store i64 %189, i64* %17, align 8
  %190 = load i64, i64* %14, align 8
  store i64 %190, i64* %18, align 8
  br label %191

191:                                              ; preds = %161, %158
  %192 = load i64, i64* %17, align 8
  %193 = load i8*, i8** %11, align 8
  %194 = call i32 @l2n(i64 %192, i8* %193)
  %195 = load i64, i64* %18, align 8
  %196 = load i8*, i8** %11, align 8
  %197 = call i32 @l2n(i64 %195, i8* %196)
  br label %198

198:                                              ; preds = %191, %104
  store i64 0, i64* %18, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %13, align 8
  %199 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  store i64 0, i64* %199, align 8
  %200 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  store i64 0, i64* %200, align 16
  ret void
}

declare dso_local i32 @n2l(i8*, i64) #1

declare dso_local i32 @IDEA_encrypt(i64*, i32*) #1

declare dso_local i32 @l2n(i64, i8*) #1

declare dso_local i32 @n2ln(i8*, i64, i64, i64) #1

declare dso_local i32 @l2nn(i64, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
