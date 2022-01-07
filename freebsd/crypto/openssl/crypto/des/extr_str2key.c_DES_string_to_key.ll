; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/des/extr_str2key.c_DES_string_to_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/des/extr_str2key.c_DES_string_to_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DES_string_to_key(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %9 = load i8**, i8*** %4, align 8
  %10 = call i32 @memset(i8** %9, i32 0, i32 8)
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @strlen(i8* %11)
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %85, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %88

17:                                               ; preds = %13
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %8, align 1
  %23 = load i32, i32* %6, align 4
  %24 = srem i32 %23, 16
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %26, label %40

26:                                               ; preds = %17
  %27 = load i8, i8* %8, align 1
  %28 = zext i8 %27 to i32
  %29 = shl i32 %28, 1
  %30 = load i8**, i8*** %4, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = srem i32 %32, 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = xor i32 %37, %29
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %35, align 1
  br label %84

40:                                               ; preds = %17
  %41 = load i8, i8* %8, align 1
  %42 = zext i8 %41 to i32
  %43 = shl i32 %42, 4
  %44 = and i32 %43, 240
  %45 = load i8, i8* %8, align 1
  %46 = zext i8 %45 to i32
  %47 = ashr i32 %46, 4
  %48 = and i32 %47, 15
  %49 = or i32 %44, %48
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %8, align 1
  %51 = load i8, i8* %8, align 1
  %52 = zext i8 %51 to i32
  %53 = shl i32 %52, 2
  %54 = and i32 %53, 204
  %55 = load i8, i8* %8, align 1
  %56 = zext i8 %55 to i32
  %57 = ashr i32 %56, 2
  %58 = and i32 %57, 51
  %59 = or i32 %54, %58
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %8, align 1
  %61 = load i8, i8* %8, align 1
  %62 = zext i8 %61 to i32
  %63 = shl i32 %62, 1
  %64 = and i32 %63, 170
  %65 = load i8, i8* %8, align 1
  %66 = zext i8 %65 to i32
  %67 = ashr i32 %66, 1
  %68 = and i32 %67, 85
  %69 = or i32 %64, %68
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %8, align 1
  %71 = load i8, i8* %8, align 1
  %72 = zext i8 %71 to i32
  %73 = load i8**, i8*** %4, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = srem i32 %75, 8
  %77 = sub nsw i32 7, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %74, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = xor i32 %81, %72
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %79, align 1
  br label %84

84:                                               ; preds = %40, %26
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %13

88:                                               ; preds = %13
  %89 = load i8**, i8*** %4, align 8
  %90 = call i32 @DES_set_odd_parity(i8** %89)
  %91 = load i8**, i8*** %4, align 8
  %92 = call i32 @DES_set_key_unchecked(i8** %91, i32* %5)
  %93 = load i8*, i8** %3, align 8
  %94 = load i8**, i8*** %4, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i8**, i8*** %4, align 8
  %97 = call i32 @DES_cbc_cksum(i8* %93, i8** %94, i32 %95, i32* %5, i8** %96)
  %98 = call i32 @OPENSSL_cleanse(i32* %5, i32 4)
  %99 = load i8**, i8*** %4, align 8
  %100 = call i32 @DES_set_odd_parity(i8** %99)
  ret void
}

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

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
