; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_xdelta.c_find_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_xdelta.c_find_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blocks = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@NO_POSITION = common dso_local global i64 0, align 8
@MATCH_BLOCKSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.blocks*, i64, i8*)* @find_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_block(%struct.blocks* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.blocks*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.blocks* %0, %struct.blocks** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i64 @hash_func(i64 %9)
  %11 = load %struct.blocks*, %struct.blocks** %5, align 8
  %12 = getelementptr inbounds %struct.blocks, %struct.blocks* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = and i64 %10, %13
  store i64 %14, i64* %8, align 8
  br label %15

15:                                               ; preds = %61, %3
  %16 = load %struct.blocks*, %struct.blocks** %5, align 8
  %17 = getelementptr inbounds %struct.blocks, %struct.blocks* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NO_POSITION, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %68

25:                                               ; preds = %15
  %26 = load %struct.blocks*, %struct.blocks** %5, align 8
  %27 = getelementptr inbounds %struct.blocks, %struct.blocks* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %60

35:                                               ; preds = %25
  %36 = load %struct.blocks*, %struct.blocks** %5, align 8
  %37 = getelementptr inbounds %struct.blocks, %struct.blocks* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.blocks*, %struct.blocks** %5, align 8
  %40 = getelementptr inbounds %struct.blocks, %struct.blocks* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %38, %45
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* @MATCH_BLOCKSIZE, align 4
  %49 = call i64 @memcmp(i64 %46, i8* %47, i32 %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %35
  %52 = load %struct.blocks*, %struct.blocks** %5, align 8
  %53 = getelementptr inbounds %struct.blocks, %struct.blocks* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %4, align 8
  br label %70

59:                                               ; preds = %35
  br label %60

60:                                               ; preds = %59, %25
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, 1
  %64 = load %struct.blocks*, %struct.blocks** %5, align 8
  %65 = getelementptr inbounds %struct.blocks, %struct.blocks* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = and i64 %63, %66
  store i64 %67, i64* %8, align 8
  br label %15

68:                                               ; preds = %15
  %69 = load i64, i64* @NO_POSITION, align 8
  store i64 %69, i64* %4, align 8
  br label %70

70:                                               ; preds = %68, %51
  %71 = load i64, i64* %4, align 8
  ret i64 %71
}

declare dso_local i64 @hash_func(i64) #1

declare dso_local i64 @memcmp(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
