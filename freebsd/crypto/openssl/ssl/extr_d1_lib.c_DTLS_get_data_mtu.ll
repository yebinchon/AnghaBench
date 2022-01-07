; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_d1_lib.c_DTLS_get_data_mtu.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_d1_lib.c_DTLS_get_data_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@DTLS1_RT_HEADER_LENGTH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DTLS_get_data_mtu(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = call i32* @SSL_get_current_cipher(%struct.TYPE_7__* %10)
  store i32* %11, i32** %8, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %68

20:                                               ; preds = %1
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @ssl_cipher_get_overhead(i32* %21, i64* %4, i64* %5, i64* %6, i64* %7)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i64 0, i64* %2, align 8
  br label %68

25:                                               ; preds = %20
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = call i64 @SSL_READ_ETM(%struct.TYPE_7__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* %7, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %7, align 8
  br label %37

33:                                               ; preds = %25
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @DTLS1_RT_HEADER_LENGTH, align 8
  %40 = add i64 %38, %39
  %41 = load i64, i64* %9, align 8
  %42 = icmp uge i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i64 0, i64* %2, align 8
  br label %68

44:                                               ; preds = %37
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @DTLS1_RT_HEADER_LENGTH, align 8
  %47 = add i64 %45, %46
  %48 = load i64, i64* %9, align 8
  %49 = sub i64 %48, %47
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %6, align 8
  %55 = urem i64 %53, %54
  %56 = load i64, i64* %9, align 8
  %57 = sub i64 %56, %55
  store i64 %57, i64* %9, align 8
  br label %58

58:                                               ; preds = %52, %44
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp uge i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i64 0, i64* %2, align 8
  br label %68

63:                                               ; preds = %58
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* %9, align 8
  %66 = sub i64 %65, %64
  store i64 %66, i64* %9, align 8
  %67 = load i64, i64* %9, align 8
  store i64 %67, i64* %2, align 8
  br label %68

68:                                               ; preds = %63, %62, %43, %24, %19
  %69 = load i64, i64* %2, align 8
  ret i64 %69
}

declare dso_local i32* @SSL_get_current_cipher(%struct.TYPE_7__*) #1

declare dso_local i32 @ssl_cipher_get_overhead(i32*, i64*, i64*, i64*, i64*) #1

declare dso_local i64 @SSL_READ_ETM(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
