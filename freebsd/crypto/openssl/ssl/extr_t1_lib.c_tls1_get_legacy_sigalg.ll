; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_tls1_get_legacy_sigalg.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_tls1_get_legacy_sigalg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__*, %struct.TYPE_13__*, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@SSL_PKEY_NUM = common dso_local global i64 0, align 8
@SSL_PKEY_GOST01 = common dso_local global i32 0, align 4
@SSL_aGOST01 = common dso_local global i64 0, align 8
@SSL_PKEY_GOST12_512 = common dso_local global i32 0, align 4
@tls_default_sigalg = common dso_local global i32* null, align 8
@SSL_PKEY_RSA = common dso_local global i32 0, align 4
@legacy_rsa_sigalg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_17__*, i32)* @tls1_get_legacy_sigalg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tls1_get_legacy_sigalg(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %104

12:                                               ; preds = %2
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %87

17:                                               ; preds = %12
  store i64 0, i64* %6, align 8
  br label %18

18:                                               ; preds = %42, %17
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @SSL_PKEY_NUM, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = load i64, i64* %6, align 8
  %24 = call %struct.TYPE_16__* @ssl_cert_lookup_by_idx(i64 %23)
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %7, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %27, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %22
  %39 = load i64, i64* %6, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %5, align 4
  br label %45

41:                                               ; preds = %22
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %6, align 8
  br label %18

45:                                               ; preds = %38, %18
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @SSL_PKEY_GOST01, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %86

49:                                               ; preds = %45
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* @SSL_aGOST01, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %86

61:                                               ; preds = %49
  %62 = load i32, i32* @SSL_PKEY_GOST12_512, align 4
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %82, %61
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @SSL_PKEY_GOST01, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %63
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %67
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %5, align 4
  br label %85

81:                                               ; preds = %67
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %8, align 4
  br label %63

85:                                               ; preds = %79, %63
  br label %86

86:                                               ; preds = %85, %49, %45
  br label %103

87:                                               ; preds = %12
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %96, align 8
  %98 = ptrtoint %struct.TYPE_14__* %92 to i64
  %99 = ptrtoint %struct.TYPE_14__* %97 to i64
  %100 = sub i64 %98, %99
  %101 = sdiv exact i64 %100, 8
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %87, %86
  br label %104

104:                                              ; preds = %103, %2
  %105 = load i32, i32* %5, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %5, align 4
  %109 = load i32*, i32** @tls_default_sigalg, align 8
  %110 = call i64 @OSSL_NELEM(i32* %109)
  %111 = trunc i64 %110 to i32
  %112 = icmp sge i32 %108, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %107, %104
  store i32* null, i32** %3, align 8
  br label %136

114:                                              ; preds = %107
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %116 = call i64 @SSL_USE_SIGALGS(%struct.TYPE_17__* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @SSL_PKEY_RSA, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %135

122:                                              ; preds = %118, %114
  %123 = load i32*, i32** @tls_default_sigalg, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call i32* @tls1_lookup_sigalg(i32 %127)
  store i32* %128, i32** %9, align 8
  %129 = load i32*, i32** %9, align 8
  %130 = call i32 @tls1_lookup_md(i32* %129, i32* null)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %122
  store i32* null, i32** %3, align 8
  br label %136

133:                                              ; preds = %122
  %134 = load i32*, i32** %9, align 8
  store i32* %134, i32** %3, align 8
  br label %136

135:                                              ; preds = %118
  store i32* @legacy_rsa_sigalg, i32** %3, align 8
  br label %136

136:                                              ; preds = %135, %133, %132, %113
  %137 = load i32*, i32** %3, align 8
  ret i32* %137
}

declare dso_local %struct.TYPE_16__* @ssl_cert_lookup_by_idx(i64) #1

declare dso_local i64 @OSSL_NELEM(i32*) #1

declare dso_local i64 @SSL_USE_SIGALGS(%struct.TYPE_17__*) #1

declare dso_local i32* @tls1_lookup_sigalg(i32) #1

declare dso_local i32 @tls1_lookup_md(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
