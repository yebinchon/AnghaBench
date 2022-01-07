; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_bio_ndef.c_BIO_new_NDEF.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_bio_ndef.c_BIO_new_NDEF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 (i32, i32**, %struct.TYPE_13__*, %struct.TYPE_12__*)* }
%struct.TYPE_12__ = type { i32*, i32*, i32* }
%struct.TYPE_11__ = type { i32*, i32*, i32*, %struct.TYPE_13__*, i32* }

@ASN1_F_BIO_NEW_NDEF = common dso_local global i32 0, align 4
@ASN1_R_STREAMING_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ndef_prefix = common dso_local global i32 0, align 4
@ndef_prefix_free = common dso_local global i32 0, align 4
@ndef_suffix = common dso_local global i32 0, align 4
@ndef_suffix_free = common dso_local global i32 0, align 4
@ASN1_OP_STREAM_PRE = common dso_local global i32 0, align 4
@BIO_C_SET_EX_ARG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @BIO_new_NDEF(i32* %0, i32* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_12__, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %8, align 8
  store i32* null, i32** %9, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %10, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %16 = icmp ne %struct.TYPE_14__* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i64 (i32, i32**, %struct.TYPE_13__*, %struct.TYPE_12__*)*, i64 (i32, i32**, %struct.TYPE_13__*, %struct.TYPE_12__*)** %19, align 8
  %21 = icmp ne i64 (i32, i32**, %struct.TYPE_13__*, %struct.TYPE_12__*)* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17, %3
  %23 = load i32, i32* @ASN1_F_BIO_NEW_NDEF, align 4
  %24 = load i32, i32* @ASN1_R_STREAMING_NOT_SUPPORTED, align 4
  %25 = call i32 @ASN1err(i32 %23, i32 %24)
  store i32* null, i32** %4, align 8
  br label %93

26:                                               ; preds = %17
  %27 = call %struct.TYPE_11__* @OPENSSL_zalloc(i32 40)
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %8, align 8
  %28 = call i32 (...) @BIO_f_asn1()
  %29 = call i32* @BIO_new(i32 %28)
  store i32* %29, i32** %9, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %31 = icmp eq %struct.TYPE_11__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32*, i32** %9, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %26
  br label %88

36:                                               ; preds = %32
  %37 = load i32*, i32** %9, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i32* @BIO_push(i32* %37, i32* %38)
  store i32* %39, i32** %5, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %88

43:                                               ; preds = %36
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* @ndef_prefix, align 4
  %46 = load i32, i32* @ndef_prefix_free, align 4
  %47 = call i32 @BIO_asn1_set_prefix(i32* %44, i32 %45, i32 %46)
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* @ndef_suffix, align 4
  %50 = load i32, i32* @ndef_suffix_free, align 4
  %51 = call i32 @BIO_asn1_set_suffix(i32* %48, i32 %49, i32 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 2
  store i32* %52, i32** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  store i32* null, i32** %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  store i32* null, i32** %55, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i64 (i32, i32**, %struct.TYPE_13__*, %struct.TYPE_12__*)*, i64 (i32, i32**, %struct.TYPE_13__*, %struct.TYPE_12__*)** %57, align 8
  %59 = load i32, i32* @ASN1_OP_STREAM_PRE, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %61 = call i64 %58(i32 %59, i32** %6, %struct.TYPE_13__* %60, %struct.TYPE_12__* %11)
  %62 = icmp sle i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %43
  br label %88

64:                                               ; preds = %43
  %65 = load i32*, i32** %6, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 4
  store i32* %65, i32** %67, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 3
  store %struct.TYPE_13__* %68, %struct.TYPE_13__** %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  store i32* %72, i32** %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  store i32* %76, i32** %78, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  store i32* %79, i32** %81, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* @BIO_C_SET_EX_ARG, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %85 = call i32 @BIO_ctrl(i32* %82, i32 %83, i32 0, %struct.TYPE_11__* %84)
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  store i32* %87, i32** %4, align 8
  br label %93

88:                                               ; preds = %63, %42, %35
  %89 = load i32*, i32** %9, align 8
  %90 = call i32 @BIO_free(i32* %89)
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %92 = call i32 @OPENSSL_free(%struct.TYPE_11__* %91)
  store i32* null, i32** %4, align 8
  br label %93

93:                                               ; preds = %88, %64, %22
  %94 = load i32*, i32** %4, align 8
  ret i32* %94
}

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local %struct.TYPE_11__* @OPENSSL_zalloc(i32) #1

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_f_asn1(...) #1

declare dso_local i32* @BIO_push(i32*, i32*) #1

declare dso_local i32 @BIO_asn1_set_prefix(i32*, i32, i32) #1

declare dso_local i32 @BIO_asn1_set_suffix(i32*, i32, i32) #1

declare dso_local i32 @BIO_ctrl(i32*, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
