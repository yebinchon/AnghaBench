; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_poolTests.c_testOrder.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_poolTests.c_testOrder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { i64, i64*, i32 }

@fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @testOrder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @testOrder(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.data, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32* @POOL_create(i64 %9, i64 %10)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @ASSERT_TRUE(i32* %12)
  %14 = getelementptr inbounds %struct.data, %struct.data* %5, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.data, %struct.data* %5, i32 0, i32 2
  %16 = call i32 @ZSTD_pthread_mutex_init(i32* %15, i32* null)
  %17 = call i32 @ASSERT_FALSE(i32 %16)
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %24, %2
  %19 = load i64, i64* %7, align 8
  %20 = icmp ult i64 %19, 16
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @POOL_add(i32* %22, i32* @fn, %struct.data* %5)
  br label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %7, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %7, align 8
  br label %18

27:                                               ; preds = %18
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @POOL_free(i32* %28)
  %30 = getelementptr inbounds %struct.data, %struct.data* %5, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @ASSERT_EQ(i64 16, i64 %31)
  store i64 0, i64* %8, align 8
  br label %33

33:                                               ; preds = %46, %27
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds %struct.data, %struct.data* %5, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds %struct.data, %struct.data* %5, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @ASSERT_EQ(i64 %39, i64 %44)
  br label %46

46:                                               ; preds = %38
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %8, align 8
  br label %33

49:                                               ; preds = %33
  %50 = getelementptr inbounds %struct.data, %struct.data* %5, i32 0, i32 2
  %51 = call i32 @ZSTD_pthread_mutex_destroy(i32* %50)
  ret i32 0
}

declare dso_local i32* @POOL_create(i64, i64) #1

declare dso_local i32 @ASSERT_TRUE(i32*) #1

declare dso_local i32 @ASSERT_FALSE(i32) #1

declare dso_local i32 @ZSTD_pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @POOL_add(i32*, i32*, %struct.data*) #1

declare dso_local i32 @POOL_free(i32*) #1

declare dso_local i32 @ASSERT_EQ(i64, i64) #1

declare dso_local i32 @ZSTD_pthread_mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
