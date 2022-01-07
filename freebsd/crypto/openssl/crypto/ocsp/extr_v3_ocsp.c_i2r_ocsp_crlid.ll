; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ocsp/extr_v3_ocsp.c_i2r_ocsp_crlid.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ocsp/extr_v3_ocsp.c_i2r_ocsp_crlid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"%*scrlUrl: \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%*scrlNum: \00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%*scrlTime: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i32)* @i2r_ocsp_crlid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2r_ocsp_crlid(i32* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %10, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %4
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @BIO_printf(i32* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %89

23:                                               ; preds = %17
  %24 = load i32*, i32** %8, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  %29 = call i32 @ASN1_STRING_print(i32* %24, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  br label %89

32:                                               ; preds = %23
  %33 = load i32*, i32** %8, align 8
  %34 = call i64 @BIO_write(i32* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %35 = icmp sle i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %89

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %38
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @BIO_printf(i32* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %45, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp sle i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %89

49:                                               ; preds = %43
  %50 = load i32*, i32** %8, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @i2a_ASN1_INTEGER(i32* %50, i64 %53)
  %55 = icmp sle i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %89

57:                                               ; preds = %49
  %58 = load i32*, i32** %8, align 8
  %59 = call i64 @BIO_write(i32* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %60 = icmp sle i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %89

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %62, %38
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %63
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i64 @BIO_printf(i32* %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %70, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %72 = icmp sle i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %89

74:                                               ; preds = %68
  %75 = load i32*, i32** %8, align 8
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @ASN1_GENERALIZEDTIME_print(i32* %75, i64 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %74
  br label %89

82:                                               ; preds = %74
  %83 = load i32*, i32** %8, align 8
  %84 = call i64 @BIO_write(i32* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %85 = icmp sle i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %89

87:                                               ; preds = %82
  br label %88

88:                                               ; preds = %87, %63
  store i32 1, i32* %5, align 4
  br label %90

89:                                               ; preds = %86, %81, %73, %61, %56, %48, %36, %31, %22
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %89, %88
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i64 @BIO_printf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @ASN1_STRING_print(i32*, i32*) #1

declare dso_local i64 @BIO_write(i32*, i8*, i32) #1

declare dso_local i64 @i2a_ASN1_INTEGER(i32*, i64) #1

declare dso_local i32 @ASN1_GENERALIZEDTIME_print(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
