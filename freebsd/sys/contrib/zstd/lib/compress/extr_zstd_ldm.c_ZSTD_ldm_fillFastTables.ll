; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_ldm.c_ZSTD_ldm_fillFastTables.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_ldm.c_ZSTD_ldm_fillFastTables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ZSTD_dtlm_fast = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i8*)* @ZSTD_ldm_fillFastTables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_ldm_fillFastTables(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %5, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %23 [
    i32 131, label %12
    i32 132, label %17
    i32 130, label %22
    i32 129, label %22
    i32 128, label %22
    i32 136, label %22
    i32 135, label %22
    i32 134, label %22
    i32 133, label %22
  ]

12:                                               ; preds = %2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @ZSTD_dtlm_fast, align 4
  %16 = call i32 @ZSTD_fillHashTable(%struct.TYPE_7__* %13, i32* %14, i32 %15)
  br label %25

17:                                               ; preds = %2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @ZSTD_dtlm_fast, align 4
  %21 = call i32 @ZSTD_fillDoubleHashTable(%struct.TYPE_7__* %18, i32* %19, i32 %20)
  br label %25

22:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  br label %25

23:                                               ; preds = %2
  %24 = call i32 @assert(i32 0)
  br label %25

25:                                               ; preds = %23, %22, %17, %12
  ret i64 0
}

declare dso_local i32 @ZSTD_fillHashTable(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @ZSTD_fillDoubleHashTable(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
