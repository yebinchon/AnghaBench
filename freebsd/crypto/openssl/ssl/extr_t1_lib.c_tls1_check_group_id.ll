; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_tls1_check_group_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_tls1_check_group_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@TLS1_CK_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256 = common dso_local global i64 0, align 8
@TLSEXT_curve_P_256 = common dso_local global i64 0, align 8
@TLS1_CK_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384 = common dso_local global i64 0, align 8
@TLSEXT_curve_P_384 = common dso_local global i64 0, align 8
@SSL_SECOP_CURVE_CHECK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls1_check_group_id(%struct.TYPE_13__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* %6, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %94

14:                                               ; preds = %3
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = call i64 @tls1_suiteb(%struct.TYPE_13__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %57

18:                                               ; preds = %14
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = icmp ne %struct.TYPE_10__* %24, null
  br i1 %25, label %26, label %57

26:                                               ; preds = %18
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @TLS1_CK_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %26
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @TLSEXT_curve_P_256, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %94

43:                                               ; preds = %38
  br label %56

44:                                               ; preds = %26
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @TLS1_CK_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @TLSEXT_curve_P_384, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %94

53:                                               ; preds = %48
  br label %55

54:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %94

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %55, %43
  br label %57

57:                                               ; preds = %56, %18, %14
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %62 = call i32 @tls1_get_supported_groups(%struct.TYPE_13__* %61, i64** %8, i64* %9)
  %63 = load i64, i64* %6, align 8
  %64 = load i64*, i64** %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @tls1_in_list(i64 %63, i64* %64, i64 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %94

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %57
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load i32, i32* @SSL_SECOP_CURVE_CHECK, align 4
  %74 = call i32 @tls_curve_allowed(%struct.TYPE_13__* %71, i64 %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %94

77:                                               ; preds = %70
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  store i32 1, i32* %4, align 4
  br label %94

83:                                               ; preds = %77
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %85 = call i32 @tls1_get_peer_groups(%struct.TYPE_13__* %84, i64** %8, i64* %9)
  %86 = load i64, i64* %9, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 1, i32* %4, align 4
  br label %94

89:                                               ; preds = %83
  %90 = load i64, i64* %6, align 8
  %91 = load i64*, i64** %8, align 8
  %92 = load i64, i64* %9, align 8
  %93 = call i32 @tls1_in_list(i64 %90, i64* %91, i64 %92)
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %89, %88, %82, %76, %68, %54, %52, %42, %13
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i64 @tls1_suiteb(%struct.TYPE_13__*) #1

declare dso_local i32 @tls1_get_supported_groups(%struct.TYPE_13__*, i64**, i64*) #1

declare dso_local i32 @tls1_in_list(i64, i64*, i64) #1

declare dso_local i32 @tls_curve_allowed(%struct.TYPE_13__*, i64, i32) #1

declare dso_local i32 @tls1_get_peer_groups(%struct.TYPE_13__*, i64**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
