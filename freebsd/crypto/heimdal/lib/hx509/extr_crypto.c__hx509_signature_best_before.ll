; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c__hx509_signature_best_before.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c__hx509_signature_best_before.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.signature_alg = type { i64, i32 }

@HX509_SIG_ALG_NO_SUPPORTED = common dso_local global i32 0, align 4
@HX509_CRYPTO_ALGORITHM_BEST_BEFORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Algorithm %s has passed it best before date\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hx509_signature_best_before(i32 %0, %struct.TYPE_3__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.signature_alg*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = call %struct.signature_alg* @find_sig_alg(i32* %10)
  store %struct.signature_alg* %11, %struct.signature_alg** %8, align 8
  %12 = load %struct.signature_alg*, %struct.signature_alg** %8, align 8
  %13 = icmp eq %struct.signature_alg* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @hx509_clear_error_string(i32 %15)
  %17 = load i32, i32* @HX509_SIG_ALG_NO_SUPPORTED, align 4
  store i32 %17, i32* %4, align 4
  br label %38

18:                                               ; preds = %3
  %19 = load %struct.signature_alg*, %struct.signature_alg** %8, align 8
  %20 = getelementptr inbounds %struct.signature_alg, %struct.signature_alg* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = load %struct.signature_alg*, %struct.signature_alg** %8, align 8
  %25 = getelementptr inbounds %struct.signature_alg, %struct.signature_alg* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @HX509_CRYPTO_ALGORITHM_BEST_BEFORE, align 4
  %32 = load %struct.signature_alg*, %struct.signature_alg** %8, align 8
  %33 = getelementptr inbounds %struct.signature_alg, %struct.signature_alg* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @hx509_set_error_string(i32 %30, i32 0, i32 %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @HX509_CRYPTO_ALGORITHM_BEST_BEFORE, align 4
  store i32 %36, i32* %4, align 4
  br label %38

37:                                               ; preds = %23, %18
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %29, %14
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.signature_alg* @find_sig_alg(i32*) #1

declare dso_local i32 @hx509_clear_error_string(i32) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
