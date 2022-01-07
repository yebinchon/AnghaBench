; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bm_pool.c_BmPoolAcquire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bm_pool.c_BmPoolAcquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.bm_buffer = type { i32 }

@BMAN_POOL_FLAG_ONLY_RELEASE = common dso_local global i32 0, align 4
@BMAN_POOL_FLAG_STOCKPILE = common dso_local global i32 0, align 4
@BMAN_ACQUIRE_FLAG_STOCKPILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, %struct.bm_buffer*, i32, i32)* @BmPoolAcquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BmPoolAcquire(%struct.TYPE_3__* %0, i32 %1, %struct.bm_buffer* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bm_buffer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.bm_buffer* %2, %struct.bm_buffer** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %10, align 4
  %13 = call i32 @IN_RANGE(i32 1, i32 %12, i32 8)
  %14 = call i32 @ASSERT_COND(i32 %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BMAN_POOL_FLAG_ONLY_RELEASE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %115

22:                                               ; preds = %5
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BMAN_POOL_FLAG_STOCKPILE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bm_buffer*, %struct.bm_buffer** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @BmPortalAcquire(i32 %30, i32 %33, %struct.bm_buffer* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  br label %115

37:                                               ; preds = %22
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @BMAN_ACQUIRE_FLAG_STOCKPILE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %76, label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %10, align 4
  %47 = sub nsw i32 %45, %46
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %76

52:                                               ; preds = %42
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 4, %63
  %65 = trunc i64 %64 to i32
  %66 = call i64 @PTR_MOVE(i32 %59, i32 %65)
  %67 = inttoptr i64 %66 to %struct.bm_buffer*
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @BmPortalAcquire(i32 %53, i32 %56, %struct.bm_buffer* %67, i32 %70)
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %84

76:                                               ; preds = %42, %37
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i32 0, i32* %6, align 4
  br label %115

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %52
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  store i32 0, i32* %6, align 4
  br label %115

90:                                               ; preds = %84
  %91 = load %struct.bm_buffer*, %struct.bm_buffer** %9, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %10, align 4
  %99 = sub nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = mul i64 4, %100
  %102 = trunc i64 %101 to i32
  %103 = call i64 @PTR_MOVE(i32 %94, i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = mul i64 4, %105
  %107 = trunc i64 %106 to i32
  %108 = call i32 @memcpy(%struct.bm_buffer* %91, i64 %103, i32 %107)
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %90, %89, %82, %29, %21
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @IN_RANGE(i32, i32, i32) #1

declare dso_local i32 @BmPortalAcquire(i32, i32, %struct.bm_buffer*, i32) #1

declare dso_local i64 @PTR_MOVE(i32, i32) #1

declare dso_local i32 @memcpy(%struct.bm_buffer*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
