; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/user/env/extr_xx.c_XX_MallocSmartInit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/user/env/extr_xx.c_XX_MallocSmartInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_OK = common dso_local global i32 0, align 4
@XX_MallocSmartLock = common dso_local global i32 0, align 4
@XX_MallocSmartPool = common dso_local global i64 0, align 8
@MALLOCSMART_POOL_SIZE = common dso_local global i32 0, align 4
@M_NETCOMMSW = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XX_MallocSmartInit() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @E_OK, align 4
  store i32 %2, i32* %1, align 4
  %3 = call i32 @mtx_lock(i32* @XX_MallocSmartLock)
  %4 = load i64, i64* @XX_MallocSmartPool, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %18

7:                                                ; preds = %0
  %8 = load i32, i32* @MALLOCSMART_POOL_SIZE, align 4
  %9 = load i32, i32* @M_NETCOMMSW, align 4
  %10 = load i32, i32* @M_NOWAIT, align 4
  %11 = load i32, i32* @MALLOCSMART_POOL_SIZE, align 4
  %12 = call i64 @contigmalloc(i32 %8, i32 %9, i32 %10, i32 0, i32 -1, i32 %11, i32 0)
  store i64 %12, i64* @XX_MallocSmartPool, align 8
  %13 = load i64, i64* @XX_MallocSmartPool, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %7
  %16 = load i32, i32* @E_NO_MEMORY, align 4
  store i32 %16, i32* %1, align 4
  br label %18

17:                                               ; preds = %7
  br label %18

18:                                               ; preds = %17, %15, %6
  %19 = call i32 @mtx_unlock(i32* @XX_MallocSmartLock)
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @contigmalloc(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
