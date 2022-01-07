; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_internal-modexp.c_crypto_dh_derive_secret.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_internal-modexp.c_crypto_dh_derive_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_dh_derive_secret(i32 %0, i32* %1, i64 %2, i32* %3, i64 %4, i32* %5, i64 %6, i32* %7, i64 %8, i32* %9, i64* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca %struct.bignum*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.bignum*, align 8
  %27 = alloca %struct.bignum*, align 8
  %28 = alloca %struct.bignum*, align 8
  %29 = alloca i32, align 4
  store i32 %0, i32* %13, align 4
  store i32* %1, i32** %14, align 8
  store i64 %2, i64* %15, align 8
  store i32* %3, i32** %16, align 8
  store i64 %4, i64* %17, align 8
  store i32* %5, i32** %18, align 8
  store i64 %6, i64* %19, align 8
  store i32* %7, i32** %20, align 8
  store i64 %8, i64* %21, align 8
  store i32* %9, i32** %22, align 8
  store i64* %10, i64** %23, align 8
  store i32 -1, i32* %25, align 4
  %30 = load i64, i64* %21, align 8
  %31 = load i64, i64* %15, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %43, label %33

33:                                               ; preds = %11
  %34 = load i64, i64* %21, align 8
  %35 = load i64, i64* %15, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i32*, i32** %20, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = load i64, i64* %15, align 8
  %41 = call i64 @os_memcmp(i32* %38, i32* %39, i64 %40)
  %42 = icmp sge i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37, %11
  store i32 -1, i32* %12, align 4
  br label %124

44:                                               ; preds = %37, %33
  %45 = call %struct.bignum* (...) @bignum_init()
  store %struct.bignum* %45, %struct.bignum** %24, align 8
  %46 = load %struct.bignum*, %struct.bignum** %24, align 8
  %47 = icmp ne %struct.bignum* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load %struct.bignum*, %struct.bignum** %24, align 8
  %50 = load i32*, i32** %20, align 8
  %51 = load i64, i64* %21, align 8
  %52 = call i64 @bignum_set_unsigned_bin(%struct.bignum* %49, i32* %50, i64 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %48
  %55 = load %struct.bignum*, %struct.bignum** %24, align 8
  %56 = call i64 @bignum_cmp_d(%struct.bignum* %55, i32 1)
  %57 = icmp sle i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54, %48, %44
  br label %120

59:                                               ; preds = %54
  %60 = load i32*, i32** %16, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %110

62:                                               ; preds = %59
  %63 = call %struct.bignum* (...) @bignum_init()
  store %struct.bignum* %63, %struct.bignum** %26, align 8
  %64 = call %struct.bignum* (...) @bignum_init()
  store %struct.bignum* %64, %struct.bignum** %27, align 8
  %65 = call %struct.bignum* (...) @bignum_init()
  store %struct.bignum* %65, %struct.bignum** %28, align 8
  %66 = load %struct.bignum*, %struct.bignum** %26, align 8
  %67 = icmp ne %struct.bignum* %66, null
  br i1 %67, label %68, label %97

68:                                               ; preds = %62
  %69 = load %struct.bignum*, %struct.bignum** %27, align 8
  %70 = icmp ne %struct.bignum* %69, null
  br i1 %70, label %71, label %97

71:                                               ; preds = %68
  %72 = load %struct.bignum*, %struct.bignum** %28, align 8
  %73 = icmp ne %struct.bignum* %72, null
  br i1 %73, label %74, label %97

74:                                               ; preds = %71
  %75 = load %struct.bignum*, %struct.bignum** %26, align 8
  %76 = load i32*, i32** %14, align 8
  %77 = load i64, i64* %15, align 8
  %78 = call i64 @bignum_set_unsigned_bin(%struct.bignum* %75, i32* %76, i64 %77)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %97, label %80

80:                                               ; preds = %74
  %81 = load %struct.bignum*, %struct.bignum** %27, align 8
  %82 = load i32*, i32** %16, align 8
  %83 = load i64, i64* %17, align 8
  %84 = call i64 @bignum_set_unsigned_bin(%struct.bignum* %81, i32* %82, i64 %83)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %80
  %87 = load %struct.bignum*, %struct.bignum** %24, align 8
  %88 = load %struct.bignum*, %struct.bignum** %27, align 8
  %89 = load %struct.bignum*, %struct.bignum** %26, align 8
  %90 = load %struct.bignum*, %struct.bignum** %28, align 8
  %91 = call i64 @bignum_exptmod(%struct.bignum* %87, %struct.bignum* %88, %struct.bignum* %89, %struct.bignum* %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %86
  %94 = load %struct.bignum*, %struct.bignum** %28, align 8
  %95 = call i64 @bignum_cmp_d(%struct.bignum* %94, i32 1)
  %96 = icmp ne i64 %95, 0
  br label %97

97:                                               ; preds = %93, %86, %80, %74, %71, %68, %62
  %98 = phi i1 [ true, %86 ], [ true, %80 ], [ true, %74 ], [ true, %71 ], [ true, %68 ], [ true, %62 ], [ %96, %93 ]
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %29, align 4
  %100 = load %struct.bignum*, %struct.bignum** %26, align 8
  %101 = call i32 @bignum_deinit(%struct.bignum* %100)
  %102 = load %struct.bignum*, %struct.bignum** %27, align 8
  %103 = call i32 @bignum_deinit(%struct.bignum* %102)
  %104 = load %struct.bignum*, %struct.bignum** %28, align 8
  %105 = call i32 @bignum_deinit(%struct.bignum* %104)
  %106 = load i32, i32* %29, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %97
  br label %120

109:                                              ; preds = %97
  br label %110

110:                                              ; preds = %109, %59
  %111 = load i32*, i32** %20, align 8
  %112 = load i64, i64* %21, align 8
  %113 = load i32*, i32** %18, align 8
  %114 = load i64, i64* %19, align 8
  %115 = load i32*, i32** %14, align 8
  %116 = load i64, i64* %15, align 8
  %117 = load i32*, i32** %22, align 8
  %118 = load i64*, i64** %23, align 8
  %119 = call i32 @crypto_mod_exp(i32* %111, i64 %112, i32* %113, i64 %114, i32* %115, i64 %116, i32* %117, i64* %118)
  store i32 %119, i32* %25, align 4
  br label %120

120:                                              ; preds = %110, %108, %58
  %121 = load %struct.bignum*, %struct.bignum** %24, align 8
  %122 = call i32 @bignum_deinit(%struct.bignum* %121)
  %123 = load i32, i32* %25, align 4
  store i32 %123, i32* %12, align 4
  br label %124

124:                                              ; preds = %120, %43
  %125 = load i32, i32* %12, align 4
  ret i32 %125
}

declare dso_local i64 @os_memcmp(i32*, i32*, i64) #1

declare dso_local %struct.bignum* @bignum_init(...) #1

declare dso_local i64 @bignum_set_unsigned_bin(%struct.bignum*, i32*, i64) #1

declare dso_local i64 @bignum_cmp_d(%struct.bignum*, i32) #1

declare dso_local i64 @bignum_exptmod(%struct.bignum*, %struct.bignum*, %struct.bignum*, %struct.bignum*) #1

declare dso_local i32 @bignum_deinit(%struct.bignum*) #1

declare dso_local i32 @crypto_mod_exp(i32*, i64, i32*, i64, i32*, i64, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
