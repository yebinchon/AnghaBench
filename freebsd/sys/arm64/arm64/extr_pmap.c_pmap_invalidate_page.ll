; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_invalidate_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_invalidate_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ishst = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global %struct.TYPE_4__* null, align 8
@ish = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32)* @pmap_invalidate_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_invalidate_page(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @sched_pin()
  %7 = load i32, i32* @ishst, align 4
  %8 = call i32 @dsb(i32 %7)
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kernel_pmap, align 8
  %11 = icmp eq %struct.TYPE_4__* %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @atop(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  call void asm sideeffect "tlbi vaae1is, $0", "r,~{dirflag},~{fpsr},~{flags}"(i32 %15) #2, !srcloc !2
  br label %26

16:                                               ; preds = %2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @COOKIE_TO_ASID(i32 %19)
  %21 = call i32 @ASID_TO_OPERAND(i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @atop(i32 %22)
  %24 = or i32 %21, %23
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  call void asm sideeffect "tlbi vae1is, $0", "r,~{dirflag},~{fpsr},~{flags}"(i32 %25) #2, !srcloc !3
  br label %26

26:                                               ; preds = %16, %12
  %27 = load i32, i32* @ish, align 4
  %28 = call i32 @dsb(i32 %27)
  %29 = call i32 (...) @isb()
  %30 = call i32 (...) @sched_unpin()
  ret void
}

declare dso_local i32 @sched_pin(...) #1

declare dso_local i32 @dsb(i32) #1

declare dso_local i32 @atop(i32) #1

declare dso_local i32 @ASID_TO_OPERAND(i32) #1

declare dso_local i32 @COOKIE_TO_ASID(i32) #1

declare dso_local i32 @isb(...) #1

declare dso_local i32 @sched_unpin(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 689}
!3 = !{i32 818}
