; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/des/extr_str2key.c_DES_string_to_2keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/des/extr_str2key.c_DES_string_to_2keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DES_string_to_2keys(i8* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @memset(i8** %11, i32 0, i32 8)
  %13 = load i8**, i8*** %6, align 8
  %14 = call i32 @memset(i8** %13, i32 0, i32 8)
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @strlen(i8* %15)
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %127, %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %130

21:                                               ; preds = %17
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %10, align 1
  %27 = load i32, i32* %8, align 4
  %28 = srem i32 %27, 32
  %29 = icmp slt i32 %28, 16
  br i1 %29, label %30, label %63

30:                                               ; preds = %21
  %31 = load i32, i32* %8, align 4
  %32 = srem i32 %31, 16
  %33 = icmp slt i32 %32, 8
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load i8, i8* %10, align 1
  %36 = zext i8 %35 to i32
  %37 = shl i32 %36, 1
  %38 = load i8**, i8*** %5, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = srem i32 %40, 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = xor i32 %45, %37
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %43, align 1
  br label %62

48:                                               ; preds = %30
  %49 = load i8, i8* %10, align 1
  %50 = zext i8 %49 to i32
  %51 = shl i32 %50, 1
  %52 = load i8**, i8*** %6, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = srem i32 %54, 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = xor i32 %59, %51
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %57, align 1
  br label %62

62:                                               ; preds = %48, %34
  br label %126

63:                                               ; preds = %21
  %64 = load i8, i8* %10, align 1
  %65 = zext i8 %64 to i32
  %66 = shl i32 %65, 4
  %67 = and i32 %66, 240
  %68 = load i8, i8* %10, align 1
  %69 = zext i8 %68 to i32
  %70 = ashr i32 %69, 4
  %71 = and i32 %70, 15
  %72 = or i32 %67, %71
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %10, align 1
  %74 = load i8, i8* %10, align 1
  %75 = zext i8 %74 to i32
  %76 = shl i32 %75, 2
  %77 = and i32 %76, 204
  %78 = load i8, i8* %10, align 1
  %79 = zext i8 %78 to i32
  %80 = ashr i32 %79, 2
  %81 = and i32 %80, 51
  %82 = or i32 %77, %81
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %10, align 1
  %84 = load i8, i8* %10, align 1
  %85 = zext i8 %84 to i32
  %86 = shl i32 %85, 1
  %87 = and i32 %86, 170
  %88 = load i8, i8* %10, align 1
  %89 = zext i8 %88 to i32
  %90 = ashr i32 %89, 1
  %91 = and i32 %90, 85
  %92 = or i32 %87, %91
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %10, align 1
  %94 = load i32, i32* %8, align 4
  %95 = srem i32 %94, 16
  %96 = icmp slt i32 %95, 8
  br i1 %96, label %97, label %111

97:                                               ; preds = %63
  %98 = load i8, i8* %10, align 1
  %99 = zext i8 %98 to i32
  %100 = load i8**, i8*** %5, align 8
  %101 = load i8*, i8** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = srem i32 %102, 8
  %104 = sub nsw i32 7, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %101, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = xor i32 %108, %99
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %106, align 1
  br label %125

111:                                              ; preds = %63
  %112 = load i8, i8* %10, align 1
  %113 = zext i8 %112 to i32
  %114 = load i8**, i8*** %6, align 8
  %115 = load i8*, i8** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = srem i32 %116, 8
  %118 = sub nsw i32 7, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %115, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = xor i32 %122, %113
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %120, align 1
  br label %125

125:                                              ; preds = %111, %97
  br label %126

126:                                              ; preds = %125, %62
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  br label %17

130:                                              ; preds = %17
  %131 = load i32, i32* %9, align 4
  %132 = icmp sle i32 %131, 8
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load i8**, i8*** %6, align 8
  %135 = load i8**, i8*** %5, align 8
  %136 = call i32 @memcpy(i8** %134, i8** %135, i32 8)
  br label %137

137:                                              ; preds = %133, %130
  %138 = load i8**, i8*** %5, align 8
  %139 = call i32 @DES_set_odd_parity(i8** %138)
  %140 = load i8**, i8*** %6, align 8
  %141 = call i32 @DES_set_odd_parity(i8** %140)
  %142 = load i8**, i8*** %5, align 8
  %143 = call i32 @DES_set_key_unchecked(i8** %142, i32* %7)
  %144 = load i8*, i8** %4, align 8
  %145 = load i8**, i8*** %5, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load i8**, i8*** %5, align 8
  %148 = call i32 @DES_cbc_cksum(i8* %144, i8** %145, i32 %146, i32* %7, i8** %147)
  %149 = load i8**, i8*** %6, align 8
  %150 = call i32 @DES_set_key_unchecked(i8** %149, i32* %7)
  %151 = load i8*, i8** %4, align 8
  %152 = load i8**, i8*** %6, align 8
  %153 = load i32, i32* %9, align 4
  %154 = load i8**, i8*** %6, align 8
  %155 = call i32 @DES_cbc_cksum(i8* %151, i8** %152, i32 %153, i32* %7, i8** %154)
  %156 = call i32 @OPENSSL_cleanse(i32* %7, i32 4)
  %157 = load i8**, i8*** %5, align 8
  %158 = call i32 @DES_set_odd_parity(i8** %157)
  %159 = load i8**, i8*** %6, align 8
  %160 = call i32 @DES_set_odd_parity(i8** %159)
  ret void
}

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

declare dso_local i32 @DES_set_odd_parity(i8**) #1

declare dso_local i32 @DES_set_key_unchecked(i8**, i32*) #1

declare dso_local i32 @DES_cbc_cksum(i8*, i8**, i32, i32*, i8**) #1

declare dso_local i32 @OPENSSL_cleanse(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
