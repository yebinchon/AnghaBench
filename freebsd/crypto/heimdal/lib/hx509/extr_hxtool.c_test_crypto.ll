; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_test_crypto.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_test_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_crypto_options = type { i32 }

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"MEMORY:test-crypto\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"hx509_certs_init: MEMORY\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"hx509_certs_append\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"hx509_verify_init_ctx\00", align 1
@test_one_cert = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"hx509_cert_iter\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_crypto(%struct.test_crypto_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.test_crypto_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.test_crypto_options* %0, %struct.test_crypto_options** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %12 = load i32, i32* @context, align 4
  %13 = call i32 @hx509_lock_init(i32 %12, i32* %9)
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.test_crypto_options*, %struct.test_crypto_options** %4, align 8
  %16 = getelementptr inbounds %struct.test_crypto_options, %struct.test_crypto_options* %15, i32 0, i32 0
  %17 = call i32 @lock_strings(i32 %14, i32* %16)
  %18 = load i32, i32* @context, align 4
  %19 = call i32 @hx509_certs_init(i32 %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 0, i32* null, i32* %8)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, i32* @context, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @hx509_err(i32 %23, i32 1, i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %22, %3
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %48, %26
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %27
  %32 = load i32, i32* @context, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i8**, i8*** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @hx509_certs_append(i32 %32, i32 %33, i32 %34, i8* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %31
  %44 = load i32, i32* @context, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @hx509_err(i32 %44, i32 1, i32 %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %43, %31
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %27

51:                                               ; preds = %27
  %52 = load i32, i32* @context, align 4
  %53 = call i32 @hx509_verify_init_ctx(i32 %52, i32* %7)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @context, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @hx509_err(i32 %57, i32 1, i32 %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @hx509_verify_attach_anchors(i32 %61, i32 %62)
  %64 = load i32, i32* @context, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @test_one_cert, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @hx509_certs_iter_f(i32 %64, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %60
  %72 = load i32, i32* @context, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @hx509_err(i32 %72, i32 1, i32 %73, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %75

75:                                               ; preds = %71, %60
  %76 = call i32 @hx509_certs_free(i32* %8)
  ret i32 0
}

declare dso_local i32 @hx509_lock_init(i32, i32*) #1

declare dso_local i32 @lock_strings(i32, i32*) #1

declare dso_local i32 @hx509_certs_init(i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @hx509_err(i32, i32, i32, i8*) #1

declare dso_local i32 @hx509_certs_append(i32, i32, i32, i8*) #1

declare dso_local i32 @hx509_verify_init_ctx(i32, i32*) #1

declare dso_local i32 @hx509_verify_attach_anchors(i32, i32) #1

declare dso_local i32 @hx509_certs_iter_f(i32, i32, i32, i32) #1

declare dso_local i32 @hx509_certs_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
