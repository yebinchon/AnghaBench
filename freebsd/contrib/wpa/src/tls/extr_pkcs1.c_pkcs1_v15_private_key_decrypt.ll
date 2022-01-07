; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_pkcs1.c_pkcs1_v15_private_key_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_pkcs1.c_pkcs1_v15_private_key_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_rsa_key = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"LibTomCrypt: Too short padding\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pkcs1_v15_private_key_decrypt(%struct.crypto_rsa_key* %0, i32* %1, i64 %2, i32* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_rsa_key*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.crypto_rsa_key* %0, %struct.crypto_rsa_key** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = load i64*, i64** %11, align 8
  %19 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %7, align 8
  %20 = call i32 @crypto_rsa_exptmod(i32* %15, i64 %16, i32* %17, i64* %18, %struct.crypto_rsa_key* %19, i32 1)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %6, align 4
  br label %94

25:                                               ; preds = %5
  %26 = load i64*, i64** %11, align 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %27, 2
  br i1 %28, label %39, label %29

29:                                               ; preds = %25
  %30 = load i32*, i32** %10, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i32*, i32** %10, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 2
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %29, %25
  store i32 -1, i32* %6, align 4
  br label %94

40:                                               ; preds = %34
  %41 = load i32*, i32** %10, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  store i32* %42, i32** %13, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load i64*, i64** %11, align 8
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32* %46, i32** %14, align 8
  br label %47

47:                                               ; preds = %57, %40
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32*, i32** %13, align 8
  %53 = load i32*, i32** %14, align 8
  %54 = icmp ult i32* %52, %53
  br label %55

55:                                               ; preds = %51, %47
  %56 = phi i1 [ false, %47 ], [ %54, %51 ]
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = load i32*, i32** %13, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %13, align 8
  br label %47

60:                                               ; preds = %55
  %61 = load i32*, i32** %13, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = icmp eq i32* %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 -1, i32* %6, align 4
  br label %94

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
  %76 = call i32 @wpa_printf(i32 %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %94

77:                                               ; preds = %65
  %78 = load i32*, i32** %13, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %13, align 8
  %80 = load i32*, i32** %13, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = ptrtoint i32* %80 to i64
  %83 = ptrtoint i32* %81 to i64
  %84 = sub i64 %82, %83
  %85 = sdiv exact i64 %84, 4
  %86 = load i64*, i64** %11, align 8
  %87 = load i64, i64* %86, align 8
  %88 = sub i64 %87, %85
  store i64 %88, i64* %86, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = load i32*, i32** %13, align 8
  %91 = load i64*, i64** %11, align 8
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @os_memmove(i32* %89, i32* %90, i64 %92)
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %77, %74, %64, %39, %23
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @crypto_rsa_exptmod(i32*, i64, i32*, i64*, %struct.crypto_rsa_key*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_memmove(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
