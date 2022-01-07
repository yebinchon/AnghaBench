; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_revoke.c_verify_ocsp.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_revoke.c_verify_ocsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.revoke_ocsp = type { i32*, %struct.TYPE_17__, i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32*, i32, i32*, i32* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@HX509_QUERY_MATCH_ISSUER_NAME = common dso_local global i32 0, align 4
@HX509_QUERY_MATCH_SUBJECT_NAME = common dso_local global i32 0, align 4
@HX509_QUERY_MATCH_KEY_HASH_SHA1 = common dso_local global i32 0, align 4
@HX509_PARENT_NOT_CA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Revoke OCSP signer is doesn't have CA as signer certificate\00", align 1
@HX509_ERROR_APPEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"OCSP signer signature invalid\00", align 1
@asn1_oid_id_pkix_kp_OCSPSigning = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"OCSP signature invalid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.revoke_ocsp*, i32, i64, i32*)* @verify_ocsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_ocsp(i32 %0, %struct.revoke_ocsp* %1, i32 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.revoke_ocsp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_18__, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.revoke_ocsp* %1, %struct.revoke_ocsp** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %16 = call i32 @_hx509_query_clear(%struct.TYPE_18__* %12)
  %17 = load i32, i32* @HX509_QUERY_MATCH_ISSUER_NAME, align 4
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = call %struct.TYPE_19__* @_hx509_get_cert(i32* %19)
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 3
  store i32* %22, i32** %23, align 8
  %24 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %7, align 8
  %25 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %54 [
    i32 128, label %30
    i32 129, label %42
  ]

30:                                               ; preds = %5
  %31 = load i32, i32* @HX509_QUERY_MATCH_SUBJECT_NAME, align 4
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 8
  %35 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %7, align 8
  %36 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 2
  store i32* %40, i32** %41, align 8
  br label %54

42:                                               ; preds = %5
  %43 = load i32, i32* @HX509_QUERY_MATCH_KEY_HASH_SHA1, align 4
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 8
  %47 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %7, align 8
  %48 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  store i32* %52, i32** %53, align 8
  br label %54

54:                                               ; preds = %5, %42, %30
  %55 = load i32, i32* %6, align 4
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @hx509_certs_find(i32 %55, i64 %56, %struct.TYPE_18__* %12, i32** %11)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  %61 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %7, align 8
  %62 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %7, align 8
  %68 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @hx509_certs_find(i32 %66, i64 %69, %struct.TYPE_18__* %12, i32** %11)
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %65, %60, %54
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %146

75:                                               ; preds = %71
  %76 = load i32*, i32** %11, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = call i64 @hx509_cert_cmp(i32* %76, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %121

80:                                               ; preds = %75
  %81 = load i32*, i32** %10, align 8
  %82 = call %struct.TYPE_19__* @_hx509_get_cert(i32* %81)
  store %struct.TYPE_19__* %82, %struct.TYPE_19__** %14, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = call %struct.TYPE_19__* @_hx509_get_cert(i32* %83)
  store %struct.TYPE_19__* %84, %struct.TYPE_19__** %15, align 8
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %87 = call i32 @_hx509_cert_is_parent_cmp(%struct.TYPE_19__* %85, %struct.TYPE_19__* %86, i32 0)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %80
  %91 = load i32, i32* @HX509_PARENT_NOT_CA, align 4
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @hx509_set_error_string(i32 %92, i32 0, i32 %93, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %146

95:                                               ; preds = %80
  %96 = load i32, i32* %6, align 4
  %97 = load i32*, i32** %10, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = call i32 @_hx509_verify_signature_bitstring(i32 %96, i32* %97, i32* %99, i32* %102, i32* %104)
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %95
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @HX509_ERROR_APPEND, align 4
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @hx509_set_error_string(i32 %109, i32 %110, i32 %111, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %146

113:                                              ; preds = %95
  %114 = load i32, i32* %6, align 4
  %115 = load i32*, i32** %11, align 8
  %116 = call i32 @hx509_cert_check_eku(i32 %114, i32* %115, i32* @asn1_oid_id_pkix_kp_OCSPSigning, i32 0)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %146

120:                                              ; preds = %113
  br label %121

121:                                              ; preds = %120, %75
  %122 = load i32, i32* %6, align 4
  %123 = load i32*, i32** %11, align 8
  %124 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %7, align 8
  %125 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 2
  %127 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %7, align 8
  %128 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %7, align 8
  %132 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = call i32 @_hx509_verify_signature_bitstring(i32 %122, i32* %123, i32* %126, i32* %130, i32* %133)
  store i32 %134, i32* %13, align 4
  %135 = load i32, i32* %13, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %121
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* @HX509_ERROR_APPEND, align 4
  %140 = load i32, i32* %13, align 4
  %141 = call i32 @hx509_set_error_string(i32 %138, i32 %139, i32 %140, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %146

142:                                              ; preds = %121
  %143 = load i32*, i32** %11, align 8
  %144 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %7, align 8
  %145 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %144, i32 0, i32 0
  store i32* %143, i32** %145, align 8
  store i32* null, i32** %11, align 8
  br label %146

146:                                              ; preds = %142, %137, %119, %108, %90, %74
  %147 = load i32*, i32** %11, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i32*, i32** %11, align 8
  %151 = call i32 @hx509_cert_free(i32* %150)
  br label %152

152:                                              ; preds = %149, %146
  %153 = load i32, i32* %13, align 4
  ret i32 %153
}

declare dso_local i32 @_hx509_query_clear(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_19__* @_hx509_get_cert(i32*) #1

declare dso_local i32 @hx509_certs_find(i32, i64, %struct.TYPE_18__*, i32**) #1

declare dso_local i64 @hx509_cert_cmp(i32*, i32*) #1

declare dso_local i32 @_hx509_cert_is_parent_cmp(%struct.TYPE_19__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

declare dso_local i32 @_hx509_verify_signature_bitstring(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @hx509_cert_check_eku(i32, i32*, i32*, i32) #1

declare dso_local i32 @hx509_cert_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
