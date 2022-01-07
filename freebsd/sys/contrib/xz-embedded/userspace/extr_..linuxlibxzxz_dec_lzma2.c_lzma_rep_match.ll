; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/xz-embedded/userspace/extr_..linuxlibxzxz_dec_lzma2.c_lzma_rep_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/xz-embedded/userspace/extr_..linuxlibxzxz_dec_lzma2.c_lzma_rep_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xz_dec_lzma2 = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i64, i64, i64, i64, i32, i32*, i32*, i32**, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xz_dec_lzma2*, i64)* @lzma_rep_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lzma_rep_match(%struct.xz_dec_lzma2* %0, i64 %1) #0 {
  %3 = alloca %struct.xz_dec_lzma2*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.xz_dec_lzma2* %0, %struct.xz_dec_lzma2** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %7 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %6, i32 0, i32 1
  %8 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %9 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 10
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %13 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  %17 = call i32 @rc_bit(i32* %7, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %45, label %19

19:                                               ; preds = %2
  %20 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %21 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %20, i32 0, i32 1
  %22 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %23 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 9
  %25 = load i32**, i32*** %24, align 8
  %26 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %27 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32*, i32** %25, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %4, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = call i32 @rc_bit(i32* %21, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %19
  %37 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %38 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @lzma_state_short_rep(i64* %39)
  %41 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %42 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 1, i32* %43, align 8
  br label %126

44:                                               ; preds = %19
  br label %115

45:                                               ; preds = %2
  %46 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %47 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %46, i32 0, i32 1
  %48 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %49 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 8
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %53 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = call i32 @rc_bit(i32* %47, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %45
  %60 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %61 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %5, align 8
  br label %103

64:                                               ; preds = %45
  %65 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %66 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %65, i32 0, i32 1
  %67 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %68 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 7
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %72 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  %76 = call i32 @rc_bit(i32* %66, i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %64
  %79 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %80 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %5, align 8
  br label %95

83:                                               ; preds = %64
  %84 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %85 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %5, align 8
  %88 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %89 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %93 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 4
  store i64 %91, i64* %94, align 8
  br label %95

95:                                               ; preds = %83, %78
  %96 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %97 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %101 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 3
  store i64 %99, i64* %102, align 8
  br label %103

103:                                              ; preds = %95, %59
  %104 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %105 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %109 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  store i64 %107, i64* %110, align 8
  %111 = load i64, i64* %5, align 8
  %112 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %113 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 5
  store i64 %111, i64* %114, align 8
  br label %115

115:                                              ; preds = %103, %44
  %116 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %117 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = call i32 @lzma_state_long_rep(i64* %118)
  %120 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %121 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %122 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 6
  %124 = load i64, i64* %4, align 8
  %125 = call i32 @lzma_len(%struct.xz_dec_lzma2* %120, i32* %123, i64 %124)
  br label %126

126:                                              ; preds = %115, %36
  ret void
}

declare dso_local i32 @rc_bit(i32*, i32*) #1

declare dso_local i32 @lzma_state_short_rep(i64*) #1

declare dso_local i32 @lzma_state_long_rep(i64*) #1

declare dso_local i32 @lzma_len(%struct.xz_dec_lzma2*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
