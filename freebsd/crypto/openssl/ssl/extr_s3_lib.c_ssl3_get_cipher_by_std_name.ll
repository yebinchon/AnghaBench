; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_s3_lib.c_ssl3_get_cipher_by_std_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_s3_lib.c_ssl3_get_cipher_by_std_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }

@tls13_ciphers = common dso_local global %struct.TYPE_7__* null, align 8
@ssl3_ciphers = common dso_local global %struct.TYPE_7__* null, align 8
@TLS13_NUM_CIPHERS = common dso_local global i64 0, align 8
@SSL3_NUM_CIPHERS = common dso_local global i64 0, align 8
@ssl3_scsvs = common dso_local global %struct.TYPE_7__* null, align 8
@SSL3_NUM_SCSVS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @ssl3_get_cipher_by_std_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca [2 x %struct.TYPE_7__*], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [2 x i64], align 16
  store i8* %0, i8** %2, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds [2 x %struct.TYPE_7__*], [2 x %struct.TYPE_7__*]* %5, i64 0, i64 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @tls13_ciphers, align 8
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %9, i64 1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ssl3_ciphers, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %14 = load i64, i64* @TLS13_NUM_CIPHERS, align 8
  store i64 %14, i64* %13, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 1
  %16 = load i64, i64* @SSL3_NUM_CIPHERS, align 8
  store i64 %16, i64* %15, align 8
  store i64 0, i64* %7, align 8
  br label %17

17:                                               ; preds = %54, %1
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds [2 x %struct.TYPE_7__*], [2 x %struct.TYPE_7__*]* %5, i64 0, i64 0
  %20 = call i64 @OSSL_NELEM(%struct.TYPE_7__** %19)
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %22, label %57

22:                                               ; preds = %17
  store i64 0, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds [2 x %struct.TYPE_7__*], [2 x %struct.TYPE_7__*]* %5, i64 0, i64 %23
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %4, align 8
  br label %26

26:                                               ; preds = %48, %22
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %26
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %48

38:                                               ; preds = %32
  %39 = load i8*, i8** %2, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i64 @strcmp(i8* %39, i32* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %3, align 8
  br label %53

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %37
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %6, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 1
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %4, align 8
  br label %26

53:                                               ; preds = %45, %26
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %7, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %7, align 8
  br label %17

57:                                               ; preds = %17
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = icmp eq %struct.TYPE_7__* %58, null
  br i1 %59, label %60, label %82

60:                                               ; preds = %57
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ssl3_scsvs, align 8
  store %struct.TYPE_7__* %61, %struct.TYPE_7__** %4, align 8
  store i64 0, i64* %6, align 8
  br label %62

62:                                               ; preds = %76, %60
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* @SSL3_NUM_SCSVS, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = load i8*, i8** %2, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i64 @strcmp(i8* %67, i32* %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %74, %struct.TYPE_7__** %3, align 8
  br label %81

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %6, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %6, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 1
  store %struct.TYPE_7__* %80, %struct.TYPE_7__** %4, align 8
  br label %62

81:                                               ; preds = %73, %62
  br label %82

82:                                               ; preds = %81, %57
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %83
}

declare dso_local i64 @OSSL_NELEM(%struct.TYPE_7__**) #1

declare dso_local i64 @strcmp(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
