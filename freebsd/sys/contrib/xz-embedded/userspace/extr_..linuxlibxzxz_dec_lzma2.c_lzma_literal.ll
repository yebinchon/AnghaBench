; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/xz-embedded/userspace/extr_..linuxlibxzxz_dec_lzma2.c_lzma_literal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/xz-embedded/userspace/extr_..linuxlibxzxz_dec_lzma2.c_lzma_literal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xz_dec_lzma2 = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xz_dec_lzma2*)* @lzma_literal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lzma_literal(%struct.xz_dec_lzma2* %0) #0 {
  %2 = alloca %struct.xz_dec_lzma2*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xz_dec_lzma2* %0, %struct.xz_dec_lzma2** %2, align 8
  %9 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %2, align 8
  %10 = call i32* @lzma_literal_probs(%struct.xz_dec_lzma2* %9)
  store i32* %10, i32** %3, align 8
  %11 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %2, align 8
  %12 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @lzma_state_is_literal(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %2, align 8
  %19 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %18, i32 0, i32 2
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @rc_bittree(i32* %19, i32* %20, i32 256)
  store i32 %21, i32* %4, align 4
  br label %69

22:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  %23 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %2, align 8
  %24 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %23, i32 0, i32 1
  %25 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %2, align 8
  %26 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dict_get(i32* %24, i32 %28)
  %30 = shl i32 %29, 1
  store i32 %30, i32* %5, align 4
  store i32 256, i32* %7, align 4
  br label %31

31:                                               ; preds = %65, %22
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = shl i32 %35, 1
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %37, %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %8, align 4
  %42 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %2, align 8
  %43 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %42, i32 0, i32 2
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i64 @rc_bit(i32* %43, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %31
  %51 = load i32, i32* %4, align 4
  %52 = shl i32 %51, 1
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %7, align 4
  br label %64

57:                                               ; preds = %31
  %58 = load i32, i32* %4, align 4
  %59 = shl i32 %58, 1
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %6, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %57, %50
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 256
  br i1 %67, label %31, label %68

68:                                               ; preds = %65
  br label %69

69:                                               ; preds = %68, %17
  %70 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %2, align 8
  %71 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %70, i32 0, i32 1
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @dict_put(i32* %71, i32 %72)
  %74 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %2, align 8
  %75 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @lzma_state_literal(i32* %76)
  ret void
}

declare dso_local i32* @lzma_literal_probs(%struct.xz_dec_lzma2*) #1

declare dso_local i64 @lzma_state_is_literal(i32) #1

declare dso_local i32 @rc_bittree(i32*, i32*, i32) #1

declare dso_local i32 @dict_get(i32*, i32) #1

declare dso_local i64 @rc_bit(i32*, i32*) #1

declare dso_local i32 @dict_put(i32*, i32) #1

declare dso_local i32 @lzma_state_literal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
