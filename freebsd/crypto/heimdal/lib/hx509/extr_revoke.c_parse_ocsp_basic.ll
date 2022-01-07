; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_revoke.c_parse_ocsp_basic.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_revoke.c_parse_ocsp_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, i32 }

@ASN1_EXTRA_DATA = common dso_local global i32 0, align 4
@HX509_REVOKE_WRONG_DATA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@asn1_oid_id_pkix_ocsp_basic = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32*)* @parse_ocsp_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ocsp_basic(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @memset(i32* %11, i32 0, i32 4)
  %13 = load i8*, i8** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @decode_OCSPResponse(i8* %13, i64 %14, %struct.TYPE_8__* %8, i64* %9)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %4, align 4
  br label %84

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = call i32 @free_OCSPResponse(%struct.TYPE_8__* %8)
  %26 = load i32, i32* @ASN1_EXTRA_DATA, align 4
  store i32 %26, i32* %4, align 4
  br label %84

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %31 [
    i32 128, label %30
  ]

30:                                               ; preds = %27
  br label %34

31:                                               ; preds = %27
  %32 = call i32 @free_OCSPResponse(%struct.TYPE_8__* %8)
  %33 = load i32, i32* @HX509_REVOKE_WRONG_DATA, align 4
  store i32 %33, i32* %4, align 4
  br label %84

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = icmp eq %struct.TYPE_7__* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = call i32 @free_OCSPResponse(%struct.TYPE_8__* %8)
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %4, align 4
  br label %84

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = call i32 @der_heim_oid_cmp(i32* %44, i32* @asn1_oid_id_pkix_ocsp_basic)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = call i32 @free_OCSPResponse(%struct.TYPE_8__* %8)
  %50 = load i32, i32* @HX509_REVOKE_WRONG_DATA, align 4
  store i32 %50, i32* %4, align 4
  br label %84

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @decode_OCSPBasicOCSPResponse(i32 %56, i64 %61, i32* %62, i64* %9)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %51
  %67 = call i32 @free_OCSPResponse(%struct.TYPE_8__* %8)
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %84

69:                                               ; preds = %51
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %70, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %69
  %78 = call i32 @free_OCSPResponse(%struct.TYPE_8__* %8)
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @free_OCSPBasicOCSPResponse(i32* %79)
  %81 = load i32, i32* @ASN1_EXTRA_DATA, align 4
  store i32 %81, i32* %4, align 4
  br label %84

82:                                               ; preds = %69
  %83 = call i32 @free_OCSPResponse(%struct.TYPE_8__* %8)
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %77, %66, %48, %38, %31, %24, %18
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @decode_OCSPResponse(i8*, i64, %struct.TYPE_8__*, i64*) #1

declare dso_local i32 @free_OCSPResponse(%struct.TYPE_8__*) #1

declare dso_local i32 @der_heim_oid_cmp(i32*, i32*) #1

declare dso_local i32 @decode_OCSPBasicOCSPResponse(i32, i64, i32*, i64*) #1

declare dso_local i32 @free_OCSPBasicOCSPResponse(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
