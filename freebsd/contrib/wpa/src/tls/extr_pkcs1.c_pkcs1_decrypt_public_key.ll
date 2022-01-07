; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_pkcs1.c_pkcs1_decrypt_public_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_pkcs1.c_pkcs1_decrypt_public_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_rsa_key = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"LibTomCrypt: Invalid signature EB structure\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"LibTomCrypt: Invalid signature PS (BT=01)\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"LibTomCrypt: Too short signature padding\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"LibTomCrypt: Invalid signature EB structure (2)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pkcs1_decrypt_public_key(%struct.crypto_rsa_key* %0, i32* %1, i64 %2, i32* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_rsa_key*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.crypto_rsa_key* %0, %struct.crypto_rsa_key** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load i64*, i64** %11, align 8
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %12, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %7, align 8
  %20 = call i64 @crypto_rsa_exptmod(i32* %16, i64 %17, i32* %18, i64* %12, %struct.crypto_rsa_key* %19, i32 0)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %108

23:                                               ; preds = %5
  %24 = load i64, i64* %12, align 8
  %25 = icmp ult i64 %24, 27
  br i1 %25, label %36, label %26

26:                                               ; preds = %23
  %27 = load i32*, i32** %10, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i32*, i32** %10, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %26, %23
  %37 = load i32, i32* @MSG_INFO, align 4
  %38 = call i32 @wpa_printf(i32 %37, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %108

39:                                               ; preds = %31
  %40 = load i32*, i32** %10, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  store i32* %41, i32** %13, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 255
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* @MSG_INFO, align 4
  %48 = call i32 @wpa_printf(i32 %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %108

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %62, %49
  %51 = load i32*, i32** %13, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = load i64, i64* %12, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = icmp ult i32* %51, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 255
  br label %60

60:                                               ; preds = %56, %50
  %61 = phi i1 [ false, %50 ], [ %59, %56 ]
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = load i32*, i32** %13, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %13, align 8
  br label %50

65:                                               ; preds = %60
  %66 = load i32*, i32** %13, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = ptrtoint i32* %66 to i64
  %69 = ptrtoint i32* %67 to i64
  %70 = sub i64 %68, %69
  %71 = sdiv exact i64 %70, 4
  %72 = sub nsw i64 %71, 2
  %73 = icmp slt i64 %72, 8
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load i32, i32* @MSG_INFO, align 4
  %76 = call i32 @wpa_printf(i32 %75, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %108

77:                                               ; preds = %65
  %78 = load i32*, i32** %13, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 16
  %80 = load i32*, i32** %10, align 8
  %81 = load i64, i64* %12, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = icmp uge i32* %79, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %77
  %85 = load i32*, i32** %13, align 8
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84, %77
  %89 = load i32, i32* @MSG_INFO, align 4
  %90 = call i32 @wpa_printf(i32 %89, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %108

91:                                               ; preds = %84
  %92 = load i32*, i32** %13, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %13, align 8
  %94 = load i32*, i32** %13, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = ptrtoint i32* %94 to i64
  %97 = ptrtoint i32* %95 to i64
  %98 = sub i64 %96, %97
  %99 = sdiv exact i64 %98, 4
  %100 = load i64, i64* %12, align 8
  %101 = sub i64 %100, %99
  store i64 %101, i64* %12, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = load i32*, i32** %13, align 8
  %104 = load i64, i64* %12, align 8
  %105 = call i32 @os_memmove(i32* %102, i32* %103, i64 %104)
  %106 = load i64, i64* %12, align 8
  %107 = load i64*, i64** %11, align 8
  store i64 %106, i64* %107, align 8
  store i32 0, i32* %6, align 4
  br label %108

108:                                              ; preds = %91, %88, %74, %46, %36, %22
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i64 @crypto_rsa_exptmod(i32*, i64, i32*, i64*, %struct.crypto_rsa_key*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_memmove(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
