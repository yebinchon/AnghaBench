; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_x931g.c_RSA_X931_generate_key_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_x931g.c_RSA_X931_generate_key_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RSA_X931_generate_key_ex(%struct.TYPE_4__* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %14 = call i32* (...) @BN_CTX_new()
  store i32* %14, i32** %13, align 8
  %15 = load i32*, i32** %13, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %85

18:                                               ; preds = %4
  %19 = load i32*, i32** %13, align 8
  %20 = call i32 @BN_CTX_start(i32* %19)
  %21 = load i32*, i32** %13, align 8
  %22 = call i32* @BN_CTX_get(i32* %21)
  store i32* %22, i32** %11, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = call i32* @BN_CTX_get(i32* %23)
  store i32* %24, i32** %12, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %85

28:                                               ; preds = %18
  %29 = load i32*, i32** %11, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32*, i32** %13, align 8
  %33 = call i32 @BN_X931_generate_Xpq(i32* %29, i32* %30, i32 %31, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %85

36:                                               ; preds = %28
  %37 = call i8* (...) @BN_new()
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32* %38, i32** %40, align 8
  %41 = call i8* (...) @BN_new()
  %42 = bitcast i8* %41 to i32*
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32* %42, i32** %44, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %36
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %36
  br label %85

55:                                               ; preds = %49
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @BN_X931_generate_prime_ex(i32* %58, i32* null, i32* null, i32* null, i32* null, i32* %59, i32* %60, i32* %61, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %55
  br label %85

66:                                               ; preds = %55
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @BN_X931_generate_prime_ex(i32* %69, i32* null, i32* null, i32* null, i32* null, i32* %70, i32* %71, i32* %72, i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %66
  br label %85

77:                                               ; preds = %66
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @RSA_X931_derive_ex(%struct.TYPE_4__* %78, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %79, i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  br label %85

84:                                               ; preds = %77
  store i32 1, i32* %10, align 4
  br label %85

85:                                               ; preds = %84, %83, %76, %65, %54, %35, %27, %17
  %86 = load i32*, i32** %13, align 8
  %87 = call i32 @BN_CTX_end(i32* %86)
  %88 = load i32*, i32** %13, align 8
  %89 = call i32 @BN_CTX_free(i32* %88)
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  store i32 1, i32* %5, align 4
  br label %94

93:                                               ; preds = %85
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %92
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_X931_generate_Xpq(i32*, i32*, i32, i32*) #1

declare dso_local i8* @BN_new(...) #1

declare dso_local i32 @BN_X931_generate_prime_ex(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RSA_X931_derive_ex(%struct.TYPE_4__*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
