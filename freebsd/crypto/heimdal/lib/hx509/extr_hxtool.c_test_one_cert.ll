; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_test_one_cert.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_test_one_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"hx509_cms_create_signed_1\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"hx509_cms_verify_signed\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"create-signature verify-sigature done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @test_one_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_one_cert(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 4
  %9 = alloca %struct.TYPE_4__, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %10, align 8
  store i32* null, i32** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32* @_hx509_cert_private_key(i32 %15)
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %49

19:                                               ; preds = %3
  %20 = load i32, i32* @context, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @hx509_cms_create_signed_1(i32 %20, i32 0, i32* null, i32* null, i32 0, i32* null, i32 %21, i32* null, i32* null, i32* null, %struct.TYPE_4__* %8)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %19
  %28 = load i32, i32* @context, align 4
  %29 = load i8*, i8** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @hx509_cms_verify_signed(i32 %28, i8* %29, i32 0, i32 %31, i32 %33, i32* null, i32* null, i32* %12, %struct.TYPE_4__* %9, i32** %11)
  store i32 %34, i32* %13, align 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @free(i32 %36)
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = load i32, i32* @context, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @hx509_err(i32 %41, i32 1, i32 %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %40, %27
  %45 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @free(i32 %47)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %44, %18
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32* @_hx509_cert_private_key(i32) #1

declare dso_local i32 @hx509_cms_create_signed_1(i32, i32, i32*, i32*, i32, i32*, i32, i32*, i32*, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @hx509_cms_verify_signed(i32, i8*, i32, i32, i32, i32*, i32*, i32*, %struct.TYPE_4__*, i32**) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @hx509_err(i32, i32, i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
