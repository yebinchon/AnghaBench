; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_b_print.c_doapr_outch.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_b_print.c_doapr_outch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i64 0, align 8
@BUFFER_INC = common dso_local global i64 0, align 8
@BIO_F_DOAPR_OUTCH = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**, i64*, i64*, i32)* @doapr_outch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doapr_outch(i8** %0, i8** %1, i64* %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8** %0, i8*** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i8**, i8*** %7, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = load i8**, i8*** %8, align 8
  %18 = icmp ne i8** %17, null
  br label %19

19:                                               ; preds = %16, %5
  %20 = phi i1 [ true, %5 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @ossl_assert(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %135

25:                                               ; preds = %19
  %26 = load i64*, i64** %9, align 8
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** %10, align 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp ule i64 %27, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @ossl_assert(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %135

35:                                               ; preds = %25
  %36 = load i8**, i8*** %8, align 8
  %37 = icmp ne i8** %36, null
  br i1 %37, label %38, label %105

38:                                               ; preds = %35
  %39 = load i64*, i64** %9, align 8
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** %10, align 8
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %40, %42
  br i1 %43, label %44, label %105

44:                                               ; preds = %38
  %45 = load i64*, i64** %10, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @INT_MAX, align 8
  %48 = load i64, i64* @BUFFER_INC, align 8
  %49 = sub i64 %47, %48
  %50 = icmp ugt i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %135

52:                                               ; preds = %44
  %53 = load i64, i64* @BUFFER_INC, align 8
  %54 = load i64*, i64** %10, align 8
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, %53
  store i64 %56, i64* %54, align 8
  %57 = load i8**, i8*** %8, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %92

60:                                               ; preds = %52
  %61 = load i64*, i64** %10, align 8
  %62 = load i64, i64* %61, align 8
  %63 = call i8* @OPENSSL_malloc(i64 %62)
  %64 = load i8**, i8*** %8, align 8
  store i8* %63, i8** %64, align 8
  %65 = icmp eq i8* %63, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32, i32* @BIO_F_DOAPR_OUTCH, align 4
  %68 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %69 = call i32 @BIOerr(i32 %67, i32 %68)
  store i32 0, i32* %6, align 4
  br label %135

70:                                               ; preds = %60
  %71 = load i64*, i64** %9, align 8
  %72 = load i64, i64* %71, align 8
  %73 = icmp ugt i64 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %70
  %75 = load i8**, i8*** %7, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  %78 = zext i1 %77 to i32
  %79 = call i32 @ossl_assert(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %74
  store i32 0, i32* %6, align 4
  br label %135

82:                                               ; preds = %74
  %83 = load i8**, i8*** %8, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = load i8**, i8*** %7, align 8
  %86 = load i8*, i8** %85, align 8
  %87 = load i64*, i64** %9, align 8
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @memcpy(i8* %84, i8* %86, i64 %88)
  br label %90

90:                                               ; preds = %82, %70
  %91 = load i8**, i8*** %7, align 8
  store i8* null, i8** %91, align 8
  br label %104

92:                                               ; preds = %52
  %93 = load i8**, i8*** %8, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = load i64*, i64** %10, align 8
  %96 = load i64, i64* %95, align 8
  %97 = call i8* @OPENSSL_realloc(i8* %94, i64 %96)
  store i8* %97, i8** %12, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = icmp eq i8* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  store i32 0, i32* %6, align 4
  br label %135

101:                                              ; preds = %92
  %102 = load i8*, i8** %12, align 8
  %103 = load i8**, i8*** %8, align 8
  store i8* %102, i8** %103, align 8
  br label %104

104:                                              ; preds = %101, %90
  br label %105

105:                                              ; preds = %104, %38, %35
  %106 = load i64*, i64** %9, align 8
  %107 = load i64, i64* %106, align 8
  %108 = load i64*, i64** %10, align 8
  %109 = load i64, i64* %108, align 8
  %110 = icmp ult i64 %107, %109
  br i1 %110, label %111, label %134

111:                                              ; preds = %105
  %112 = load i8**, i8*** %7, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %124

115:                                              ; preds = %111
  %116 = load i32, i32* %11, align 4
  %117 = trunc i32 %116 to i8
  %118 = load i8**, i8*** %7, align 8
  %119 = load i8*, i8** %118, align 8
  %120 = load i64*, i64** %9, align 8
  %121 = load i64, i64* %120, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %120, align 8
  %123 = getelementptr inbounds i8, i8* %119, i64 %121
  store i8 %117, i8* %123, align 1
  br label %133

124:                                              ; preds = %111
  %125 = load i32, i32* %11, align 4
  %126 = trunc i32 %125 to i8
  %127 = load i8**, i8*** %8, align 8
  %128 = load i8*, i8** %127, align 8
  %129 = load i64*, i64** %9, align 8
  %130 = load i64, i64* %129, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %129, align 8
  %132 = getelementptr inbounds i8, i8* %128, i64 %130
  store i8 %126, i8* %132, align 1
  br label %133

133:                                              ; preds = %124, %115
  br label %134

134:                                              ; preds = %133, %105
  store i32 1, i32* %6, align 4
  br label %135

135:                                              ; preds = %134, %100, %81, %66, %51, %34, %24
  %136 = load i32, i32* %6, align 4
  ret i32 %136
}

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @BIOerr(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @OPENSSL_realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
