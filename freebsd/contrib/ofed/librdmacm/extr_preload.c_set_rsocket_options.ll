; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_set_rsocket_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_set_rsocket_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sq_size = common dso_local global i64 0, align 8
@SOL_RDMA = common dso_local global i32 0, align 4
@RDMA_SQSIZE = common dso_local global i32 0, align 4
@rq_size = common dso_local global i64 0, align 8
@RDMA_RQSIZE = common dso_local global i32 0, align 4
@sq_inline = common dso_local global i64 0, align 8
@RDMA_INLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @set_rsocket_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_rsocket_options(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @sq_size, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @SOL_RDMA, align 4
  %8 = load i32, i32* @RDMA_SQSIZE, align 4
  %9 = call i32 @rsetsockopt(i32 %6, i32 %7, i32 %8, i64* @sq_size, i32 8)
  br label %10

10:                                               ; preds = %5, %1
  %11 = load i64, i64* @rq_size, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @SOL_RDMA, align 4
  %16 = load i32, i32* @RDMA_RQSIZE, align 4
  %17 = call i32 @rsetsockopt(i32 %14, i32 %15, i32 %16, i64* @rq_size, i32 8)
  br label %18

18:                                               ; preds = %13, %10
  %19 = load i64, i64* @sq_inline, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @SOL_RDMA, align 4
  %24 = load i32, i32* @RDMA_INLINE, align 4
  %25 = call i32 @rsetsockopt(i32 %22, i32 %23, i32 %24, i64* @sq_inline, i32 8)
  br label %26

26:                                               ; preds = %21, %18
  ret void
}

declare dso_local i32 @rsetsockopt(i32, i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
