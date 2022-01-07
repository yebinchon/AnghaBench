; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/srp/extr_srp_lib.c_SRP_Calc_client_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/srp/extr_srp_lib.c_SRP_Calc_client_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @SRP_Calc_client_key(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  %20 = load i32*, i32** %13, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %40, label %22

22:                                               ; preds = %6
  %23 = load i32*, i32** %9, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %40, label %25

25:                                               ; preds = %22
  %26 = load i32*, i32** %8, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %25
  %29 = load i32*, i32** %10, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = load i32*, i32** %11, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i32*, i32** %12, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = call i32* (...) @BN_CTX_new()
  store i32* %38, i32** %19, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %34, %31, %28, %25, %22, %6
  store i32* null, i32** %7, align 8
  br label %127

41:                                               ; preds = %37
  %42 = call i32* (...) @BN_new()
  store i32* %42, i32** %14, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = call i32* (...) @BN_new()
  store i32* %45, i32** %15, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = call i32* (...) @BN_new()
  store i32* %48, i32** %16, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %44, %41
  br label %115

51:                                               ; preds = %47
  %52 = load i32*, i32** %14, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = load i32*, i32** %19, align 8
  %57 = call i32 @BN_mod_exp(i32* %52, i32* %53, i32* %54, i32* %55, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  br label %115

60:                                               ; preds = %51
  %61 = load i32*, i32** %8, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = call i32* @srp_Calc_k(i32* %61, i32* %62)
  store i32* %63, i32** %17, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %115

66:                                               ; preds = %60
  %67 = load i32*, i32** %15, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = load i32*, i32** %17, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load i32*, i32** %19, align 8
  %72 = call i32 @BN_mod_mul(i32* %67, i32* %68, i32* %69, i32* %70, i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %66
  br label %115

75:                                               ; preds = %66
  %76 = load i32*, i32** %14, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = load i32*, i32** %15, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = load i32*, i32** %19, align 8
  %81 = call i32 @BN_mod_sub(i32* %76, i32* %77, i32* %78, i32* %79, i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %75
  br label %115

84:                                               ; preds = %75
  %85 = load i32*, i32** %16, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = load i32*, i32** %19, align 8
  %89 = call i32 @BN_mul(i32* %85, i32* %86, i32* %87, i32* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %84
  br label %115

92:                                               ; preds = %84
  %93 = load i32*, i32** %15, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = load i32*, i32** %16, align 8
  %96 = call i32 @BN_add(i32* %93, i32* %94, i32* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %92
  br label %115

99:                                               ; preds = %92
  %100 = call i32* (...) @BN_new()
  store i32* %100, i32** %18, align 8
  %101 = load i32*, i32** %18, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %114

103:                                              ; preds = %99
  %104 = load i32*, i32** %18, align 8
  %105 = load i32*, i32** %14, align 8
  %106 = load i32*, i32** %15, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = load i32*, i32** %19, align 8
  %109 = call i32 @BN_mod_exp(i32* %104, i32* %105, i32* %106, i32* %107, i32* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %103
  %112 = load i32*, i32** %18, align 8
  %113 = call i32 @BN_free(i32* %112)
  store i32* null, i32** %18, align 8
  br label %114

114:                                              ; preds = %111, %103, %99
  br label %115

115:                                              ; preds = %114, %98, %91, %83, %74, %65, %59, %50
  %116 = load i32*, i32** %19, align 8
  %117 = call i32 @BN_CTX_free(i32* %116)
  %118 = load i32*, i32** %14, align 8
  %119 = call i32 @BN_clear_free(i32* %118)
  %120 = load i32*, i32** %15, align 8
  %121 = call i32 @BN_clear_free(i32* %120)
  %122 = load i32*, i32** %16, align 8
  %123 = call i32 @BN_clear_free(i32* %122)
  %124 = load i32*, i32** %17, align 8
  %125 = call i32 @BN_free(i32* %124)
  %126 = load i32*, i32** %18, align 8
  store i32* %126, i32** %7, align 8
  br label %127

127:                                              ; preds = %115, %40
  %128 = load i32*, i32** %7, align 8
  ret i32* %128
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_mod_exp(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @srp_Calc_k(i32*, i32*) #1

declare dso_local i32 @BN_mod_mul(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_sub(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mul(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_add(i32*, i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @BN_clear_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
