; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_rts_better.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_rts_better.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_spare = type { i32 }
%struct.rt_entry = type { %struct.rt_spare* }

@NUM_SPARES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rt_spare* (%struct.rt_entry*)* @rts_better to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rt_spare* @rts_better(%struct.rt_entry* %0) #0 {
  %2 = alloca %struct.rt_entry*, align 8
  %3 = alloca %struct.rt_spare*, align 8
  %4 = alloca %struct.rt_spare*, align 8
  %5 = alloca i32, align 4
  store %struct.rt_entry* %0, %struct.rt_entry** %2, align 8
  %6 = load %struct.rt_entry*, %struct.rt_entry** %2, align 8
  %7 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %6, i32 0, i32 0
  %8 = load %struct.rt_spare*, %struct.rt_spare** %7, align 8
  %9 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %8, i64 1
  store %struct.rt_spare* %9, %struct.rt_spare** %3, align 8
  %10 = load i32, i32* @NUM_SPARES, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.rt_spare*, %struct.rt_spare** %3, align 8
  %12 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %11, i64 1
  store %struct.rt_spare* %12, %struct.rt_spare** %4, align 8
  br label %13

13:                                               ; preds = %25, %1
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 2
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load %struct.rt_entry*, %struct.rt_entry** %2, align 8
  %18 = load %struct.rt_spare*, %struct.rt_spare** %4, align 8
  %19 = load %struct.rt_spare*, %struct.rt_spare** %3, align 8
  %20 = call i64 @BETTER_LINK(%struct.rt_entry* %17, %struct.rt_spare* %18, %struct.rt_spare* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load %struct.rt_spare*, %struct.rt_spare** %4, align 8
  store %struct.rt_spare* %23, %struct.rt_spare** %3, align 8
  br label %24

24:                                               ; preds = %22, %16
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %5, align 4
  %28 = load %struct.rt_spare*, %struct.rt_spare** %4, align 8
  %29 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %28, i32 1
  store %struct.rt_spare* %29, %struct.rt_spare** %4, align 8
  br label %13

30:                                               ; preds = %13
  %31 = load %struct.rt_spare*, %struct.rt_spare** %3, align 8
  ret %struct.rt_spare* %31
}

declare dso_local i64 @BETTER_LINK(%struct.rt_entry*, %struct.rt_spare*, %struct.rt_spare*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
