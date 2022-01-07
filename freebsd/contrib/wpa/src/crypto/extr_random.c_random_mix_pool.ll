; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_random.c_random_mix_pool.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_random.c_random_mix_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@random_mix_pool.twist = internal constant [8 x i32] [i32 0, i32 997073096, i32 1994146192, i32 1303535960, i32 -306674912, i32 -690576408, i32 -1687895376, i32 -1609899400], align 16
@MSG_EXCESSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"random_mix_pool\00", align 1
@input_rotate = common dso_local global i32 0, align 4
@pool_pos = common dso_local global i32 0, align 4
@POOL_WORDS_MASK = common dso_local global i32 0, align 4
@pool = common dso_local global i32* null, align 8
@POOL_TAP1 = common dso_local global i32 0, align 4
@POOL_TAP2 = common dso_local global i32 0, align 4
@POOL_TAP3 = common dso_local global i32 0, align 4
@POOL_TAP4 = common dso_local global i32 0, align 4
@POOL_TAP5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @random_mix_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @random_mix_pool(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %5, align 8
  %9 = load i32, i32* @MSG_EXCESSIVE, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @wpa_hexdump_key(i32 %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %10, i64 %11)
  br label %13

13:                                               ; preds = %17, %2
  %14 = load i64, i64* %4, align 8
  %15 = add i64 %14, -1
  store i64 %15, i64* %4, align 8
  %16 = icmp ne i64 %14, 0
  br i1 %16, label %17, label %108

17:                                               ; preds = %13
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %5, align 8
  %20 = load i32, i32* %18, align 4
  %21 = load i32, i32* @input_rotate, align 4
  %22 = and i32 %21, 31
  %23 = call i32 @__ROL32(i32 %20, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @pool_pos, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 7, i32 14
  %28 = load i32, i32* @input_rotate, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* @input_rotate, align 4
  %30 = load i32, i32* @pool_pos, align 4
  %31 = sub nsw i32 %30, 1
  %32 = load i32, i32* @POOL_WORDS_MASK, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* @pool_pos, align 4
  %34 = load i32*, i32** @pool, align 8
  %35 = load i32, i32* @pool_pos, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = xor i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load i32*, i32** @pool, align 8
  %42 = load i32, i32* @pool_pos, align 4
  %43 = load i32, i32* @POOL_TAP1, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32, i32* @POOL_WORDS_MASK, align 4
  %46 = and i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %41, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = xor i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load i32*, i32** @pool, align 8
  %53 = load i32, i32* @pool_pos, align 4
  %54 = load i32, i32* @POOL_TAP2, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32, i32* @POOL_WORDS_MASK, align 4
  %57 = and i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %52, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = xor i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = load i32*, i32** @pool, align 8
  %64 = load i32, i32* @pool_pos, align 4
  %65 = load i32, i32* @POOL_TAP3, align 4
  %66 = add nsw i32 %64, %65
  %67 = load i32, i32* @POOL_WORDS_MASK, align 4
  %68 = and i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %63, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %6, align 4
  %73 = xor i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load i32*, i32** @pool, align 8
  %75 = load i32, i32* @pool_pos, align 4
  %76 = load i32, i32* @POOL_TAP4, align 4
  %77 = add nsw i32 %75, %76
  %78 = load i32, i32* @POOL_WORDS_MASK, align 4
  %79 = and i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %74, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %6, align 4
  %84 = xor i32 %83, %82
  store i32 %84, i32* %6, align 4
  %85 = load i32*, i32** @pool, align 8
  %86 = load i32, i32* @pool_pos, align 4
  %87 = load i32, i32* @POOL_TAP5, align 4
  %88 = add nsw i32 %86, %87
  %89 = load i32, i32* @POOL_WORDS_MASK, align 4
  %90 = and i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %85, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %6, align 4
  %95 = xor i32 %94, %93
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = ashr i32 %96, 3
  %98 = load i32, i32* %6, align 4
  %99 = and i32 %98, 7
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [8 x i32], [8 x i32]* @random_mix_pool.twist, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = xor i32 %97, %102
  %104 = load i32*, i32** @pool, align 8
  %105 = load i32, i32* @pool_pos, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %103, i32* %107, align 4
  br label %13

108:                                              ; preds = %13
  ret void
}

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i8*, i64) #1

declare dso_local i32 @__ROL32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
