; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_poolTests.c_testThreadReduction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_poolTests.c_testThreadReduction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @testThreadReduction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @testThreadReduction() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = alloca i32*, align 8
  %4 = call i32* @POOL_create(i32 4, i32 2)
  store i32* %4, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @ASSERT_TRUE(i32* %5)
  %7 = call i32 @memset(%struct.TYPE_4__* %2, i32 0, i32 8)
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %9 = call i32 @ZSTD_pthread_mutex_init(i32* %8, i32* null)
  %10 = call i32 @ASSERT_FALSE(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %12 = call i32 @ZSTD_pthread_cond_init(i32* %11, i32* null)
  %13 = call i32 @ASSERT_FALSE(i32 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = bitcast %struct.TYPE_4__* %2 to i64*
  %16 = load i64, i64* %15, align 4
  %17 = call i32 @testThreadReduction_internal(i32* %14, i64 %16)
  store i32 %17, i32* %1, align 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %19 = call i32 @ZSTD_pthread_mutex_destroy(i32* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %21 = call i32 @ZSTD_pthread_cond_destroy(i32* %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @POOL_free(i32* %22)
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i32* @POOL_create(i32, i32) #1

declare dso_local i32 @ASSERT_TRUE(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @ASSERT_FALSE(i32) #1

declare dso_local i32 @ZSTD_pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @ZSTD_pthread_cond_init(i32*, i32*) #1

declare dso_local i32 @testThreadReduction_internal(i32*, i64) #1

declare dso_local i32 @ZSTD_pthread_mutex_destroy(i32*) #1

declare dso_local i32 @ZSTD_pthread_cond_destroy(i32*) #1

declare dso_local i32 @POOL_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
