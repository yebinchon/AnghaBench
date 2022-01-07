; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/xz-embedded/userspace/extr_..linuxlibxzxz_dec_lzma2.c_lzma_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/xz-embedded/userspace/extr_..linuxlibxzxz_dec_lzma2.c_lzma_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xz_dec_lzma2 = type { i32, %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i64, i64, i64, i32, i32*, i32** }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xz_dec_lzma2*)* @lzma_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzma_main(%struct.xz_dec_lzma2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xz_dec_lzma2*, align 8
  %4 = alloca i64, align 8
  store %struct.xz_dec_lzma2* %0, %struct.xz_dec_lzma2** %3, align 8
  %5 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %6 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %5, i32 0, i32 2
  %7 = call i64 @dict_has_space(%struct.TYPE_5__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %11 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %17 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %16, i32 0, i32 2
  %18 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %19 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %22 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dict_repeat(%struct.TYPE_5__* %17, i64* %20, i32 %24)
  br label %26

26:                                               ; preds = %15, %9, %1
  br label %27

27:                                               ; preds = %105, %26
  %28 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %29 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %28, i32 0, i32 2
  %30 = call i64 @dict_has_space(%struct.TYPE_5__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %34 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %33, i32 0, i32 0
  %35 = call i32 @rc_limit_exceeded(i32* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %32, %27
  %39 = phi i1 [ false, %27 ], [ %37, %32 ]
  br i1 %39, label %40, label %106

40:                                               ; preds = %38
  %41 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %42 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %46 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = and i64 %44, %48
  store i64 %49, i64* %4, align 8
  %50 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %51 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %50, i32 0, i32 0
  %52 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %53 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 5
  %55 = load i32**, i32*** %54, align 8
  %56 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %57 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i32*, i32** %55, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %4, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = call i64 @rc_bit(i32* %51, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %40
  %67 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %68 = call i32 @lzma_literal(%struct.xz_dec_lzma2* %67)
  br label %105

69:                                               ; preds = %40
  %70 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %71 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %70, i32 0, i32 0
  %72 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %73 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %77 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  %81 = call i64 @rc_bit(i32* %71, i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %69
  %84 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %85 = load i64, i64* %4, align 8
  %86 = call i32 @lzma_rep_match(%struct.xz_dec_lzma2* %84, i64 %85)
  br label %91

87:                                               ; preds = %69
  %88 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %89 = load i64, i64* %4, align 8
  %90 = call i32 @lzma_match(%struct.xz_dec_lzma2* %88, i64 %89)
  br label %91

91:                                               ; preds = %87, %83
  %92 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %93 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %92, i32 0, i32 2
  %94 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %95 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %98 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @dict_repeat(%struct.TYPE_5__* %93, i64* %96, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %91
  store i32 0, i32* %2, align 4
  br label %110

104:                                              ; preds = %91
  br label %105

105:                                              ; preds = %104, %66
  br label %27

106:                                              ; preds = %38
  %107 = load %struct.xz_dec_lzma2*, %struct.xz_dec_lzma2** %3, align 8
  %108 = getelementptr inbounds %struct.xz_dec_lzma2, %struct.xz_dec_lzma2* %107, i32 0, i32 0
  %109 = call i32 @rc_normalize(i32* %108)
  store i32 1, i32* %2, align 4
  br label %110

110:                                              ; preds = %106, %103
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i64 @dict_has_space(%struct.TYPE_5__*) #1

declare dso_local i32 @dict_repeat(%struct.TYPE_5__*, i64*, i32) #1

declare dso_local i32 @rc_limit_exceeded(i32*) #1

declare dso_local i64 @rc_bit(i32*, i32*) #1

declare dso_local i32 @lzma_literal(%struct.xz_dec_lzma2*) #1

declare dso_local i32 @lzma_rep_match(%struct.xz_dec_lzma2*, i64) #1

declare dso_local i32 @lzma_match(%struct.xz_dec_lzma2*, i64) #1

declare dso_local i32 @rc_normalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
