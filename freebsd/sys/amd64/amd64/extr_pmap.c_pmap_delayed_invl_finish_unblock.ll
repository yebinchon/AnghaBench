; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_delayed_invl_finish_unblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_delayed_invl_finish_unblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32 }

@invl_gen_ts = common dso_local global i32 0, align 4
@pmap_invl_gen = common dso_local global i64 0, align 8
@TS_SHARED_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @pmap_delayed_invl_finish_unblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_delayed_invl_finish_unblock(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.turnstile*, align 8
  store i64 %0, i64* %2, align 8
  %4 = call i32 @turnstile_chain_lock(i32* @invl_gen_ts)
  %5 = call %struct.turnstile* @turnstile_lookup(i32* @invl_gen_ts)
  store %struct.turnstile* %5, %struct.turnstile** %3, align 8
  %6 = load i64, i64* %2, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i64, i64* %2, align 8
  store i64 %9, i64* @pmap_invl_gen, align 8
  br label %10

10:                                               ; preds = %8, %1
  %11 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %12 = icmp ne %struct.turnstile* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %15 = load i32, i32* @TS_SHARED_QUEUE, align 4
  %16 = call i32 @turnstile_broadcast(%struct.turnstile* %14, i32 %15)
  %17 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %18 = call i32 @turnstile_unpend(%struct.turnstile* %17)
  br label %19

19:                                               ; preds = %13, %10
  %20 = call i32 @turnstile_chain_unlock(i32* @invl_gen_ts)
  ret void
}

declare dso_local i32 @turnstile_chain_lock(i32*) #1

declare dso_local %struct.turnstile* @turnstile_lookup(i32*) #1

declare dso_local i32 @turnstile_broadcast(%struct.turnstile*, i32) #1

declare dso_local i32 @turnstile_unpend(%struct.turnstile*) #1

declare dso_local i32 @turnstile_chain_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
