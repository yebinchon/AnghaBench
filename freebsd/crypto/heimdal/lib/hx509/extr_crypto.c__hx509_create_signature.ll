; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c__hx509_create_signature.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c__hx509_create_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.signature_alg = type { i32, i32 (i32, %struct.signature_alg*, i32, %struct.TYPE_6__*, i32*, %struct.TYPE_6__*, i32*)* }

@HX509_SIG_ALG_NO_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"algorithm no supported\00", align 1
@PROVIDE_CONF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"algorithm provides no conf\00", align 1
@HX509_CRYPTO_SIG_NO_CONF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hx509_create_signature(i32 %0, i32 %1, %struct.TYPE_6__* %2, i32* %3, %struct.TYPE_6__* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.signature_alg*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = call %struct.signature_alg* @find_sig_alg(i32* %16)
  store %struct.signature_alg* %17, %struct.signature_alg** %14, align 8
  %18 = load %struct.signature_alg*, %struct.signature_alg** %14, align 8
  %19 = icmp eq %struct.signature_alg* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %6
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @HX509_SIG_ALG_NO_SUPPORTED, align 4
  %23 = call i32 @hx509_set_error_string(i32 %21, i32 0, i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @HX509_SIG_ALG_NO_SUPPORTED, align 4
  store i32 %24, i32* %7, align 4
  br label %52

25:                                               ; preds = %6
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load %struct.signature_alg*, %struct.signature_alg** %14, align 8
  %30 = getelementptr inbounds %struct.signature_alg, %struct.signature_alg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PROVIDE_CONF, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @HX509_SIG_ALG_NO_SUPPORTED, align 4
  %38 = call i32 @hx509_set_error_string(i32 %36, i32 0, i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @HX509_CRYPTO_SIG_NO_CONF, align 4
  store i32 %39, i32* %7, align 4
  br label %52

40:                                               ; preds = %28, %25
  %41 = load %struct.signature_alg*, %struct.signature_alg** %14, align 8
  %42 = getelementptr inbounds %struct.signature_alg, %struct.signature_alg* %41, i32 0, i32 1
  %43 = load i32 (i32, %struct.signature_alg*, i32, %struct.TYPE_6__*, i32*, %struct.TYPE_6__*, i32*)*, i32 (i32, %struct.signature_alg*, i32, %struct.TYPE_6__*, i32*, %struct.TYPE_6__*, i32*)** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.signature_alg*, %struct.signature_alg** %14, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = call i32 %43(i32 %44, %struct.signature_alg* %45, i32 %46, %struct.TYPE_6__* %47, i32* %48, %struct.TYPE_6__* %49, i32* %50)
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %40, %35, %20
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local %struct.signature_alg* @find_sig_alg(i32*) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
