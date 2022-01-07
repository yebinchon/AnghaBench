; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_poolTests.c_testThreadReduction_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_poolTests.c_testThreadReduction_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i64, i32 }

@waitLongFn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*)* @testThreadReduction_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @testThreadReduction_internal(i32* %0, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 16, i32* %4, align 4
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 16, i32* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i64 0, i64* %9, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %16, %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 16
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @POOL_add(i32* %14, i32* @waitLongFn, %struct.TYPE_4__* %1)
  br label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  br label %10

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %21 = call i32 @ZSTD_pthread_mutex_lock(i32* %20)
  br label %22

22:                                               ; preds = %26, %19
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %29 = call i32 @ZSTD_pthread_cond_wait(i32* %27, i32* %28)
  br label %22

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @ASSERT_EQ(i64 %32, i32 0)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @ASSERT_EQ(i64 %35, i32 4)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %38 = call i32 @ZSTD_pthread_mutex_unlock(i32* %37)
  %39 = load i32*, i32** %3, align 8
  %40 = call i64 @POOL_resize(i32* %39, i32 2)
  %41 = call i32 @ASSERT_EQ(i64 %40, i32 0)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 16, i32* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i64 0, i64* %44, align 8
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %51, %30
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 16
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @POOL_add(i32* %49, i32* @waitLongFn, %struct.TYPE_4__* %1)
  br label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %45

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %56 = call i32 @ZSTD_pthread_mutex_lock(i32* %55)
  br label %57

57:                                               ; preds = %61, %54
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %64 = call i32 @ZSTD_pthread_cond_wait(i32* %62, i32* %63)
  br label %57

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @ASSERT_EQ(i64 %67, i32 0)
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @ASSERT_EQ(i64 %70, i32 2)
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %73 = call i32 @ZSTD_pthread_mutex_unlock(i32* %72)
  ret i32 0
}

declare dso_local i32 @POOL_add(i32*, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @ZSTD_pthread_mutex_lock(i32*) #1

declare dso_local i32 @ZSTD_pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @ASSERT_EQ(i64, i32) #1

declare dso_local i32 @ZSTD_pthread_mutex_unlock(i32*) #1

declare dso_local i64 @POOL_resize(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
