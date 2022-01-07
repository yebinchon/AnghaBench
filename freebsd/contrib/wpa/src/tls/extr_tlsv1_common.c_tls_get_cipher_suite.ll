; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_common.c_tls_get_cipher_suite.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_common.c_tls_get_cipher_suite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_cipher_suite = type { i64 }

@NUM_TLS_CIPHER_SUITES = common dso_local global i64 0, align 8
@tls_cipher_suites = common dso_local global %struct.tls_cipher_suite* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tls_cipher_suite* @tls_get_cipher_suite(i64 %0) #0 {
  %2 = alloca %struct.tls_cipher_suite*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %22, %1
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @NUM_TLS_CIPHER_SUITES, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %25

9:                                                ; preds = %5
  %10 = load %struct.tls_cipher_suite*, %struct.tls_cipher_suite** @tls_cipher_suites, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %struct.tls_cipher_suite, %struct.tls_cipher_suite* %10, i64 %11
  %13 = getelementptr inbounds %struct.tls_cipher_suite, %struct.tls_cipher_suite* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = load %struct.tls_cipher_suite*, %struct.tls_cipher_suite** @tls_cipher_suites, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.tls_cipher_suite, %struct.tls_cipher_suite* %18, i64 %19
  store %struct.tls_cipher_suite* %20, %struct.tls_cipher_suite** %2, align 8
  br label %26

21:                                               ; preds = %9
  br label %22

22:                                               ; preds = %21
  %23 = load i64, i64* %4, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %4, align 8
  br label %5

25:                                               ; preds = %5
  store %struct.tls_cipher_suite* null, %struct.tls_cipher_suite** %2, align 8
  br label %26

26:                                               ; preds = %25, %17
  %27 = load %struct.tls_cipher_suite*, %struct.tls_cipher_suite** %2, align 8
  ret %struct.tls_cipher_suite* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
