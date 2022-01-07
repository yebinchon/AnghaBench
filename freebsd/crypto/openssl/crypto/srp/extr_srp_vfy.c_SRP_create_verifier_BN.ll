; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/srp/extr_srp_vfy.c_SRP_create_verifier_BN.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/srp/extr_srp_vfy.c_SRP_create_verifier_BN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_LEN = common dso_local global i32 0, align 4
@SRP_RANDOM_SALT_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SRP_create_verifier_BN(i8* %0, i8* %1, i32** %2, i32** %3, i32* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %13, align 4
  store i32* null, i32** %14, align 8
  %19 = call i32* (...) @BN_CTX_new()
  store i32* %19, i32** %15, align 8
  %20 = load i32, i32* @MAX_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %16, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %17, align 8
  store i32* null, i32** %18, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %6
  %27 = load i8*, i8** %8, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %44, label %29

29:                                               ; preds = %26
  %30 = load i32**, i32*** %9, align 8
  %31 = icmp eq i32** %30, null
  br i1 %31, label %44, label %32

32:                                               ; preds = %29
  %33 = load i32**, i32*** %10, align 8
  %34 = icmp eq i32** %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  %36 = load i32*, i32** %11, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load i32*, i32** %12, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32*, i32** %15, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %38, %35, %32, %29, %26, %6
  br label %95

45:                                               ; preds = %41
  %46 = load i32**, i32*** %9, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = load i32, i32* @SRP_RANDOM_SALT_LEN, align 4
  %51 = call i64 @RAND_bytes(i8* %23, i32 %50)
  %52 = icmp sle i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %95

54:                                               ; preds = %49
  %55 = load i32, i32* @SRP_RANDOM_SALT_LEN, align 4
  %56 = call i32* @BN_bin2bn(i8* %23, i32 %55, i32* null)
  store i32* %56, i32** %18, align 8
  %57 = load i32*, i32** %18, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %95

60:                                               ; preds = %54
  br label %64

61:                                               ; preds = %45
  %62 = load i32**, i32*** %9, align 8
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %18, align 8
  br label %64

64:                                               ; preds = %61, %60
  %65 = load i32*, i32** %18, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = call i32* @SRP_Calc_x(i32* %65, i8* %66, i8* %67)
  store i32* %68, i32** %14, align 8
  %69 = load i32*, i32** %14, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %95

72:                                               ; preds = %64
  %73 = call i32* (...) @BN_new()
  %74 = load i32**, i32*** %10, align 8
  store i32* %73, i32** %74, align 8
  %75 = load i32**, i32*** %10, align 8
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %95

79:                                               ; preds = %72
  %80 = load i32**, i32*** %10, align 8
  %81 = load i32*, i32** %80, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = load i32*, i32** %14, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = load i32*, i32** %15, align 8
  %86 = call i32 @BN_mod_exp(i32* %81, i32* %82, i32* %83, i32* %84, i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %79
  %89 = load i32**, i32*** %10, align 8
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @BN_clear_free(i32* %90)
  br label %95

92:                                               ; preds = %79
  store i32 1, i32* %13, align 4
  %93 = load i32*, i32** %18, align 8
  %94 = load i32**, i32*** %9, align 8
  store i32* %93, i32** %94, align 8
  br label %95

95:                                               ; preds = %92, %88, %78, %71, %59, %53, %44
  %96 = load i32**, i32*** %9, align 8
  %97 = icmp ne i32** %96, null
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load i32**, i32*** %9, align 8
  %100 = load i32*, i32** %99, align 8
  %101 = load i32*, i32** %18, align 8
  %102 = icmp ne i32* %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32*, i32** %18, align 8
  %105 = call i32 @BN_clear_free(i32* %104)
  br label %106

106:                                              ; preds = %103, %98, %95
  %107 = load i32*, i32** %14, align 8
  %108 = call i32 @BN_clear_free(i32* %107)
  %109 = load i32*, i32** %15, align 8
  %110 = call i32 @BN_CTX_free(i32* %109)
  %111 = load i32, i32* %13, align 4
  %112 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %112)
  ret i32 %111
}

declare dso_local i32* @BN_CTX_new(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @RAND_bytes(i8*, i32) #1

declare dso_local i32* @BN_bin2bn(i8*, i32, i32*) #1

declare dso_local i32* @SRP_Calc_x(i32*, i8*, i8*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_mod_exp(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_clear_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
