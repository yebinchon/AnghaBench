; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_scalarmult_ed25519.c_xmain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_scalarmult_ed25519.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_scalarmult_ed25519_SCALARBYTES = common dso_local global i64 0, align 8
@crypto_scalarmult_ed25519_BYTES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"crypto_scalarmult_ed25519_base() failed\0A\00", align 1
@B = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"crypto_scalarmult_ed25519() failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"crypto_scalarmult_ed25519_base(n) != crypto_scalarmult_ed25519(n, 9)\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"crypto_scalarmult_ed25519_base(0) failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"crypto_scalarmult_ed25519(0) passed\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"crypto_scalarmult_ed25519() passed\0A\00", align 1
@non_canonical_p = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [41 x i8] c"crypto_scalarmult_ed25519() didn't fail\0A\00", align 1
@non_canonical_invalid_p = common dso_local global i8* null, align 8
@max_canonical_p = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %6 = load i64, i64* @crypto_scalarmult_ed25519_SCALARBYTES, align 8
  %7 = call i64 @sodium_malloc(i64 %6)
  %8 = inttoptr i64 %7 to i8*
  store i8* %8, i8** %2, align 8
  %9 = load i64, i64* @crypto_scalarmult_ed25519_BYTES, align 8
  %10 = call i64 @sodium_malloc(i64 %9)
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %3, align 8
  %12 = load i64, i64* @crypto_scalarmult_ed25519_BYTES, align 8
  %13 = call i64 @sodium_malloc(i64 %12)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %4, align 8
  %15 = load i64, i64* @crypto_scalarmult_ed25519_BYTES, align 8
  %16 = call i64 @sodium_malloc(i64 %15)
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = load i64, i64* @crypto_scalarmult_ed25519_SCALARBYTES, align 8
  %20 = call i32 @randombytes_buf(i8* %18, i64 %19)
  %21 = load i8*, i8** %4, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @crypto_scalarmult_ed25519_base(i8* %21, i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %0
  %26 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %0
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* @B, align 4
  %30 = load i64, i64* @crypto_scalarmult_ed25519_BYTES, align 8
  %31 = call i32 @memcpy(i8* %28, i32 %29, i64 %30)
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %2, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @crypto_scalarmult_ed25519(i8* %32, i8* %33, i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %27
  %40 = load i8*, i8** %4, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i64, i64* @crypto_scalarmult_ed25519_BYTES, align 8
  %43 = call i64 @memcmp(i8* %40, i8* %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = call i32 @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %39
  %48 = load i8*, i8** %2, align 8
  %49 = load i64, i64* @crypto_scalarmult_ed25519_SCALARBYTES, align 8
  %50 = call i32 @memset(i8* %48, i32 0, i64 %49)
  %51 = load i8*, i8** %4, align 8
  %52 = load i8*, i8** %2, align 8
  %53 = call i32 @crypto_scalarmult_ed25519_base(i8* %51, i8* %52)
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %47
  %58 = load i8*, i8** %5, align 8
  %59 = load i8*, i8** %2, align 8
  %60 = load i8*, i8** %3, align 8
  %61 = call i32 @crypto_scalarmult_ed25519(i8* %58, i8* %59, i8* %60)
  %62 = icmp ne i32 %61, -1
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %57
  %66 = load i8*, i8** %2, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  store i8 1, i8* %67, align 1
  %68 = load i8*, i8** %4, align 8
  %69 = load i8*, i8** %2, align 8
  %70 = call i32 @crypto_scalarmult_ed25519_base(i8* %68, i8* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %65
  %75 = load i8*, i8** %5, align 8
  %76 = load i8*, i8** %2, align 8
  %77 = load i8*, i8** %3, align 8
  %78 = call i32 @crypto_scalarmult_ed25519(i8* %75, i8* %76, i8* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %74
  %83 = load i8*, i8** %4, align 8
  %84 = load i8*, i8** %2, align 8
  %85 = load i8*, i8** @non_canonical_p, align 8
  %86 = call i32 @crypto_scalarmult_ed25519(i8* %83, i8* %84, i8* %85)
  %87 = icmp ne i32 %86, -1
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %82
  %91 = load i8*, i8** %4, align 8
  %92 = load i8*, i8** %2, align 8
  %93 = load i8*, i8** @non_canonical_invalid_p, align 8
  %94 = call i32 @crypto_scalarmult_ed25519(i8* %91, i8* %92, i8* %93)
  %95 = icmp ne i32 %94, -1
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %90
  %99 = load i8*, i8** %4, align 8
  %100 = load i8*, i8** %2, align 8
  %101 = load i8*, i8** @max_canonical_p, align 8
  %102 = call i32 @crypto_scalarmult_ed25519(i8* %99, i8* %100, i8* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %98
  %107 = load i8*, i8** %3, align 8
  %108 = load i64, i64* @crypto_scalarmult_ed25519_BYTES, align 8
  %109 = call i32 @memset(i8* %107, i32 0, i64 %108)
  %110 = load i8*, i8** %4, align 8
  %111 = load i8*, i8** %2, align 8
  %112 = load i8*, i8** %3, align 8
  %113 = call i32 @crypto_scalarmult_ed25519(i8* %110, i8* %111, i8* %112)
  %114 = icmp ne i32 %113, -1
  br i1 %114, label %115, label %117

115:                                              ; preds = %106
  %116 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %106
  %118 = load i8*, i8** %2, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  store i8 8, i8* %119, align 1
  %120 = load i8*, i8** %4, align 8
  %121 = load i8*, i8** %2, align 8
  %122 = load i8*, i8** %3, align 8
  %123 = call i32 @crypto_scalarmult_ed25519(i8* %120, i8* %121, i8* %122)
  %124 = icmp ne i32 %123, -1
  br i1 %124, label %125, label %127

125:                                              ; preds = %117
  %126 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %117
  %128 = load i8*, i8** %5, align 8
  %129 = call i32 @sodium_free(i8* %128)
  %130 = load i8*, i8** %4, align 8
  %131 = call i32 @sodium_free(i8* %130)
  %132 = load i8*, i8** %3, align 8
  %133 = call i32 @sodium_free(i8* %132)
  %134 = load i8*, i8** %2, align 8
  %135 = call i32 @sodium_free(i8* %134)
  %136 = load i64, i64* @crypto_scalarmult_ed25519_BYTES, align 8
  %137 = call i64 (...) @crypto_scalarmult_ed25519_bytes()
  %138 = icmp eq i64 %136, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 @assert(i32 %139)
  %141 = load i64, i64* @crypto_scalarmult_ed25519_SCALARBYTES, align 8
  %142 = call i64 (...) @crypto_scalarmult_ed25519_scalarbytes()
  %143 = icmp eq i64 %141, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  %146 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  ret i32 0
}

declare dso_local i64 @sodium_malloc(i64) #1

declare dso_local i32 @randombytes_buf(i8*, i64) #1

declare dso_local i32 @crypto_scalarmult_ed25519_base(i8*, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @crypto_scalarmult_ed25519(i8*, i8*, i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @sodium_free(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @crypto_scalarmult_ed25519_bytes(...) #1

declare dso_local i64 @crypto_scalarmult_ed25519_scalarbytes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
