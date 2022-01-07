; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_ticket.c_check_client_referral.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_ticket.c_check_client_referral.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32 }

@KRB5_PADATA_CLIENT_CANONICALIZED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Failed to decode ClientCanonicalized from realm %s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PA_ClientCanonicalizedNames = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"internal asn.1 error\00", align 1
@KRB5_KU_CANONICALIZED_NAMES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"Failed to verify client canonicalized data from realm %s\00", align 1
@KRB5_PRINC_NOMATCH = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [48 x i8] c"Requested name doesn't match in client referral\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Mapped name doesn't match in client referral\00", align 1
@FALSE = common dso_local global i64 0, align 8
@KRB5KRB_AP_ERR_MODIFIED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [48 x i8] c"Not same client principal returned as requested\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_23__*, %struct.TYPE_25__*, %struct.TYPE_25__*, i32*)* @check_client_referral to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @check_client_referral(i32 %0, %struct.TYPE_23__* %1, %struct.TYPE_25__* %2, %struct.TYPE_25__* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_27__, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_24__, align 8
  %16 = alloca %struct.TYPE_26__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %9, align 8
  store %struct.TYPE_25__* %3, %struct.TYPE_25__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %23 = icmp eq %struct.TYPE_20__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  br label %155

25:                                               ; preds = %5
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @KRB5_PADATA_CLIENT_CANONICALIZED, align 4
  %39 = call %struct.TYPE_26__* @krb5_find_padata(i32 %31, i32 %37, i32 %38, i32* %18)
  store %struct.TYPE_26__* %39, %struct.TYPE_26__** %16, align 8
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %41 = icmp eq %struct.TYPE_26__* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %25
  br label %155

43:                                               ; preds = %25
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @decode_PA_ClientCanonicalized(i32 %47, i32 %51, %struct.TYPE_27__* %13, i64* %17)
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %43
  %56 = load i32, i32* %7, align 4
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @N_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, i64, i32, ...) @krb5_set_error_message(i32 %56, i64 %57, i32 %58, i32 %61)
  %63 = load i64, i64* %12, align 8
  store i64 %63, i64* %6, align 8
  br label %169

64:                                               ; preds = %43
  %65 = load i32, i32* @PA_ClientCanonicalizedNames, align 4
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 0
  %71 = load i64, i64* %12, align 8
  %72 = call i32 @ASN1_MALLOC_ENCODE(i32 %65, i32 %67, i64 %69, %struct.TYPE_19__* %70, i64* %17, i64 %71)
  %73 = load i64, i64* %12, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %64
  %76 = call i32 @free_PA_ClientCanonicalized(%struct.TYPE_27__* %13)
  %77 = load i64, i64* %12, align 8
  store i64 %77, i64* %6, align 8
  br label %169

78:                                               ; preds = %64
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %17, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @krb5_abortx(i32 %84, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %78
  %87 = load i32, i32* %7, align 4
  %88 = load i32*, i32** %11, align 8
  %89 = call i64 @krb5_crypto_init(i32 %87, i32* %88, i32 0, i32* %14)
  store i64 %89, i64* %12, align 8
  %90 = load i64, i64* %12, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @free(i32 %94)
  %96 = call i32 @free_PA_ClientCanonicalized(%struct.TYPE_27__* %13)
  %97 = load i64, i64* %12, align 8
  store i64 %97, i64* %6, align 8
  br label %169

98:                                               ; preds = %86
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* @KRB5_KU_CANONICALIZED_NAMES, align 4
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 1
  %107 = call i64 @krb5_verify_checksum(i32 %99, i32 %100, i32 %101, i32 %103, i64 %105, i32* %106)
  store i64 %107, i64* %12, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @krb5_crypto_destroy(i32 %108, i32 %109)
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @free(i32 %112)
  %114 = load i64, i64* %12, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %98
  %117 = load i32, i32* %7, align 4
  %118 = load i64, i64* %12, align 8
  %119 = call i32 @N_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i32, i64, i32, ...) @krb5_set_error_message(i32 %117, i64 %118, i32 %119, i32 %122)
  %124 = call i32 @free_PA_ClientCanonicalized(%struct.TYPE_27__* %13)
  %125 = load i64, i64* %12, align 8
  store i64 %125, i64* %6, align 8
  br label %169

