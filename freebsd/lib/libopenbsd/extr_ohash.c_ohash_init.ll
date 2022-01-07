; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libopenbsd/extr_ohash.c_ohash_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libopenbsd/extr_ohash.c_ohash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ohash = type { i64, i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 (i64, i32, i32)*, i32, i32, i32 }
%struct.ohash_info = type { i32, i32, i32, i32 (i64, i32, i32)*, i32 }

@MINSIZE = common dso_local global i64 0, align 8
@STAT_HASH_CREATION = common dso_local global i32 0, align 4
@STAT_HASH_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ohash_init(%struct.ohash* %0, i32 %1, %struct.ohash_info* %2) #0 {
  %4 = alloca %struct.ohash*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ohash_info*, align 8
  store %struct.ohash* %0, %struct.ohash** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ohash_info* %2, %struct.ohash_info** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = zext i32 %7 to i64
  %9 = shl i64 1, %8
  %10 = load %struct.ohash*, %struct.ohash** %4, align 8
  %11 = getelementptr inbounds %struct.ohash, %struct.ohash* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load %struct.ohash*, %struct.ohash** %4, align 8
  %13 = getelementptr inbounds %struct.ohash, %struct.ohash* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MINSIZE, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i64, i64* @MINSIZE, align 8
  %19 = load %struct.ohash*, %struct.ohash** %4, align 8
  %20 = getelementptr inbounds %struct.ohash, %struct.ohash* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %17, %3
  %22 = load %struct.ohash_info*, %struct.ohash_info** %6, align 8
  %23 = getelementptr inbounds %struct.ohash_info, %struct.ohash_info* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ohash*, %struct.ohash** %4, align 8
  %26 = getelementptr inbounds %struct.ohash, %struct.ohash* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 4
  store i32 %24, i32* %27, align 8
  %28 = load %struct.ohash_info*, %struct.ohash_info** %6, align 8
  %29 = getelementptr inbounds %struct.ohash_info, %struct.ohash_info* %28, i32 0, i32 3
  %30 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %29, align 8
  %31 = load %struct.ohash*, %struct.ohash** %4, align 8
  %32 = getelementptr inbounds %struct.ohash, %struct.ohash* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 (i64, i32, i32)* %30, i32 (i64, i32, i32)** %33, align 8
  %34 = load %struct.ohash_info*, %struct.ohash_info** %6, align 8
  %35 = getelementptr inbounds %struct.ohash_info, %struct.ohash_info* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ohash*, %struct.ohash** %4, align 8
  %38 = getelementptr inbounds %struct.ohash, %struct.ohash* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  store i32 %36, i32* %39, align 4
  %40 = load %struct.ohash_info*, %struct.ohash_info** %6, align 8
  %41 = getelementptr inbounds %struct.ohash_info, %struct.ohash_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ohash*, %struct.ohash** %4, align 8
  %44 = getelementptr inbounds %struct.ohash, %struct.ohash* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 8
  %46 = load %struct.ohash_info*, %struct.ohash_info** %6, align 8
  %47 = getelementptr inbounds %struct.ohash_info, %struct.ohash_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ohash*, %struct.ohash** %4, align 8
  %50 = getelementptr inbounds %struct.ohash, %struct.ohash* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.ohash*, %struct.ohash** %4, align 8
  %53 = getelementptr inbounds %struct.ohash, %struct.ohash* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %54, align 8
  %56 = load %struct.ohash*, %struct.ohash** %4, align 8
  %57 = getelementptr inbounds %struct.ohash, %struct.ohash* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.ohash*, %struct.ohash** %4, align 8
  %60 = getelementptr inbounds %struct.ohash, %struct.ohash* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 %55(i64 %58, i32 4, i32 %62)
  %64 = load %struct.ohash*, %struct.ohash** %4, align 8
  %65 = getelementptr inbounds %struct.ohash, %struct.ohash* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.ohash*, %struct.ohash** %4, align 8
  %67 = getelementptr inbounds %struct.ohash, %struct.ohash* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.ohash*, %struct.ohash** %4, align 8
  %69 = getelementptr inbounds %struct.ohash, %struct.ohash* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
