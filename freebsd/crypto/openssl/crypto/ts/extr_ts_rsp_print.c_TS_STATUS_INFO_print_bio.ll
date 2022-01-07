; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ts/extr_ts_rsp_print.c_TS_STATUS_INFO_print_bio.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ts/extr_ts_rsp_print.c_TS_STATUS_INFO_print_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.status_map_st = type { i32, i8* }
%struct.TYPE_3__ = type { i32*, i32, i32 }

@TS_STATUS_INFO_print_bio.status_map = internal global [6 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"Granted.\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Granted with modifications.\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Rejected.\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Waiting.\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Revocation warning.\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Revoked.\00", align 1
@TS_STATUS_INFO_print_bio.failure_map = internal constant [9 x %struct.status_map_st] [%struct.status_map_st { i32 134, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i32 0, i32 0) }, %struct.status_map_st { i32 132, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0) }, %struct.status_map_st { i32 133, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i32 0, i32 0) }, %struct.status_map_st { i32 130, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0) }, %struct.status_map_st { i32 128, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i32 0, i32 0) }, %struct.status_map_st { i32 129, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i32 0, i32 0) }, %struct.status_map_st { i32 135, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.12, i32 0, i32 0) }, %struct.status_map_st { i32 131, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i32 0, i32 0) }, %struct.status_map_st { i32 -1, i8* null }], align 16
@.str.6 = private unnamed_addr constant [49 x i8] c"unrecognized or unsupported algorithm identifier\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"transaction not permitted or supported\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"the data submitted has the wrong format\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"the TSA's time source is not available\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"the requested TSA policy is not supported by the TSA\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"the requested extension is not supported by the TSA\00", align 1
@.str.12 = private unnamed_addr constant [81 x i8] c"the additional information requested could not be understood or is not available\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"the request cannot be handled due to system failure\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"Status: \00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"out of bounds\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"Status description: \00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"unspecified\0A\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Failure info: \00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"unspecified\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TS_STATUS_INFO_print_bio(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @ASN1_INTEGER_get(i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp sle i64 0, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @OSSL_NELEM(i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @TS_STATUS_INFO_print_bio.status_map, i64 0, i64 0))
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i32*, i32** %3, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds [6 x i8*], [6 x i8*]* @TS_STATUS_INFO_print_bio.status_map, i64 0, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* %24)
  br label %29

26:                                               ; preds = %16, %2
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %20
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %55, %29
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @sk_ASN1_UTF8STRING_num(i32 %36)
  %38 = icmp slt i32 %33, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @BIO_puts(i32* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32*, i32** %3, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @sk_ASN1_UTF8STRING_value(i32 %49, i32 %50)
  %52 = call i32 @ASN1_STRING_print_ex(i32* %46, i32 %51, i32 0)
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @BIO_puts(i32* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  br label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %32

58:                                               ; preds = %32
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0))
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load i32*, i32** %3, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @ts_status_map_print(i32* %72, %struct.status_map_st* getelementptr inbounds ([9 x %struct.status_map_st], [9 x %struct.status_map_st]* @TS_STATUS_INFO_print_bio.failure_map, i64 0, i64 0), i32* %75)
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %71, %64
  %78 = load i32, i32* %7, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  ret i32 1
}

declare dso_local i32 @BIO_printf(i32*, i8*, ...) #1

declare dso_local i64 @ASN1_INTEGER_get(i32) #1

declare dso_local i64 @OSSL_NELEM(i8**) #1

declare dso_local i32 @sk_ASN1_UTF8STRING_num(i32) #1

declare dso_local i32 @BIO_puts(i32*, i8*) #1

declare dso_local i32 @ASN1_STRING_print_ex(i32*, i32, i32) #1

declare dso_local i32 @sk_ASN1_UTF8STRING_value(i32, i32) #1

declare dso_local i32 @ts_status_map_print(i32*, %struct.status_map_st*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
