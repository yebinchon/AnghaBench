; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions.c_tls_parse_all_extensions.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions.c_tls_parse_all_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 (%struct.TYPE_15__*, i32, i32)* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { i32 }

@ext_defs = common dso_local global %struct.TYPE_17__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_parse_all_extensions(%struct.TYPE_15__* %0, i32 %1, %struct.TYPE_16__* %2, i32* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ext_defs, align 8
  %18 = call i64 @OSSL_NELEM(%struct.TYPE_17__* %17)
  store i64 %18, i64* %15, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %15, align 8
  %26 = add i64 %25, %24
  store i64 %26, i64* %15, align 8
  store i64 0, i64* %14, align 8
  br label %27

27:                                               ; preds = %42, %6
  %28 = load i64, i64* %14, align 8
  %29 = load i64, i64* %15, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %33 = load i64, i64* %14, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = load i64, i64* %12, align 8
  %38 = call i32 @tls_parse_extension(%struct.TYPE_15__* %32, i64 %33, i32 %34, %struct.TYPE_16__* %35, i32* %36, i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %89

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %14, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %14, align 8
  br label %27

45:                                               ; preds = %27
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %88

48:                                               ; preds = %45
  store i64 0, i64* %14, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ext_defs, align 8
  store %struct.TYPE_17__* %49, %struct.TYPE_17__** %16, align 8
  br label %50

50:                                               ; preds = %82, %48
  %51 = load i64, i64* %14, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ext_defs, align 8
  %53 = call i64 @OSSL_NELEM(%struct.TYPE_17__* %52)
  %54 = icmp ult i64 %51, %53
  br i1 %54, label %55, label %87

55:                                               ; preds = %50
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load i32 (%struct.TYPE_15__*, i32, i32)*, i32 (%struct.TYPE_15__*, i32, i32)** %57, align 8
  %59 = icmp ne i32 (%struct.TYPE_15__*, i32, i32)* %58, null
  br i1 %59, label %60, label %81

60:                                               ; preds = %55
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %60
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  %70 = load i32 (%struct.TYPE_15__*, i32, i32)*, i32 (%struct.TYPE_15__*, i32, i32)** %69, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %74 = load i64, i64* %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 %70(%struct.TYPE_15__* %71, i32 %72, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %67
  store i32 0, i32* %7, align 4
  br label %89

81:                                               ; preds = %67, %60, %55
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %14, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %14, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 1
  store %struct.TYPE_17__* %86, %struct.TYPE_17__** %16, align 8
  br label %50

87:                                               ; preds = %50
  br label %88

88:                                               ; preds = %87, %45
  store i32 1, i32* %7, align 4
  br label %89

89:                                               ; preds = %88, %80, %40
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i64 @OSSL_NELEM(%struct.TYPE_17__*) #1

declare dso_local i32 @tls_parse_extension(%struct.TYPE_15__*, i64, i32, %struct.TYPE_16__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
