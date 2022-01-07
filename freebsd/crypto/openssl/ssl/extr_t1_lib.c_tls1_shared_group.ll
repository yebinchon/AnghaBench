; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_tls1_shared_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_tls1_shared_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@TLS1_CK_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256 = common dso_local global i64 0, align 8
@TLSEXT_curve_P_256 = common dso_local global i32 0, align 4
@TLS1_CK_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384 = common dso_local global i64 0, align 8
@TLSEXT_curve_P_384 = common dso_local global i32 0, align 4
@SSL_OP_CIPHER_SERVER_PREFERENCE = common dso_local global i32 0, align 4
@SSL_SECOP_CURVE_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls1_shared_group(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %105

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, -2
  br i1 %21, label %22, label %48

22:                                               ; preds = %19
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = call i64 @tls1_suiteb(%struct.TYPE_13__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* @TLS1_CK_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* @TLSEXT_curve_P_256, align 4
  store i32 %39, i32* %3, align 4
  br label %105

40:                                               ; preds = %26
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* @TLS1_CK_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @TLSEXT_curve_P_384, align 4
  store i32 %45, i32* %3, align 4
  br label %105

46:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %105

47:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %19
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @SSL_OP_CIPHER_SERVER_PREFERENCE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = call i32 @tls1_get_supported_groups(%struct.TYPE_13__* %56, i32** %6, i64* %8)
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %59 = call i32 @tls1_get_peer_groups(%struct.TYPE_13__* %58, i32** %7, i64* %9)
  br label %65

60:                                               ; preds = %48
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %62 = call i32 @tls1_get_peer_groups(%struct.TYPE_13__* %61, i32** %6, i64* %8)
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = call i32 @tls1_get_supported_groups(%struct.TYPE_13__* %63, i32** %7, i64* %9)
  br label %65

65:                                               ; preds = %60, %55
  store i32 0, i32* %11, align 4
  store i64 0, i64* %10, align 8
  br label %66

66:                                               ; preds = %96, %65
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %8, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %99

70:                                               ; preds = %66
  %71 = load i32*, i32** %6, align 8
  %72 = load i64, i64* %10, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @tls1_in_list(i32 %75, i32* %76, i64 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %70
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @SSL_SECOP_CURVE_SHARED, align 4
  %84 = call i32 @tls_curve_allowed(%struct.TYPE_13__* %81, i32 %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %80, %70
  br label %96

87:                                               ; preds = %80
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* %13, align 4
  store i32 %92, i32* %3, align 4
  br label %105

93:                                               ; preds = %87
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %93, %86
  %97 = load i64, i64* %10, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %10, align 8
  br label %66

99:                                               ; preds = %66
  %100 = load i32, i32* %5, align 4
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %3, align 4
  br label %105

104:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %102, %91, %46, %44, %38, %18
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i64 @tls1_suiteb(%struct.TYPE_13__*) #1

declare dso_local i32 @tls1_get_supported_groups(%struct.TYPE_13__*, i32**, i64*) #1

declare dso_local i32 @tls1_get_peer_groups(%struct.TYPE_13__*, i32**, i64*) #1

declare dso_local i32 @tls1_in_list(i32, i32*, i64) #1

declare dso_local i32 @tls_curve_allowed(%struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
