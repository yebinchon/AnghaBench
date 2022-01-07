; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/arch/arm/extr_armfbsd-nat.c_fill_fpregset.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/arch/arm/extr_armfbsd-nat.c_fill_fpregset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpreg = type { i32, i32* }

@ARM_F0_REGNUM = common dso_local global i32 0, align 4
@ARM_F7_REGNUM = common dso_local global i32 0, align 4
@current_regcache = common dso_local global i32 0, align 4
@ARM_FPS_REGNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_fpregset(%struct.fpreg* %0, i32 %1) #0 {
  %3 = alloca %struct.fpreg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fpreg* %0, %struct.fpreg** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @ARM_F0_REGNUM, align 4
  store i32 %6, i32* %5, align 4
  br label %7

7:                                                ; preds = %31, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @ARM_F7_REGNUM, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %34

11:                                               ; preds = %7
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14, %11
  %19 = load i32, i32* @current_regcache, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.fpreg*, %struct.fpreg** %3, align 8
  %22 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @ARM_F0_REGNUM, align 4
  %26 = sub nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  %29 = call i32 @regcache_raw_supply(i32 %19, i32 %20, i32* %28)
  br label %30

30:                                               ; preds = %18, %14
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %7

34:                                               ; preds = %7
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @ARM_FPS_REGNUM, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37, %34
  %42 = load i32, i32* @current_regcache, align 4
  %43 = load i32, i32* @ARM_FPS_REGNUM, align 4
  %44 = load %struct.fpreg*, %struct.fpreg** %3, align 8
  %45 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %44, i32 0, i32 0
  %46 = call i32 @regcache_raw_supply(i32 %42, i32 %43, i32* %45)
  br label %47

47:                                               ; preds = %41, %37
  ret void
}

declare dso_local i32 @regcache_raw_supply(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
