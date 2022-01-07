; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/arch/arm/extr_armfbsd-nat.c_store_fp_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/arch/arm/extr_armfbsd-nat.c_store_fp_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpreg = type { i32*, i32 }

@PT_GETFPREGS = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"unable to fetch floating-point registers\00", align 1
@ARM_F0_REGNUM = common dso_local global i32 0, align 4
@PT_SETFPREGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"unable to write register %d to inferior\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @store_fp_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_fp_register(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fpreg, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @PT_GETFPREGS, align 4
  %6 = load i32, i32* @inferior_ptid, align 4
  %7 = call i32 @PIDGET(i32 %6)
  %8 = ptrtoint %struct.fpreg* %3 to i32
  %9 = call i32 @ptrace(i32 %5, i32 %7, i32 %8, i32 0)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %42

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  switch i32 %15, label %20 [
    i32 128, label %16
  ]

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %3, i32 0, i32 1
  %18 = bitcast i32* %17 to i8*
  %19 = call i32 @regcache_collect(i32 128, i8* %18)
  br label %31

20:                                               ; preds = %14
  %21 = load i32, i32* %2, align 4
  %22 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %3, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @ARM_F0_REGNUM, align 4
  %26 = sub nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  %29 = bitcast i32* %28 to i8*
  %30 = call i32 @regcache_collect(i32 %21, i8* %29)
  br label %31

31:                                               ; preds = %20, %16
  %32 = load i32, i32* @PT_SETFPREGS, align 4
  %33 = load i32, i32* @inferior_ptid, align 4
  %34 = call i32 @PIDGET(i32 %33)
  %35 = ptrtoint %struct.fpreg* %3 to i32
  %36 = call i32 @ptrace(i32 %32, i32 %34, i32 %35, i32 0)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* %2, align 4
  %41 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %12, %39, %31
  ret void
}

declare dso_local i32 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @warning(i8*, ...) #1

declare dso_local i32 @regcache_collect(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
