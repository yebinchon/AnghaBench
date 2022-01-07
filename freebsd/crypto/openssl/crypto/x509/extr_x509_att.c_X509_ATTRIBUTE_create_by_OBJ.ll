; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_att.c_X509_ATTRIBUTE_create_by_OBJ.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_att.c_X509_ATTRIBUTE_create_by_OBJ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X509_F_X509_ATTRIBUTE_CREATE_BY_OBJ = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @X509_ATTRIBUTE_create_by_OBJ(i32** %0, i32* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32**, i32*** %7, align 8
  %14 = icmp eq i32** %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %5
  %16 = load i32**, i32*** %7, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %15, %5
  %20 = call i32* (...) @X509_ATTRIBUTE_new()
  store i32* %20, i32** %12, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* @X509_F_X509_ATTRIBUTE_CREATE_BY_OBJ, align 4
  %24 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %25 = call i32 @X509err(i32 %23, i32 %24)
  store i32* null, i32** %6, align 8
  br label %68

26:                                               ; preds = %19
  br label %30

27:                                               ; preds = %15
  %28 = load i32**, i32*** %7, align 8
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %12, align 8
  br label %30

30:                                               ; preds = %27, %26
  %31 = load i32*, i32** %12, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @X509_ATTRIBUTE_set1_object(i32* %31, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %56

36:                                               ; preds = %30
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @X509_ATTRIBUTE_set1_data(i32* %37, i32 %38, i8* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  br label %56

44:                                               ; preds = %36
  %45 = load i32**, i32*** %7, align 8
  %46 = icmp ne i32** %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i32**, i32*** %7, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32*, i32** %12, align 8
  %53 = load i32**, i32*** %7, align 8
  store i32* %52, i32** %53, align 8
  br label %54

54:                                               ; preds = %51, %47, %44
  %55 = load i32*, i32** %12, align 8
  store i32* %55, i32** %6, align 8
  br label %68

56:                                               ; preds = %43, %35
  %57 = load i32**, i32*** %7, align 8
  %58 = icmp eq i32** %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = load i32*, i32** %12, align 8
  %61 = load i32**, i32*** %7, align 8
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %59, %56
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @X509_ATTRIBUTE_free(i32* %65)
  br label %67

67:                                               ; preds = %64, %59
  store i32* null, i32** %6, align 8
  br label %68

68:                                               ; preds = %67, %54, %22
  %69 = load i32*, i32** %6, align 8
  ret i32* %69
}

declare dso_local i32* @X509_ATTRIBUTE_new(...) #1

declare dso_local i32 @X509err(i32, i32) #1

declare dso_local i32 @X509_ATTRIBUTE_set1_object(i32*, i32*) #1

declare dso_local i32 @X509_ATTRIBUTE_set1_data(i32*, i32, i8*, i32) #1

declare dso_local i32 @X509_ATTRIBUTE_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
