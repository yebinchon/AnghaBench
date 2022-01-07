; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions.c_tls_validate_all_contexts.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions.c_tls_validate_all_contexts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }

@ext_defs = common dso_local global %struct.TYPE_17__* null, align 8
@ENDPOINT_BOTH = common dso_local global i32 0, align 4
@SSL_EXT_CLIENT_HELLO = common dso_local global i32 0, align 4
@ENDPOINT_SERVER = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_2_SERVER_HELLO = common dso_local global i32 0, align 4
@ENDPOINT_CLIENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_validate_all_contexts(%struct.TYPE_15__* %0, i32 %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ext_defs, align 8
  %17 = call i64 @OSSL_NELEM(%struct.TYPE_17__* %16)
  store i64 %17, i64* %10, align 8
  %18 = load i32, i32* @ENDPOINT_BOTH, align 4
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @SSL_EXT_CLIENT_HELLO, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @ENDPOINT_SERVER, align 4
  store i32 %24, i32* %14, align 4
  br label %33

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @SSL_EXT_TLS1_2_SERVER_HELLO, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @ENDPOINT_CLIENT, align 4
  store i32 %31, i32* %14, align 4
  br label %32

32:                                               ; preds = %30, %25
  br label %33

33:                                               ; preds = %32, %23
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %34, %40
  store i64 %41, i64* %9, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_16__* %42, %struct.TYPE_16__** %12, align 8
  store i64 0, i64* %8, align 8
  br label %43

43:                                               ; preds = %91, %33
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %96

47:                                               ; preds = %43
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %91

53:                                               ; preds = %47
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %10, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ext_defs, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %13, align 4
  br label %83

63:                                               ; preds = %53
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %15, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.TYPE_14__* @custom_ext_find(%struct.TYPE_12__* %67, i32 %68, i32 %71, i64* %11)
  store %struct.TYPE_14__* %72, %struct.TYPE_14__** %15, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %74 = icmp ne %struct.TYPE_14__* %73, null
  %75 = zext i1 %74 to i32
  %76 = call i32 @ossl_assert(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %97

79:                                               ; preds = %63
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %79, %57
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @validate_context(%struct.TYPE_15__* %84, i32 %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %97

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %52
  %92 = load i64, i64* %8, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %8, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 1
  store %struct.TYPE_16__* %95, %struct.TYPE_16__** %12, align 8
  br label %43

96:                                               ; preds = %43
  store i32 1, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %89, %78
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i64 @OSSL_NELEM(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_14__* @custom_ext_find(%struct.TYPE_12__*, i32, i32, i64*) #1

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32 @validate_context(%struct.TYPE_15__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
