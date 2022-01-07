; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_tls1_set_server_sigalgs.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_tls1_set_server_sigalgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64*, i32*, i32* }
%struct.TYPE_14__ = type { i64 }

@SSL_PKEY_NUM = common dso_local global i64 0, align 8
@CERT_PKEY_SIGN = common dso_local global i64 0, align 8
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS1_SET_SERVER_SIGALGS = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_AD_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@SSL_R_NO_SHARED_SIGNATURE_ALGORITHMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls1_set_server_sigalgs(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @OPENSSL_free(i32* %11)
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  store i32* null, i32** %14, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  store i64 0, i64* %4, align 8
  br label %17

17:                                               ; preds = %30, %1
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @SSL_PKEY_NUM, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %21
  %31 = load i64, i64* %4, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %4, align 8
  br label %17

33:                                               ; preds = %17
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %96

41:                                               ; preds = %33
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %96

49:                                               ; preds = %41
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = call i64 @tls12_get_psigalgs(%struct.TYPE_13__* %50, i32 1, i64** %5)
  store i64 %51, i64* %6, align 8
  store i64 0, i64* %4, align 8
  br label %52

52:                                               ; preds = %92, %49
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @SSL_PKEY_NUM, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %95

56:                                               ; preds = %52
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %58 = load i64, i64* %4, align 8
  %59 = call %struct.TYPE_14__* @tls1_get_legacy_sigalg(%struct.TYPE_13__* %57, i64 %58)
  store %struct.TYPE_14__* %59, %struct.TYPE_14__** %7, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %61 = icmp eq %struct.TYPE_14__* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %92

63:                                               ; preds = %56
  store i64 0, i64* %8, align 8
  br label %64

64:                                               ; preds = %88, %63
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %6, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %91

68:                                               ; preds = %64
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** %5, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %71, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %68
  %78 = load i64, i64* @CERT_PKEY_SIGN, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = load i64, i64* %4, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  store i64 %78, i64* %86, align 8
  br label %91

87:                                               ; preds = %68
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %8, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %8, align 8
  br label %64

91:                                               ; preds = %77, %64
  br label %92

92:                                               ; preds = %91, %62
  %93 = load i64, i64* %4, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %4, align 8
  br label %52

95:                                               ; preds = %52
  store i32 1, i32* %2, align 4
  br label %118

96:                                               ; preds = %41, %33
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %98 = call i32 @tls1_process_sigalgs(%struct.TYPE_13__* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %96
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %102 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %103 = load i32, i32* @SSL_F_TLS1_SET_SERVER_SIGALGS, align 4
  %104 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %105 = call i32 @SSLfatal(%struct.TYPE_13__* %101, i32 %102, i32 %103, i32 %104)
  store i32 0, i32* %2, align 4
  br label %118

106:                                              ; preds = %96
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  store i32 1, i32* %2, align 4
  br label %118

112:                                              ; preds = %106
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %114 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  %115 = load i32, i32* @SSL_F_TLS1_SET_SERVER_SIGALGS, align 4
  %116 = load i32, i32* @SSL_R_NO_SHARED_SIGNATURE_ALGORITHMS, align 4
  %117 = call i32 @SSLfatal(%struct.TYPE_13__* %113, i32 %114, i32 %115, i32 %116)
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %112, %111, %100, %95
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i64 @tls12_get_psigalgs(%struct.TYPE_13__*, i32, i64**) #1

declare dso_local %struct.TYPE_14__* @tls1_get_legacy_sigalg(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @tls1_process_sigalgs(%struct.TYPE_13__*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_13__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
