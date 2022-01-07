; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/des/extr_des_enc.c_DES_ede3_cbc_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/des/extr_des_enc.c_DES_ede3_cbc_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DES_ede3_cbc_encrypt(i8* %0, i8* %1, i64 %2, i32* %3, i32* %4, i32* %5, i8** %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca [2 x i32], align 4
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8** %6, i8*** %15, align 8
  store i32 %7, i32* %16, align 4
  %30 = load i64, i64* %11, align 8
  store i64 %30, i64* %25, align 8
  %31 = load i8*, i8** %9, align 8
  store i8* %31, i8** %23, align 8
  %32 = load i8*, i8** %10, align 8
  store i8* %32, i8** %24, align 8
  %33 = load i8**, i8*** %15, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  store i8* %35, i8** %27, align 8
  %36 = load i32, i32* %16, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %130

38:                                               ; preds = %8
  %39 = load i8*, i8** %27, align 8
  %40 = load i32, i32* %19, align 4
  %41 = call i32 @c2l(i8* %39, i32 %40)
  %42 = load i8*, i8** %27, align 8
  %43 = load i32, i32* %20, align 4
  %44 = call i32 @c2l(i8* %42, i32 %43)
  %45 = load i64, i64* %25, align 8
  %46 = sub nsw i64 %45, 8
  store i64 %46, i64* %25, align 8
  br label %47

47:                                               ; preds = %82, %38
  %48 = load i64, i64* %25, align 8
  %49 = icmp sge i64 %48, 0
  br i1 %49, label %50, label %85

50:                                               ; preds = %47
  %51 = load i8*, i8** %23, align 8
  %52 = load i32, i32* %17, align 4
  %53 = call i32 @c2l(i8* %51, i32 %52)
  %54 = load i8*, i8** %23, align 8
  %55 = load i32, i32* %18, align 4
  %56 = call i32 @c2l(i8* %54, i32 %55)
  %57 = load i32, i32* %19, align 4
  %58 = load i32, i32* %17, align 4
  %59 = xor i32 %58, %57
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %20, align 4
  %61 = load i32, i32* %18, align 4
  %62 = xor i32 %61, %60
  store i32 %62, i32* %18, align 4
  %63 = load i32, i32* %17, align 4
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %18, align 4
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 1
  store i32 %65, i32* %66, align 4
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0
  %68 = load i32*, i32** %12, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = load i32*, i32** %14, align 8
  %71 = call i32 @DES_encrypt3(i32* %67, i32* %68, i32* %69, i32* %70)
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %19, align 4
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %20, align 4
  %76 = load i32, i32* %19, align 4
  %77 = load i8*, i8** %24, align 8
  %78 = call i32 @l2c(i32 %76, i8* %77)
  %79 = load i32, i32* %20, align 4
  %80 = load i8*, i8** %24, align 8
  %81 = call i32 @l2c(i32 %79, i8* %80)
  br label %82

82:                                               ; preds = %50
  %83 = load i64, i64* %25, align 8
  %84 = sub nsw i64 %83, 8
  store i64 %84, i64* %25, align 8
  br label %47

85:                                               ; preds = %47
  %86 = load i64, i64* %25, align 8
  %87 = icmp ne i64 %86, -8
  br i1 %87, label %88, label %120

88:                                               ; preds = %85
  %89 = load i8*, i8** %23, align 8
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* %18, align 4
  %92 = load i64, i64* %25, align 8
  %93 = add nsw i64 %92, 8
  %94 = call i32 @c2ln(i8* %89, i32 %90, i32 %91, i64 %93)
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %17, align 4
  %97 = xor i32 %96, %95
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* %20, align 4
  %99 = load i32, i32* %18, align 4
  %100 = xor i32 %99, %98
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* %17, align 4
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* %18, align 4
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 1
  store i32 %103, i32* %104, align 4
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0
  %106 = load i32*, i32** %12, align 8
  %107 = load i32*, i32** %13, align 8
  %108 = load i32*, i32** %14, align 8
  %109 = call i32 @DES_encrypt3(i32* %105, i32* %106, i32* %107, i32* %108)
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %19, align 4
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 1
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %20, align 4
  %114 = load i32, i32* %19, align 4
  %115 = load i8*, i8** %24, align 8
  %116 = call i32 @l2c(i32 %114, i8* %115)
  %117 = load i32, i32* %20, align 4
  %118 = load i8*, i8** %24, align 8
  %119 = call i32 @l2c(i32 %117, i8* %118)
  br label %120

120:                                              ; preds = %88, %85
  %121 = load i8**, i8*** %15, align 8
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 0
  store i8* %123, i8** %27, align 8
  %124 = load i32, i32* %19, align 4
  %125 = load i8*, i8** %27, align 8
  %126 = call i32 @l2c(i32 %124, i8* %125)
  %127 = load i32, i32* %20, align 4
  %128 = load i8*, i8** %27, align 8
  %129 = call i32 @l2c(i32 %127, i8* %128)
  br label %230

130:                                              ; preds = %8
  %131 = load i8*, i8** %27, align 8
  %132 = load i32, i32* %21, align 4
  %133 = call i32 @c2l(i8* %131, i32 %132)
  %134 = load i8*, i8** %27, align 8
  %135 = load i32, i32* %22, align 4
  %136 = call i32 @c2l(i8* %134, i32 %135)
  %137 = load i64, i64* %25, align 8
  %138 = sub nsw i64 %137, 8
  store i64 %138, i64* %25, align 8
  br label %139

139:                                              ; preds = %178, %130
  %140 = load i64, i64* %25, align 8
  %141 = icmp sge i64 %140, 0
  br i1 %141, label %142, label %181

142:                                              ; preds = %139
  %143 = load i8*, i8** %23, align 8
  %144 = load i32, i32* %17, align 4
  %145 = call i32 @c2l(i8* %143, i32 %144)
  %146 = load i8*, i8** %23, align 8
  %147 = load i32, i32* %18, align 4
  %148 = call i32 @c2l(i8* %146, i32 %147)
  %149 = load i32, i32* %17, align 4
  store i32 %149, i32* %28, align 4
  %150 = load i32, i32* %18, align 4
  store i32 %150, i32* %29, align 4
  %151 = load i32, i32* %17, align 4
  %152 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0
  store i32 %151, i32* %152, align 4
  %153 = load i32, i32* %18, align 4
  %154 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 1
  store i32 %153, i32* %154, align 4
  %155 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0
  %156 = load i32*, i32** %12, align 8
  %157 = load i32*, i32** %13, align 8
  %158 = load i32*, i32** %14, align 8
  %159 = call i32 @DES_decrypt3(i32* %155, i32* %156, i32* %157, i32* %158)
  %160 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %19, align 4
  %162 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 1
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %20, align 4
  %164 = load i32, i32* %21, align 4
  %165 = load i32, i32* %19, align 4
  %166 = xor i32 %165, %164
  store i32 %166, i32* %19, align 4
  %167 = load i32, i32* %22, align 4
  %168 = load i32, i32* %20, align 4
  %169 = xor i32 %168, %167
  store i32 %169, i32* %20, align 4
  %170 = load i32, i32* %19, align 4
  %171 = load i8*, i8** %24, align 8
  %172 = call i32 @l2c(i32 %170, i8* %171)
  %173 = load i32, i32* %20, align 4
  %174 = load i8*, i8** %24, align 8
  %175 = call i32 @l2c(i32 %173, i8* %174)
  %176 = load i32, i32* %28, align 4
  store i32 %176, i32* %21, align 4
  %177 = load i32, i32* %29, align 4
  store i32 %177, i32* %22, align 4
  br label %178

178:                                              ; preds = %142
  %179 = load i64, i64* %25, align 8
  %180 = sub nsw i64 %179, 8
  store i64 %180, i64* %25, align 8
  br label %139

181:                                              ; preds = %139
  %182 = load i64, i64* %25, align 8
  %183 = icmp ne i64 %182, -8
  br i1 %183, label %184, label %220

184:                                              ; preds = %181
  %185 = load i8*, i8** %23, align 8
  %186 = load i32, i32* %17, align 4
  %187 = call i32 @c2l(i8* %185, i32 %186)
  %188 = load i8*, i8** %23, align 8
  %189 = load i32, i32* %18, align 4
  %190 = call i32 @c2l(i8* %188, i32 %189)
  %191 = load i32, i32* %17, align 4
  store i32 %191, i32* %28, align 4
  %192 = load i32, i32* %18, align 4
  store i32 %192, i32* %29, align 4
  %193 = load i32, i32* %17, align 4
  %194 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0
  store i32 %193, i32* %194, align 4
  %195 = load i32, i32* %18, align 4
  %196 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 1
  store i32 %195, i32* %196, align 4
  %197 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0
  %198 = load i32*, i32** %12, align 8
  %199 = load i32*, i32** %13, align 8
  %200 = load i32*, i32** %14, align 8
  %201 = call i32 @DES_decrypt3(i32* %197, i32* %198, i32* %199, i32* %200)
  %202 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %19, align 4
  %204 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 1
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %20, align 4
  %206 = load i32, i32* %21, align 4
  %207 = load i32, i32* %19, align 4
  %208 = xor i32 %207, %206
  store i32 %208, i32* %19, align 4
  %209 = load i32, i32* %22, align 4
  %210 = load i32, i32* %20, align 4
  %211 = xor i32 %210, %209
  store i32 %211, i32* %20, align 4
  %212 = load i32, i32* %19, align 4
  %213 = load i32, i32* %20, align 4
  %214 = load i8*, i8** %24, align 8
  %215 = load i64, i64* %25, align 8
  %216 = add nsw i64 %215, 8
  %217 = call i32 @l2cn(i32 %212, i32 %213, i8* %214, i64 %216)
  %218 = load i32, i32* %28, align 4
  store i32 %218, i32* %21, align 4
  %219 = load i32, i32* %29, align 4
  store i32 %219, i32* %22, align 4
  br label %220

220:                                              ; preds = %184, %181
  %221 = load i8**, i8*** %15, align 8
  %222 = load i8*, i8** %221, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 0
  store i8* %223, i8** %27, align 8
  %224 = load i32, i32* %21, align 4
  %225 = load i8*, i8** %27, align 8
  %226 = call i32 @l2c(i32 %224, i8* %225)
  %227 = load i32, i32* %22, align 4
  %228 = load i8*, i8** %27, align 8
  %229 = call i32 @l2c(i32 %227, i8* %228)
  br label %230

230:                                              ; preds = %220, %120
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  %231 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 1
  store i32 0, i32* %231, align 4
  %232 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0
  store i32 0, i32* %232, align 4
  ret void
}

declare dso_local i32 @c2l(i8*, i32) #1

declare dso_local i32 @DES_encrypt3(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @l2c(i32, i8*) #1

declare dso_local i32 @c2ln(i8*, i32, i32, i64) #1

declare dso_local i32 @DES_decrypt3(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @l2cn(i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
