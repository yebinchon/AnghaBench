; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/arch/arm/extr_armfbsd-nat.c_store_fp_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/arch/arm/extr_armfbsd-nat.c_store_fp_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpreg = type { i32, i32* }

@ARM_F0_REGNUM = common dso_local global i32 0, align 4
@ARM_F7_REGNUM = common dso_local global i32 0, align 4
@ARM_FPS_REGNUM = common dso_local global i32 0, align 4
@PT_SETFPREGS = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"unable to store floating-point registers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @store_fp_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_fp_regs() #0 {
  %1 = alloca %struct.fpreg, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @ARM_F0_REGNUM, align 4
  store i32 %4, i32* %3, align 4
  br label %5

5:                                                ; preds = %20, %0
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @ARM_F7_REGNUM, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = load i32, i32* %3, align 4
  %11 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %1, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @ARM_F0_REGNUM, align 4
  %15 = sub nsw i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %12, i64 %16
  %18 = bitcast i32* %17 to i8*
  %19 = call i32 @regcache_collect(i32 %10, i8* %18)
  br label %20

20:                                               ; preds = %9
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %5

23:                                               ; preds = %5
  %24 = load i32, i32* @ARM_FPS_REGNUM, align 4
  %25 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %1, i32 0, i32 0
  %26 = bitcast i32* %25 to i8*
  %27 = call i32 @regcache_collect(i32 %24, i8* %26)
  %28 = load i32, i32* @PT_SETFPREGS, align 4
  %29 = load i32, i32* @inferior_ptid, align 4
  %30 = call i32 @PIDGET(i32 %29)
  %31 = ptrtoint %struct.fpreg* %1 to i32
  %32 = call i32 @ptrace(i32 %28, i32 %30, i32 %31, i32 0)
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = call i32 @warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %23
  ret void
}

declare dso_local i32 @regcache_collect(i32, i8*) #1

declare dso_local i32 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