126:                                              ; preds = %98
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 1
  %131 = call i32 @_krb5_principal_compare_PrincipalName(i32 %127, %struct.TYPE_25__* %128, i32* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %140, label %133

133:                                              ; preds = %126
  %134 = call i32 @free_PA_ClientCanonicalized(%struct.TYPE_27__* %13)
  %135 = load i32, i32* %7, align 4
  %136 = load i64, i64* @KRB5_PRINC_NOMATCH, align 8
  %137 = call i32 @N_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %138 = call i32 (i32, i64, i32, ...) @krb5_set_error_message(i32 %135, i64 %136, i32 %137)
  %139 = load i64, i64* @KRB5_PRINC_NOMATCH, align 8
  store i64 %139, i64* %6, align 8
  br label %169

140:                                              ; preds = %126
  %141 = load i32, i32* %7, align 4
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 0
  %145 = call i32 @_krb5_principal_compare_PrincipalName(i32 %141, %struct.TYPE_25__* %142, i32* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %154, label %147

147:                                              ; preds = %140
  %148 = call i32 @free_PA_ClientCanonicalized(%struct.TYPE_27__* %13)
  %149 = load i32, i32* %7, align 4
  %150 = load i64, i64* @KRB5_PRINC_NOMATCH, align 8
  %151 = call i32 @N_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %152 = call i32 (i32, i64, i32, ...) @krb5_set_error_message(i32 %149, i64 %150, i32 %151)
  %153 = load i64, i64* @KRB5_PRINC_NOMATCH, align 8
  store i64 %153, i64* %6, align 8
  br label %169

154:                                              ; preds = %140
  store i64 0, i64* %6, align 8
  br label %169

155:                                              ; preds = %42, %24
  %156 = load i32, i32* %7, align 4
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %159 = call i64 @krb5_principal_compare(i32 %156, %struct.TYPE_25__* %157, %struct.TYPE_25__* %158)
  %160 = load i64, i64* @FALSE, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %155
  %163 = load i32, i32* %7, align 4
  %164 = load i64, i64* @KRB5KRB_AP_ERR_MODIFIED, align 8
  %165 = call i32 @N_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %166 = call i32 (i32, i64, i32, ...) @krb5_set_error_message(i32 %163, i64 %164, i32 %165)
  %167 = load i64, i64* @KRB5KRB_AP_ERR_MODIFIED, align 8
  store i64 %167, i64* %6, align 8
  br label %169

168:                                              ; preds = %155
  store i64 0, i64* %6, align 8
  br label %169

169:                                              ; preds = %168, %162, %154, %147, %133, %116, %92, %75, %55
  %170 = load i64, i64* %6, align 8
  ret i64 %170
}

declare dso_local %struct.TYPE_26__* @krb5_find_padata(i32, i32, i32, i32*) #1

declare dso_local i64 @decode_PA_ClientCanonicalized(i32, i32, %struct.TYPE_27__*, i64*) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i32, ...) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i32 @ASN1_MALLOC_ENCODE(i32, i32, i64, %struct.TYPE_19__*, i64*, i64) #1

declare dso_local i32 @free_PA_ClientCanonicalized(%struct.TYPE_27__*) #1

declare dso_local i32 @krb5_abortx(i32, i8*) #1

declare dso_local i64 @krb5_crypto_init(i32, i32*, i32, i32*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i64 @krb5_verify_checksum(i32, i32, i32, i32, i64, i32*) #1

declare dso_local i32 @krb5_crypto_destroy(i32, i32) #1

declare dso_local i32 @_krb5_principal_compare_PrincipalName(i32, %struct.TYPE_25__*, i32*) #1

declare dso_local i64 @krb5_principal_compare(i32, %struct.TYPE_25__*, %struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
