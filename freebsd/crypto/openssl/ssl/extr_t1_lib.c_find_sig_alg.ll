; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_find_sig_alg.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_find_sig_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i64, i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__*, %struct.TYPE_16__** }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32* }

@NID_sha1 = common dso_local global i64 0, align 8
@NID_sha224 = common dso_local global i64 0, align 8
@EVP_PKEY_DSA = common dso_local global i64 0, align 8
@EVP_PKEY_RSA = common dso_local global i64 0, align 8
@EVP_PKEY_EC = common dso_local global i64 0, align 8
@NID_undef = common dso_local global i32 0, align 4
@EVP_PKEY_RSA_PSS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_15__*, i32*, i32*)* @find_sig_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @find_sig_alg(%struct.TYPE_15__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %8, align 8
  store i32 -1, i32* %10, align 4
  store i64 0, i64* %9, align 8
  br label %13

13:                                               ; preds = %137, %3
  %14 = load i64, i64* %9, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %140

19:                                               ; preds = %13
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %21, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %22, i64 %23
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %8, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NID_sha1, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %49, label %31

31:                                               ; preds = %19
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NID_sha224, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %49, label %37

37:                                               ; preds = %31
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @EVP_PKEY_DSA, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @EVP_PKEY_RSA, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43, %37, %31, %19
  br label %137

50:                                               ; preds = %43
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %52 = call i32 @tls1_lookup_md(%struct.TYPE_16__* %51, i32* null)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  br label %137

55:                                               ; preds = %50
  %56 = load i32*, i32** %7, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %61 = call i32 @has_usable_cert(%struct.TYPE_15__* %59, %struct.TYPE_16__* %60, i32 -1)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %58, %55
  %64 = load i32*, i32** %7, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @is_cert_usable(%struct.TYPE_15__* %67, %struct.TYPE_16__* %68, i32* %69, i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %66, %58
  br label %137

74:                                               ; preds = %66, %63
  %75 = load i32*, i32** %7, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32*, i32** %7, align 8
  br label %91

79:                                               ; preds = %74
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  br label %91

91:                                               ; preds = %79, %77
  %92 = phi i32* [ %78, %77 ], [ %90, %79 ]
  store i32* %92, i32** %11, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @EVP_PKEY_EC, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %121

98:                                               ; preds = %91
  %99 = load i32, i32* %10, align 4
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load i32*, i32** %11, align 8
  %103 = call i32* @EVP_PKEY_get0_EC_KEY(i32* %102)
  store i32* %103, i32** %12, align 8
  %104 = load i32*, i32** %12, align 8
  %105 = call i32 @EC_KEY_get0_group(i32* %104)
  %106 = call i32 @EC_GROUP_get_curve_name(i32 %105)
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %101, %98
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @NID_undef, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %107
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %114, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %137

120:                                              ; preds = %113, %107
  br label %136

121:                                              ; preds = %91
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @EVP_PKEY_RSA_PSS, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %121
  %128 = load i32*, i32** %11, align 8
  %129 = call i32 @EVP_PKEY_get0(i32* %128)
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %131 = call i32 @rsa_pss_check_min_key_size(i32 %129, %struct.TYPE_16__* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %127
  br label %137

134:                                              ; preds = %127
  br label %135

135:                                              ; preds = %134, %121
  br label %136

136:                                              ; preds = %135, %120
  br label %140

137:                                              ; preds = %133, %119, %73, %54, %49
  %138 = load i64, i64* %9, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %9, align 8
  br label %13

140:                                              ; preds = %136, %13
  %141 = load i64, i64* %9, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %141, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %4, align 8
  br label %149

147:                                              ; preds = %140
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %148, %struct.TYPE_16__** %4, align 8
  br label %149

149:                                              ; preds = %147, %146
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  ret %struct.TYPE_16__* %150
}

declare dso_local i32 @tls1_lookup_md(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @has_usable_cert(%struct.TYPE_15__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @is_cert_usable(%struct.TYPE_15__*, %struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i32* @EVP_PKEY_get0_EC_KEY(i32*) #1

declare dso_local i32 @EC_GROUP_get_curve_name(i32) #1

declare dso_local i32 @EC_KEY_get0_group(i32*) #1

declare dso_local i32 @rsa_pss_check_min_key_size(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @EVP_PKEY_get0(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
