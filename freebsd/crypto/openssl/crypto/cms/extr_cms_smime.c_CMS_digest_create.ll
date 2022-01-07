; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cms/extr_cms_smime.c_CMS_digest_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cms/extr_cms_smime.c_CMS_digest_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CMS_DETACHED = common dso_local global i32 0, align 4
@CMS_STREAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @CMS_digest_create(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %6, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = call i32* (...) @EVP_sha1()
  store i32* %12, i32** %6, align 8
  br label %13

13:                                               ; preds = %11, %3
  %14 = load i32*, i32** %6, align 8
  %15 = call i32* @cms_DigestedData_create(i32* %14)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32* null, i32** %4, align 8
  br label %43

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @CMS_DETACHED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @CMS_set_detached(i32* %25, i32 0)
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @CMS_STREAM, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @CMS_final(i32* %33, i32* %34, i32* null, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32, %27
  %39 = load i32*, i32** %8, align 8
  store i32* %39, i32** %4, align 8
  br label %43

40:                                               ; preds = %32
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @CMS_ContentInfo_free(i32* %41)
  store i32* null, i32** %4, align 8
  br label %43

43:                                               ; preds = %40, %38, %18
  %44 = load i32*, i32** %4, align 8
  ret i32* %44
}

declare dso_local i32* @EVP_sha1(...) #1

declare dso_local i32* @cms_DigestedData_create(i32*) #1

declare dso_local i32 @CMS_set_detached(i32*, i32) #1

declare dso_local i64 @CMS_final(i32*, i32*, i32*, i32) #1

declare dso_local i32 @CMS_ContentInfo_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
