; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_v3.c_X509_EXTENSION_create_by_OBJ.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_v3.c_X509_EXTENSION_create_by_OBJ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X509_F_X509_EXTENSION_CREATE_BY_OBJ = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @X509_EXTENSION_create_by_OBJ(i32** %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load i32**, i32*** %6, align 8
  %12 = icmp eq i32** %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = load i32**, i32*** %6, align 8
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %13, %4
  %18 = call i32* (...) @X509_EXTENSION_new()
  store i32* %18, i32** %10, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* @X509_F_X509_EXTENSION_CREATE_BY_OBJ, align 4
  %22 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %23 = call i32 @X509err(i32 %21, i32 %22)
  store i32* null, i32** %5, align 8
  br label %70

24:                                               ; preds = %17
  br label %28

25:                                               ; preds = %13
  %26 = load i32**, i32*** %6, align 8
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %10, align 8
  br label %28

28:                                               ; preds = %25, %24
  %29 = load i32*, i32** %10, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @X509_EXTENSION_set_object(i32* %29, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %58

34:                                               ; preds = %28
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @X509_EXTENSION_set_critical(i32* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %58

40:                                               ; preds = %34
  %41 = load i32*, i32** %10, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @X509_EXTENSION_set_data(i32* %41, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %58

46:                                               ; preds = %40
  %47 = load i32**, i32*** %6, align 8
  %48 = icmp ne i32** %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i32**, i32*** %6, align 8
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32*, i32** %10, align 8
  %55 = load i32**, i32*** %6, align 8
  store i32* %54, i32** %55, align 8
  br label %56

56:                                               ; preds = %53, %49, %46
  %57 = load i32*, i32** %10, align 8
  store i32* %57, i32** %5, align 8
  br label %70

58:                                               ; preds = %45, %39, %33
  %59 = load i32**, i32*** %6, align 8
  %60 = icmp eq i32** %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load i32*, i32** %10, align 8
  %63 = load i32**, i32*** %6, align 8
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %61, %58
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @X509_EXTENSION_free(i32* %67)
  br label %69

69:                                               ; preds = %66, %61
  store i32* null, i32** %5, align 8
  br label %70

70:                                               ; preds = %69, %56, %20
  %71 = load i32*, i32** %5, align 8
  ret i32* %71
}

declare dso_local i32* @X509_EXTENSION_new(...) #1

declare dso_local i32 @X509err(i32, i32) #1

declare dso_local i32 @X509_EXTENSION_set_object(i32*, i32*) #1

declare dso_local i32 @X509_EXTENSION_set_critical(i32*, i32) #1

declare dso_local i32 @X509_EXTENSION_set_data(i32*, i32*) #1

declare dso_local i32 @X509_EXTENSION_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
