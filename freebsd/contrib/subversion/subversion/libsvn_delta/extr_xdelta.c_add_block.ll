; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_xdelta.c_add_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_xdelta.c_add_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blocks = type { i64, i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@NO_POSITION = common dso_local global i64 0, align 8
@MATCH_BLOCKSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blocks*, i64, i64)* @add_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_block(%struct.blocks* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.blocks*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.blocks* %0, %struct.blocks** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @hash_func(i64 %8)
  %10 = load %struct.blocks*, %struct.blocks** %4, align 8
  %11 = getelementptr inbounds %struct.blocks, %struct.blocks* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = and i64 %9, %12
  store i64 %13, i64* %7, align 8
  br label %14

14:                                               ; preds = %57, %3
  %15 = load %struct.blocks*, %struct.blocks** %4, align 8
  %16 = getelementptr inbounds %struct.blocks, %struct.blocks* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NO_POSITION, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %64

24:                                               ; preds = %14
  %25 = load %struct.blocks*, %struct.blocks** %4, align 8
  %26 = getelementptr inbounds %struct.blocks, %struct.blocks* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %24
  %35 = load %struct.blocks*, %struct.blocks** %4, align 8
  %36 = getelementptr inbounds %struct.blocks, %struct.blocks* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.blocks*, %struct.blocks** %4, align 8
  %39 = getelementptr inbounds %struct.blocks, %struct.blocks* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %37, %44
  %46 = load %struct.blocks*, %struct.blocks** %4, align 8
  %47 = getelementptr inbounds %struct.blocks, %struct.blocks* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %48, %49
  %51 = load i32, i32* @MATCH_BLOCKSIZE, align 4
  %52 = call i64 @memcmp(i64 %45, i64 %50, i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %34
  br label %91

55:                                               ; preds = %34
  br label %56

56:                                               ; preds = %55, %24
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %7, align 8
  %59 = add i64 %58, 1
  %60 = load %struct.blocks*, %struct.blocks** %4, align 8
  %61 = getelementptr inbounds %struct.blocks, %struct.blocks* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = and i64 %59, %62
  store i64 %63, i64* %7, align 8
  br label %14

64:                                               ; preds = %14
  %65 = load i64, i64* %5, align 8
  %66 = load %struct.blocks*, %struct.blocks** %4, align 8
  %67 = getelementptr inbounds %struct.blocks, %struct.blocks* %66, i32 0, i32 3
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i64 %65, i64* %71, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load %struct.blocks*, %struct.blocks** %4, align 8
  %74 = getelementptr inbounds %struct.blocks, %struct.blocks* %73, i32 0, i32 3
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i64 %72, i64* %78, align 8
  %79 = load i64, i64* %5, align 8
  %80 = and i64 %79, 7
  %81 = trunc i64 %80 to i32
  %82 = shl i32 1, %81
  %83 = load %struct.blocks*, %struct.blocks** %4, align 8
  %84 = getelementptr inbounds %struct.blocks, %struct.blocks* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %5, align 8
  %87 = call i64 @hash_flags(i64 %86)
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %82
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %64, %54
  ret void
}

declare dso_local i64 @hash_func(i64) #1

declare dso_local i64 @memcmp(i64, i64, i32) #1

declare dso_local i64 @hash_flags(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
