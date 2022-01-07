; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_iconv.c_init_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_iconv.c_init_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ci_lock = common dso_local global i32 0, align 4
@isinit = common dso_local global i32 0, align 4
@shared_pool = common dso_local global i32 0, align 4
@CI_HASH_SIZE = common dso_local global i32 0, align 4
@shared_unused = common dso_local global i32 0, align 4
@shared_max_reuse = common dso_local global i32 0, align 4
@CI_ENV_MAX_REUSE = common dso_local global i32 0, align 4
@CI_INITIAL_MAX_REUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_cache() #0 {
  %1 = call i32 @WLOCK(i32* @ci_lock)
  %2 = load i32, i32* @isinit, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %24, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @CI_HASH_SIZE, align 4
  %6 = call i32 @_CITRUS_HASH_INIT(i32* @shared_pool, i32 %5)
  %7 = call i32 @TAILQ_INIT(i32* @shared_unused)
  store i32 -1, i32* @shared_max_reuse, align 4
  %8 = call i32 (...) @issetugid()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %4
  %11 = load i32, i32* @CI_ENV_MAX_REUSE, align 4
  %12 = call i64 @getenv(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32, i32* @CI_ENV_MAX_REUSE, align 4
  %16 = call i64 @getenv(i32 %15)
  %17 = call i32 @atoi(i64 %16)
  store i32 %17, i32* @shared_max_reuse, align 4
  br label %18

18:                                               ; preds = %14, %10, %4
  %19 = load i32, i32* @shared_max_reuse, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @CI_INITIAL_MAX_REUSE, align 4
  store i32 %22, i32* @shared_max_reuse, align 4
  br label %23

23:                                               ; preds = %21, %18
  store i32 1, i32* @isinit, align 4
  br label %24

24:                                               ; preds = %23, %0
  %25 = call i32 @UNLOCK(i32* @ci_lock)
  ret void
}

declare dso_local i32 @WLOCK(i32*) #1

declare dso_local i32 @_CITRUS_HASH_INIT(i32*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @issetugid(...) #1

declare dso_local i64 @getenv(i32) #1

declare dso_local i32 @atoi(i64) #1

declare dso_local i32 @UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
