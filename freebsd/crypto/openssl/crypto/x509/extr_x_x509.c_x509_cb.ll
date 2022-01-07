; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x_x509.c_x509_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x_x509.c_x509_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32 }

@CRYPTO_EX_INDEX_X509 = common dso_local global i32 0, align 4
@IPAddressFamily_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**, i32*, i8*)* @x509_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_cb(i32 %0, i32** %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %6, align 4
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i32**, i32*** %7, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %10, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %142 [
    i32 130, label %15
    i32 128, label %58
    i32 129, label %99
  ]

15:                                               ; preds = %4
  %16 = load i32, i32* @CRYPTO_EX_INDEX_X509, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 11
  %20 = call i32 @CRYPTO_free_ex_data(i32 %16, %struct.TYPE_4__* %17, i32* %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 10
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @X509_CERT_AUX_free(i32* %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 9
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @ASN1_OCTET_STRING_free(i32* %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 8
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @AUTHORITY_KEYID_free(i32* %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 7
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @CRL_DIST_POINTS_free(i32* %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 6
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @policy_cache_free(i32* %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @GENERAL_NAMES_free(i32* %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @NAME_CONSTRAINTS_free(i32* %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* @IPAddressFamily_free, align 4
  %53 = call i32 @sk_IPAddressFamily_pop_free(i32* %51, i32 %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @ASIdentifiers_free(i32* %56)
  br label %58

58:                                               ; preds = %4, %15
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 16
  store i32 0, i32* %60, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 15
  store i32 0, i32* %62, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 14
  store i32 0, i32* %64, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 13
  store i32 0, i32* %66, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 12
  store i32 0, i32* %68, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 -1, i32* %70, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i32 -1, i32* %72, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 9
  store i32* null, i32** %74, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 8
  store i32* null, i32** %76, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 6
  store i32* null, i32** %78, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 5
  store i32* null, i32** %80, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 4
  store i32* null, i32** %82, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  store i32* null, i32** %84, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  store i32* null, i32** %86, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 10
  store i32* null, i32** %88, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 7
  store i32* null, i32** %90, align 8
  %91 = load i32, i32* @CRYPTO_EX_INDEX_X509, align 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 11
  %95 = call i32 @CRYPTO_new_ex_data(i32 %91, %struct.TYPE_4__* %92, i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %143

98:                                               ; preds = %58
  br label %142

99:                                               ; preds = %4
  %100 = load i32, i32* @CRYPTO_EX_INDEX_X509, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 11
  %104 = call i32 @CRYPTO_free_ex_data(i32 %100, %struct.TYPE_4__* %101, i32* %103)
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 10
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @X509_CERT_AUX_free(i32* %107)
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 9
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @ASN1_OCTET_STRING_free(i32* %111)
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 8
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @AUTHORITY_KEYID_free(i32* %115)
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 7
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @CRL_DIST_POINTS_free(i32* %119)
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 6
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @policy_cache_free(i32* %123)
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 5
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @GENERAL_NAMES_free(i32* %127)
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 4
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @NAME_CONSTRAINTS_free(i32* %131)
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* @IPAddressFamily_free, align 4
  %137 = call i32 @sk_IPAddressFamily_pop_free(i32* %135, i32 %136)
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @ASIdentifiers_free(i32* %140)
  br label %142

142:                                              ; preds = %4, %99, %98
  store i32 1, i32* %5, align 4
  br label %143

143:                                              ; preds = %142, %97
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32 @CRYPTO_free_ex_data(i32, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @X509_CERT_AUX_free(i32*) #1

declare dso_local i32 @ASN1_OCTET_STRING_free(i32*) #1

declare dso_local i32 @AUTHORITY_KEYID_free(i32*) #1

declare dso_local i32 @CRL_DIST_POINTS_free(i32*) #1

declare dso_local i32 @policy_cache_free(i32*) #1

declare dso_local i32 @GENERAL_NAMES_free(i32*) #1

declare dso_local i32 @NAME_CONSTRAINTS_free(i32*) #1

declare dso_local i32 @sk_IPAddressFamily_pop_free(i32*, i32) #1

declare dso_local i32 @ASIdentifiers_free(i32*) #1

declare dso_local i32 @CRYPTO_new_ex_data(i32, %struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
