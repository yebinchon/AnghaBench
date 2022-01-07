; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_delayed_invl_wait_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_delayed_invl_wait_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32 }

@invl_gen_ts = common dso_local global i32 0, align 4
@TS_SHARED_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*)* @pmap_delayed_invl_wait_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_delayed_invl_wait_block(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.turnstile*, align 8
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = call %struct.turnstile* @turnstile_trywait(i32* @invl_gen_ts)
  store %struct.turnstile* %6, %struct.turnstile** %5, align 8
  %7 = load i64*, i64** %3, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load i64*, i64** %4, align 8
  %10 = call i64 @atomic_load_long(i64* %9)
  %11 = icmp sgt i64 %8, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %14 = load i32, i32* @TS_SHARED_QUEUE, align 4
  %15 = call i32 @turnstile_wait(%struct.turnstile* %13, i32* null, i32 %14)
  br label %19

16:                                               ; preds = %2
  %17 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %18 = call i32 @turnstile_cancel(%struct.turnstile* %17)
  br label %19

19:                                               ; preds = %16, %12
  ret void
}

declare dso_local %struct.turnstile* @turnstile_trywait(i32*) #1

declare dso_local i64 @atomic_load_long(i64*) #1

declare dso_local i32 @turnstile_wait(%struct.turnstile*, i32*, i32) #1

declare dso_local i32 @turnstile_cancel(%struct.turnstile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
