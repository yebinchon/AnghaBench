; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_x_int64.c_uint64_c2i.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_x_int64.c_uint64_c2i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@INTxx_FLAG_SIGNED = common dso_local global i32 0, align 4
@ASN1_F_UINT64_C2I = common dso_local global i32 0, align 4
@ASN1_R_ILLEGAL_NEGATIVE_VALUE = common dso_local global i32 0, align 4
@INT64_MAX = common dso_local global i64 0, align 8
@ASN1_R_TOO_LARGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8*, i32, i32, i8*, %struct.TYPE_4__*)* @uint64_c2i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uint64_c2i(i32** %0, i8* %1, i32 %2, i32 %3, i8* %4, %struct.TYPE_4__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32** %0, i32*** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32**, i32*** %8, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %6
  %21 = load i32**, i32*** %8, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %23 = call i32 @uint64_new(i32** %21, %struct.TYPE_4__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %81

26:                                               ; preds = %20, %6
  %27 = load i32**, i32*** %8, align 8
  %28 = load i32*, i32** %27, align 8
  %29 = bitcast i32* %28 to i8*
  store i8* %29, i8** %15, align 8
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %78

33:                                               ; preds = %26
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @c2i_uint64_int(i64* %14, i32* %16, i8** %9, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %81

38:                                               ; preds = %33
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @INTxx_FLAG_SIGNED, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* @ASN1_F_UINT64_C2I, align 4
  %50 = load i32, i32* @ASN1_R_ILLEGAL_NEGATIVE_VALUE, align 4
  %51 = call i32 @ASN1err(i32 %49, i32 %50)
  store i32 0, i32* %7, align 4
  br label %81

52:                                               ; preds = %45, %38
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @INTxx_FLAG_SIGNED, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @INTxx_FLAG_SIGNED, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %52
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %60
  %64 = load i64, i64* %14, align 8
  %65 = load i64, i64* @INT64_MAX, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* @ASN1_F_UINT64_C2I, align 4
  %69 = load i32, i32* @ASN1_R_TOO_LARGE, align 4
  %70 = call i32 @ASN1err(i32 %68, i32 %69)
  store i32 0, i32* %7, align 4
  br label %81

71:                                               ; preds = %63, %60, %52
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i64, i64* %14, align 8
  %76 = sub nsw i64 0, %75
  store i64 %76, i64* %14, align 8
  br label %77

77:                                               ; preds = %74, %71
  br label %78

78:                                               ; preds = %77, %32
  %79 = load i8*, i8** %15, align 8
  %80 = call i32 @memcpy(i8* %79, i64* %14, i32 8)
  store i32 1, i32* %7, align 4
  br label %81

81:                                               ; preds = %78, %67, %48, %37, %25
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32 @uint64_new(i32**, %struct.TYPE_4__*) #1

declare dso_local i32 @c2i_uint64_int(i64*, i32*, i8**, i32) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
