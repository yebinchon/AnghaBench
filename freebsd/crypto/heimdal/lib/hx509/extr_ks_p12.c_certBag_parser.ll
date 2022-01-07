; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ks_p12.c_certBag_parser.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ks_p12.c_certBag_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hx509_collector = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }

@asn1_oid_id_pkcs_9_at_certTypes_x509 = common dso_local global i32 0, align 4
@asn1_oid_id_pkcs_9_at_localKeyId = common dso_local global i32 0, align 4
@asn1_oid_id_pkcs_9_at_friendlyName = common dso_local global i32 0, align 4
@__const.certBag_parser.oids = private unnamed_addr constant [2 x i32*] [i32* @asn1_oid_id_pkcs_9_at_localKeyId, i32* @asn1_oid_id_pkcs_9_at_friendlyName], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.hx509_collector*, i8*, i64, i32*)* @certBag_parser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @certBag_parser(i32 %0, %struct.hx509_collector* %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hx509_collector*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca [2 x i32*], align 16
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.hx509_collector* %1, %struct.hx509_collector** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @decode_PKCS12_CertBag(i8* %20, i64 %21, %struct.TYPE_12__* %14, i32* null)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* %15, align 4
  store i32 %26, i32* %6, align 4
  br label %97

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %29 = call i64 @der_heim_oid_cmp(i32* @asn1_oid_id_pkcs_9_at_certTypes_x509, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @free_PKCS12_CertBag(%struct.TYPE_12__* %14)
  store i32 0, i32* %6, align 4
  br label %97

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @decode_PKCS12_OctetString(i32 %36, i32 %39, %struct.TYPE_11__* %12, i32* null)
  store i32 %40, i32* %15, align 4
  %41 = call i32 @free_PKCS12_CertBag(%struct.TYPE_12__* %14)
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* %15, align 4
  store i32 %45, i32* %6, align 4
  br label %97

46:                                               ; preds = %33
  %47 = load i32, i32* %7, align 4
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @hx509_cert_init_data(i32 %47, i32 %49, i32 %51, i32* %13)
  store i32 %52, i32* %15, align 4
  %53 = call i32 @der_free_octet_string(%struct.TYPE_11__* %12)
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* %15, align 4
  store i32 %57, i32* %6, align 4
  br label %97

58:                                               ; preds = %46
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.hx509_collector*, %struct.hx509_collector** %8, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @_hx509_collector_certs_add(i32 %59, %struct.hx509_collector* %60, i32 %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @hx509_cert_free(i32 %66)
  %68 = load i32, i32* %15, align 4
  store i32 %68, i32* %6, align 4
  br label %97

69:                                               ; preds = %58
  %70 = bitcast [2 x i32*]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %70, i8* align 16 bitcast ([2 x i32*]* @__const.certBag_parser.oids to i8*), i64 16, i1 false)
  store i64 0, i64* %18, align 8
  br label %71

71:                                               ; preds = %91, %69
  %72 = load i64, i64* %18, align 8
  %73 = icmp ult i64 %72, 2
  br i1 %73, label %74, label %94

74:                                               ; preds = %71
  %75 = load i64, i64* %18, align 8
  %76 = getelementptr inbounds [2 x i32*], [2 x i32*]* %17, i64 0, i64 %75
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %19, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = load i32*, i32** %19, align 8
  %80 = call %struct.TYPE_13__* @find_attribute(i32* %78, i32* %79)
  store %struct.TYPE_13__* %80, %struct.TYPE_13__** %16, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %82 = icmp ne %struct.TYPE_13__* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %74
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32*, i32** %19, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = call i32 @_hx509_set_cert_attribute(i32 %84, i32 %85, i32* %86, i32* %88)
  br label %90

90:                                               ; preds = %83, %74
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %18, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %18, align 8
  br label %71

94:                                               ; preds = %71
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @hx509_cert_free(i32 %95)
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %94, %65, %56, %44, %31, %25
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @decode_PKCS12_CertBag(i8*, i64, %struct.TYPE_12__*, i32*) #1

declare dso_local i64 @der_heim_oid_cmp(i32*, i32*) #1

declare dso_local i32 @free_PKCS12_CertBag(%struct.TYPE_12__*) #1

declare dso_local i32 @decode_PKCS12_OctetString(i32, i32, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @hx509_cert_init_data(i32, i32, i32, i32*) #1

declare dso_local i32 @der_free_octet_string(%struct.TYPE_11__*) #1

declare dso_local i32 @_hx509_collector_certs_add(i32, %struct.hx509_collector*, i32) #1

declare dso_local i32 @hx509_cert_free(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_13__* @find_attribute(i32*, i32*) #1

declare dso_local i32 @_hx509_set_cert_attribute(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
