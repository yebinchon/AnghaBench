; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_invalidate_range_nopin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_invalidate_range_nopin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ishst = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global %struct.TYPE_4__* null, align 8
@ish = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32)* @pmap_invalidate_range_nopin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_invalidate_range_nopin(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @ishst, align 4
  %11 = call i32 @dsb(i32 %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kernel_pmap, align 8
  %14 = icmp eq %struct.TYPE_4__* %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @atop(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @atop(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %27, %15
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i32, i32* %8, align 4
  call void asm sideeffect "tlbi vaae1is, $0", "r,~{dirflag},~{fpsr},~{flags}"(i32 %26) #2, !srcloc !2
  br label %27

27:                                               ; preds = %25
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %21

30:                                               ; preds = %21
  br label %56

31:                                               ; preds = %3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @COOKIE_TO_ASID(i32 %34)
  %36 = call i32 @ASID_TO_OPERAND(i32 %35)
  store i32 %36, i32* %7, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @atop(i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @atop(i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %52, %31
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  call void asm sideeffect "tlbi vae1is, $0", "r,~{dirflag},~{fpsr},~{flags}"(i32 %51) #2, !srcloc !3
  br label %52

52:                                               ; preds = %50
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %46

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %30
  %57 = load i32, i32* @ish, align 4
  %58 = call i32 @dsb(i32 %57)
  %59 = call i32 (...) @isb()
  ret void
}

declare dso_local i32 @dsb(i32) #1

declare dso_local i32 @atop(i32) #1

declare dso_local i32 @ASID_TO_OPERAND(i32) #1

declare dso_local i32 @COOKIE_TO_ASID(i32) #1

declare dso_local i32 @isb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 727}
!3 = !{i32 930}
