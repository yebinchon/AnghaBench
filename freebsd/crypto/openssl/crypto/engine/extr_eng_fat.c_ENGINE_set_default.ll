; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/engine/extr_eng_fat.c_ENGINE_set_default.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/engine/extr_eng_fat.c_ENGINE_set_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENGINE_METHOD_CIPHERS = common dso_local global i32 0, align 4
@ENGINE_METHOD_DIGESTS = common dso_local global i32 0, align 4
@ENGINE_METHOD_RSA = common dso_local global i32 0, align 4
@ENGINE_METHOD_DSA = common dso_local global i32 0, align 4
@ENGINE_METHOD_DH = common dso_local global i32 0, align 4
@ENGINE_METHOD_EC = common dso_local global i32 0, align 4
@ENGINE_METHOD_RAND = common dso_local global i32 0, align 4
@ENGINE_METHOD_PKEY_METHS = common dso_local global i32 0, align 4
@ENGINE_METHOD_PKEY_ASN1_METHS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ENGINE_set_default(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @ENGINE_METHOD_CIPHERS, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @ENGINE_set_default_ciphers(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %96

15:                                               ; preds = %10, %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ENGINE_METHOD_DIGESTS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @ENGINE_set_default_digests(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %96

25:                                               ; preds = %20, %15
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @ENGINE_METHOD_RSA, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @ENGINE_set_default_RSA(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %96

35:                                               ; preds = %30, %25
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @ENGINE_METHOD_DSA, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @ENGINE_set_default_DSA(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %96

45:                                               ; preds = %40, %35
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @ENGINE_METHOD_DH, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @ENGINE_set_default_DH(i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %96

55:                                               ; preds = %50, %45
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @ENGINE_METHOD_EC, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @ENGINE_set_default_EC(i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %96

65:                                               ; preds = %60, %55
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @ENGINE_METHOD_RAND, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @ENGINE_set_default_RAND(i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %96

75:                                               ; preds = %70, %65
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @ENGINE_METHOD_PKEY_METHS, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @ENGINE_set_default_pkey_meths(i32* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %96

85:                                               ; preds = %80, %75
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @ENGINE_METHOD_PKEY_ASN1_METHS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @ENGINE_set_default_pkey_asn1_meths(i32* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  store i32 0, i32* %3, align 4
  br label %96

95:                                               ; preds = %90, %85
  store i32 1, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %94, %84, %74, %64, %54, %44, %34, %24, %14
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @ENGINE_set_default_ciphers(i32*) #1

declare dso_local i32 @ENGINE_set_default_digests(i32*) #1

declare dso_local i32 @ENGINE_set_default_RSA(i32*) #1

declare dso_local i32 @ENGINE_set_default_DSA(i32*) #1

declare dso_local i32 @ENGINE_set_default_DH(i32*) #1

declare dso_local i32 @ENGINE_set_default_EC(i32*) #1

declare dso_local i32 @ENGINE_set_default_RAND(i32*) #1

declare dso_local i32 @ENGINE_set_default_pkey_meths(i32*) #1

declare dso_local i32 @ENGINE_set_default_pkey_asn1_meths(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
