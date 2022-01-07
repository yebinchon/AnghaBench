; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ge25519.c_crypto_sign_ed25519_ref_unpackneg_vartime.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ge25519.c_crypto_sign_ed25519_ref_unpackneg_vartime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@ge25519_ecd = common dso_local global i32 0, align 4
@ge25519_sqrtm1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ge25519_unpackneg_vartime(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %16 = call i32 @fe25519_setone(i32* %15)
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 31
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = ashr i32 %20, 7
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %6, align 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @fe25519_unpack(i32* %24, i8* %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @fe25519_square(i32* %9, i32* %28)
  %30 = call i32 @fe25519_mul(i32* %10, i32* %9, i32* @ge25519_ecd)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = call i32 @fe25519_sub(i32* %9, i32* %9, i32* %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  %36 = call i32 @fe25519_add(i32* %10, i32* %35, i32* %10)
  %37 = call i32 @fe25519_square(i32* %11, i32* %10)
  %38 = call i32 @fe25519_square(i32* %12, i32* %11)
  %39 = call i32 @fe25519_mul(i32* %13, i32* %12, i32* %11)
  %40 = call i32 @fe25519_mul(i32* %7, i32* %13, i32* %9)
  %41 = call i32 @fe25519_mul(i32* %7, i32* %7, i32* %10)
  %42 = call i32 @fe25519_pow2523(i32* %7, i32* %7)
  %43 = call i32 @fe25519_mul(i32* %7, i32* %7, i32* %9)
  %44 = call i32 @fe25519_mul(i32* %7, i32* %7, i32* %10)
  %45 = call i32 @fe25519_mul(i32* %7, i32* %7, i32* %10)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = call i32 @fe25519_mul(i32* %47, i32* %7, i32* %10)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = call i32 @fe25519_square(i32* %8, i32* %50)
  %52 = call i32 @fe25519_mul(i32* %8, i32* %8, i32* %10)
  %53 = call i32 @fe25519_iseq_vartime(i32* %8, i32* %9)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = call i32 @fe25519_mul(i32* %57, i32* %59, i32* @ge25519_sqrtm1)
  br label %61

61:                                               ; preds = %55, %2
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = call i32 @fe25519_square(i32* %8, i32* %63)
  %65 = call i32 @fe25519_mul(i32* %8, i32* %8, i32* %10)
  %66 = call i32 @fe25519_iseq_vartime(i32* %8, i32* %9)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %61
  store i32 -1, i32* %3, align 4
  br label %91

69:                                               ; preds = %61
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = call i32 @fe25519_getparity(i32* %71)
  %73 = load i8, i8* %6, align 1
  %74 = zext i8 %73 to i32
  %75 = sub nsw i32 1, %74
  %76 = icmp ne i32 %72, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %69
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = call i32 @fe25519_neg(i32* %79, i32* %81)
  br label %83

83:                                               ; preds = %77, %69
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = call i32 @fe25519_mul(i32* %85, i32* %87, i32* %89)
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %83, %68
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @fe25519_setone(i32*) #1

declare dso_local i32 @fe25519_unpack(i32*, i8*) #1

declare dso_local i32 @fe25519_square(i32*, i32*) #1

declare dso_local i32 @fe25519_mul(i32*, i32*, i32*) #1

declare dso_local i32 @fe25519_sub(i32*, i32*, i32*) #1

declare dso_local i32 @fe25519_add(i32*, i32*, i32*) #1

declare dso_local i32 @fe25519_pow2523(i32*, i32*) #1

declare dso_local i32 @fe25519_iseq_vartime(i32*, i32*) #1

declare dso_local i32 @fe25519_getparity(i32*) #1

declare dso_local i32 @fe25519_neg(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
