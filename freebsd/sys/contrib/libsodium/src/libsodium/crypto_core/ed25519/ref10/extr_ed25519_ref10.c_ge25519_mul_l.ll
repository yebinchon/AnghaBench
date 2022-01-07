; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_core/ed25519/ref10/extr_ed25519_ref10.c_ge25519_mul_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_core/ed25519/ref10/extr_ed25519_ref10.c_ge25519_mul_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ge25519_mul_l.aslide = internal constant [253 x i8] c"\0D\00\00\00\00\FF\00\00\00\00\F5\00\00\00\00\00\00\FB\00\00\00\00\00\00\FD\00\00\00\00\F3\00\00\00\00\07\00\00\00\00\00\03\00\00\00\00\F3\00\00\00\00\05\00\00\00\00\00\00\00\00\0B\00\00\00\00\00\0B\00\00\00\00\F3\00\00\00\00\00\00\FD\00\00\00\00\00\FF\00\00\00\00\03\00\00\00\00\F5\00\00\00\00\00\00\00\0F\00\00\00\00\00\FF\00\00\00\00\FF\00\00\00\00\07\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @ge25519_mul_l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ge25519_mul_l(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [8 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @ge25519_p3_to_cached(i32* %10, i32* %11)
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @ge25519_p3_dbl(i32* %6, i32* %13)
  %15 = call i32 @ge25519_p1p1_to_p3(i32* %8, i32* %6)
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %17 = call i32 @ge25519_add(i32* %6, i32* %8, i32* %16)
  %18 = call i32 @ge25519_p1p1_to_p3(i32* %7, i32* %6)
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 1
  %20 = call i32 @ge25519_p3_to_cached(i32* %19, i32* %7)
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 1
  %22 = call i32 @ge25519_add(i32* %6, i32* %8, i32* %21)
  %23 = call i32 @ge25519_p1p1_to_p3(i32* %7, i32* %6)
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  %25 = call i32 @ge25519_p3_to_cached(i32* %24, i32* %7)
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  %27 = call i32 @ge25519_add(i32* %6, i32* %8, i32* %26)
  %28 = call i32 @ge25519_p1p1_to_p3(i32* %7, i32* %6)
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  %30 = call i32 @ge25519_p3_to_cached(i32* %29, i32* %7)
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  %32 = call i32 @ge25519_add(i32* %6, i32* %8, i32* %31)
  %33 = call i32 @ge25519_p1p1_to_p3(i32* %7, i32* %6)
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  %35 = call i32 @ge25519_p3_to_cached(i32* %34, i32* %7)
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  %37 = call i32 @ge25519_add(i32* %6, i32* %8, i32* %36)
  %38 = call i32 @ge25519_p1p1_to_p3(i32* %7, i32* %6)
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 5
  %40 = call i32 @ge25519_p3_to_cached(i32* %39, i32* %7)
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 5
  %42 = call i32 @ge25519_add(i32* %6, i32* %8, i32* %41)
  %43 = call i32 @ge25519_p1p1_to_p3(i32* %7, i32* %6)
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 6
  %45 = call i32 @ge25519_p3_to_cached(i32* %44, i32* %7)
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 6
  %47 = call i32 @ge25519_add(i32* %6, i32* %8, i32* %46)
  %48 = call i32 @ge25519_p1p1_to_p3(i32* %7, i32* %6)
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 7
  %50 = call i32 @ge25519_p3_to_cached(i32* %49, i32* %7)
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @ge25519_p3_0(i32* %51)
  store i32 252, i32* %9, align 4
  br label %53

53:                                               ; preds = %99, %2
  %54 = load i32, i32* %9, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %102

56:                                               ; preds = %53
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @ge25519_p3_dbl(i32* %6, i32* %57)
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [253 x i8], [253 x i8]* @ge25519_mul_l.aslide, i64 0, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %56
  %66 = call i32 @ge25519_p1p1_to_p3(i32* %7, i32* %6)
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [253 x i8], [253 x i8]* @ge25519_mul_l.aslide, i64 0, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = sdiv i32 %71, 2
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %73
  %75 = call i32 @ge25519_add(i32* %6, i32* %7, i32* %74)
  br label %96

76:                                               ; preds = %56
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [253 x i8], [253 x i8]* @ge25519_mul_l.aslide, i64 0, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %76
  %84 = call i32 @ge25519_p1p1_to_p3(i32* %7, i32* %6)
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [253 x i8], [253 x i8]* @ge25519_mul_l.aslide, i64 0, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = sub nsw i32 0, %89
  %91 = sdiv i32 %90, 2
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %92
  %94 = call i32 @ge25519_sub(i32* %6, i32* %7, i32* %93)
  br label %95

95:                                               ; preds = %83, %76
  br label %96

96:                                               ; preds = %95, %65
  %97 = load i32*, i32** %3, align 8
  %98 = call i32 @ge25519_p1p1_to_p3(i32* %97, i32* %6)
  br label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %9, align 4
  br label %53

102:                                              ; preds = %53
  ret void
}

declare dso_local i32 @ge25519_p3_to_cached(i32*, i32*) #1

declare dso_local i32 @ge25519_p3_dbl(i32*, i32*) #1

declare dso_local i32 @ge25519_p1p1_to_p3(i32*, i32*) #1

declare dso_local i32 @ge25519_add(i32*, i32*, i32*) #1

declare dso_local i32 @ge25519_p3_0(i32*) #1

declare dso_local i32 @ge25519_sub(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
