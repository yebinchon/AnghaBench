; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_x_int64.c_uint32_c2i.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_x_int64.c_uint32_c2i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@INTxx_FLAG_SIGNED = common dso_local global i32 0, align 4
@ASN1_F_UINT32_C2I = common dso_local global i32 0, align 4
@ASN1_R_ILLEGAL_NEGATIVE_VALUE = common dso_local global i32 0, align 4
@ABS_INT32_MIN = common dso_local global i64 0, align 8
@ASN1_R_TOO_SMALL = common dso_local global i32 0, align 4
@INT32_MAX = common dso_local global i64 0, align 8
@UINT32_MAX = common dso_local global i64 0, align 8
@ASN1_R_TOO_LARGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8*, i32, i32, i8*, %struct.TYPE_4__*)* @uint32_c2i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uint32_c2i(i32** %0, i8* %1, i32 %2, i32 %3, i8* %4, %struct.TYPE_4__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32** %0, i32*** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32**, i32*** %8, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %6
  %22 = load i32**, i32*** %8, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %24 = call i32 @uint64_new(i32** %22, %struct.TYPE_4__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %99

27:                                               ; preds = %21, %6
  %28 = load i32**, i32*** %8, align 8
  %29 = load i32*, i32** %28, align 8
  %30 = bitcast i32* %29 to i8*
  store i8* %30, i8** %16, align 8
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %95

34:                                               ; preds = %27
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @c2i_uint64_int(i64* %14, i32* %17, i8** %9, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %99

39:                                               ; preds = %34
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @INTxx_FLAG_SIGNED, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load i32, i32* %17, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* @ASN1_F_UINT32_C2I, align 4
  %51 = load i32, i32* @ASN1_R_ILLEGAL_NEGATIVE_VALUE, align 4
  %52 = call i32 @ASN1err(i32 %50, i32 %51)
  store i32 0, i32* %7, align 4
  br label %99

53:                                               ; preds = %46, %39
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* @ABS_INT32_MIN, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* @ASN1_F_UINT32_C2I, align 4
  %62 = load i32, i32* @ASN1_R_TOO_SMALL, align 4
  %63 = call i32 @ASN1err(i32 %61, i32 %62)
  store i32 0, i32* %7, align 4
  br label %99

64:                                               ; preds = %56
  %65 = load i64, i64* %14, align 8
  %66 = sub nsw i64 0, %65
  store i64 %66, i64* %14, align 8
  br label %94

67:                                               ; preds = %53
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @INTxx_FLAG_SIGNED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* @INT32_MAX, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %89, label %78

78:                                               ; preds = %74, %67
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @INTxx_FLAG_SIGNED, align 4
  %83 = and i32 %81, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %78
  %86 = load i64, i64* %14, align 8
  %87 = load i64, i64* @UINT32_MAX, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %85, %74
  %90 = load i32, i32* @ASN1_F_UINT32_C2I, align 4
  %91 = load i32, i32* @ASN1_R_TOO_LARGE, align 4
  %92 = call i32 @ASN1err(i32 %90, i32 %91)
  store i32 0, i32* %7, align 4
  br label %99

93:                                               ; preds = %85, %78
  br label %94

94:                                               ; preds = %93, %64
  br label %95

95:                                               ; preds = %94, %33
  %96 = load i64, i64* %14, align 8
  store i64 %96, i64* %15, align 8
  %97 = load i8*, i8** %16, align 8
  %98 = call i32 @memcpy(i8* %97, i64* %15, i32 8)
  store i32 1, i32* %7, align 4
  br label %99

99:                                               ; preds = %95, %89, %60, %49, %38, %26
  %100 = load i32, i32* %7, align 4
  ret i32 %100
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
