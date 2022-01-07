; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_delayed_invl_wait_u.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_delayed_invl_wait_u.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.lock_delay_arg = type { i32 }

@di_delay = common dso_local global i32 0, align 4
@pmap_invl_gen_head = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@pmap_invl_callout_inited = common dso_local global i32 0, align 4
@invl_wait = common dso_local global i32 0, align 4
@pmap_invl_waiters = common dso_local global i32 0, align 4
@pmap_invl_callout = common dso_local global i32 0, align 4
@pmap_delayed_invl_callout_func = common dso_local global i32 0, align 4
@invl_wait_slow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @pmap_delayed_invl_wait_u to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_delayed_invl_wait_u(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca %struct.lock_delay_arg, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %5, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i64* @pmap_delayed_invl_genp(i32 %6)
  store i64* %7, i64** %3, align 8
  %8 = call i32 @lock_delay_arg_init(%struct.lock_delay_arg* %4, i32* @di_delay)
  br label %9

9:                                                ; preds = %39, %1
  %10 = load i64*, i64** %3, align 8
  %11 = load i64, i64* %10, align 8
  %12 = call i64 @atomic_load_long(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pmap_invl_gen_head, i32 0, i32 0))
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %9
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @pmap_invl_callout_inited, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17, %14
  %21 = call i32 @atomic_add_long(i32* @invl_wait, i32 1)
  %22 = call i32 @PV_STAT(i32 %21)
  %23 = call i32 @lock_delay(%struct.lock_delay_arg* %4)
  store i32 0, i32* %5, align 4
  br label %39

24:                                               ; preds = %17
  %25 = call i32 @atomic_add_int(i32* @pmap_invl_waiters, i32 1)
  %26 = load i64*, i64** %3, align 8
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @atomic_load_long(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pmap_invl_gen_head, i32 0, i32 0))
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i32, i32* @pmap_delayed_invl_callout_func, align 4
  %32 = call i32 @callout_reset(i32* @pmap_invl_callout, i32 1, i32 %31, i32* null)
  %33 = call i32 @atomic_add_long(i32* @invl_wait_slow, i32 1)
  %34 = call i32 @PV_STAT(i32 %33)
  %35 = load i64*, i64** %3, align 8
  %36 = call i32 @pmap_delayed_invl_wait_block(i64* %35, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pmap_invl_gen_head, i32 0, i32 0))
  br label %37

37:                                               ; preds = %30, %24
  %38 = call i32 @atomic_add_int(i32* @pmap_invl_waiters, i32 -1)
  br label %39

39:                                               ; preds = %37, %20
  br label %9

40:                                               ; preds = %9
  ret void
}

declare dso_local i64* @pmap_delayed_invl_genp(i32) #1

declare dso_local i32 @lock_delay_arg_init(%struct.lock_delay_arg*, i32*) #1

declare dso_local i64 @atomic_load_long(i32*) #1

declare dso_local i32 @PV_STAT(i32) #1

declare dso_local i32 @atomic_add_long(i32*, i32) #1

declare dso_local i32 @lock_delay(%struct.lock_delay_arg*) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, i32*) #1

declare dso_local i32 @pmap_delayed_invl_wait_block(i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
