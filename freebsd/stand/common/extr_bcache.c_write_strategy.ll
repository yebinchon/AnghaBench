; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_bcache.c_write_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_bcache.c_write_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcache_devdata = type { i32 (i32, i32, i64, i64, i8*, i64*)*, i32, %struct.bcache* }
%struct.bcache = type { i32 }

@bcache_blksize = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64, i64, i8*, i64*)* @write_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_strategy(i8* %0, i32 %1, i64 %2, i64 %3, i8* %4, i64* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.bcache_devdata*, align 8
  %14 = alloca %struct.bcache*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i64* %5, i64** %12, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.bcache_devdata*
  store %struct.bcache_devdata* %18, %struct.bcache_devdata** %13, align 8
  %19 = load %struct.bcache_devdata*, %struct.bcache_devdata** %13, align 8
  %20 = getelementptr inbounds %struct.bcache_devdata, %struct.bcache_devdata* %19, i32 0, i32 2
  %21 = load %struct.bcache*, %struct.bcache** %20, align 8
  store %struct.bcache* %21, %struct.bcache** %14, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @bcache_blksize, align 8
  %24 = udiv i64 %22, %23
  store i64 %24, i64* %16, align 8
  store i64 0, i64* %15, align 8
  br label %25

25:                                               ; preds = %35, %6
  %26 = load i64, i64* %15, align 8
  %27 = load i64, i64* %16, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load %struct.bcache*, %struct.bcache** %14, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %15, align 8
  %33 = add i64 %31, %32
  %34 = call i32 @bcache_invalidate(%struct.bcache* %30, i64 %33)
  br label %35

35:                                               ; preds = %29
  %36 = load i64, i64* %15, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %15, align 8
  br label %25

38:                                               ; preds = %25
  %39 = load %struct.bcache_devdata*, %struct.bcache_devdata** %13, align 8
  %40 = getelementptr inbounds %struct.bcache_devdata, %struct.bcache_devdata* %39, i32 0, i32 0
  %41 = load i32 (i32, i32, i64, i64, i8*, i64*)*, i32 (i32, i32, i64, i64, i8*, i64*)** %40, align 8
  %42 = load %struct.bcache_devdata*, %struct.bcache_devdata** %13, align 8
  %43 = getelementptr inbounds %struct.bcache_devdata, %struct.bcache_devdata* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = load i64*, i64** %12, align 8
  %50 = call i32 %41(i32 %44, i32 %45, i64 %46, i64 %47, i8* %48, i64* %49)
  ret i32 %50
}

declare dso_local i32 @bcache_invalidate(%struct.bcache*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
