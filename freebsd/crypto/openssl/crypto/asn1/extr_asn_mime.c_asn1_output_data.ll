; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_asn_mime.c_asn1_output_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_asn_mime.c_asn1_output_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 (i32, i32**, %struct.TYPE_10__*, %struct.TYPE_9__*)* }
%struct.TYPE_9__ = type { i32*, i32*, i32* }

@SMIME_DETACHED = common dso_local global i32 0, align 4
@PKCS7_REUSE_DIGEST = common dso_local global i32 0, align 4
@ASN1_F_ASN1_OUTPUT_DATA = common dso_local global i32 0, align 4
@ASN1_R_STREAMING_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ASN1_OP_DETACHED_PRE = common dso_local global i32 0, align 4
@ASN1_OP_DETACHED_POST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32, %struct.TYPE_10__*)* @asn1_output_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn1_output_data(i32* %0, i32* %1, i32* %2, i32 %3, %struct.TYPE_10__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_9__, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %11, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %13, align 8
  store i32 1, i32* %15, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @SMIME_DETACHED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @PKCS7_REUSE_DIGEST, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23, %5
  %29 = load i32*, i32** %8, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @SMIME_crlf_copy(i32* %29, i32* %30, i32 %31)
  store i32 1, i32* %6, align 4
  br label %89

33:                                               ; preds = %23
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %35 = icmp ne %struct.TYPE_11__* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i64 (i32, i32**, %struct.TYPE_10__*, %struct.TYPE_9__*)*, i64 (i32, i32**, %struct.TYPE_10__*, %struct.TYPE_9__*)** %38, align 8
  %40 = icmp ne i64 (i32, i32**, %struct.TYPE_10__*, %struct.TYPE_9__*)* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %36, %33
  %42 = load i32, i32* @ASN1_F_ASN1_OUTPUT_DATA, align 4
  %43 = load i32, i32* @ASN1_R_STREAMING_NOT_SUPPORTED, align 4
  %44 = call i32 @ASN1err(i32 %42, i32 %43)
  store i32 0, i32* %6, align 4
  br label %89

45:                                               ; preds = %36
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  store i32* %46, i32** %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  store i32* null, i32** %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  store i32* null, i32** %49, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i64 (i32, i32**, %struct.TYPE_10__*, %struct.TYPE_9__*)*, i64 (i32, i32**, %struct.TYPE_10__*, %struct.TYPE_9__*)** %51, align 8
  %53 = load i32, i32* @ASN1_OP_DETACHED_PRE, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %55 = call i64 %52(i32 %53, i32** %9, %struct.TYPE_10__* %54, %struct.TYPE_9__* %14)
  %56 = icmp sle i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %89

58:                                               ; preds = %45
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @SMIME_crlf_copy(i32* %59, i32* %61, i32 %62)
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i64 (i32, i32**, %struct.TYPE_10__*, %struct.TYPE_9__*)*, i64 (i32, i32**, %struct.TYPE_10__*, %struct.TYPE_9__*)** %65, align 8
  %67 = load i32, i32* @ASN1_OP_DETACHED_POST, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %69 = call i64 %66(i32 %67, i32** %9, %struct.TYPE_10__* %68, %struct.TYPE_9__* %14)
  %70 = icmp sle i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %58
  store i32 0, i32* %15, align 4
  br label %72

72:                                               ; preds = %71, %58
  br label %73

73:                                               ; preds = %78, %72
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = icmp ne i32* %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32* @BIO_pop(i32* %80)
  store i32* %81, i32** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @BIO_free(i32* %83)
  %85 = load i32*, i32** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  store i32* %85, i32** %86, align 8
  br label %73

87:                                               ; preds = %73
  %88 = load i32, i32* %15, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %87, %57, %41, %28
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @SMIME_crlf_copy(i32*, i32*, i32) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32* @BIO_pop(i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
