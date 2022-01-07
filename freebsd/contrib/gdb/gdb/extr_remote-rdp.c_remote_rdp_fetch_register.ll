; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdp.c_remote_rdp_fetch_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdp.c_remote_rdp_fetch_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_REGS = common dso_local global i32 0, align 4
@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@ARM_PC_REGNUM = common dso_local global i32 0, align 4
@RDP_CPU_READWRITE_MASK_PC = common dso_local global i32 0, align 4
@ARM_PS_REGNUM = common dso_local global i32 0, align 4
@RDP_CPU_READWRITE_MASK_CPSR = common dso_local global i32 0, align 4
@ARM_FPS_REGNUM = common dso_local global i32 0, align 4
@RDP_FPU_READWRITE_MASK_FPS = common dso_local global i32 0, align 4
@ARM_F0_REGNUM = common dso_local global i32 0, align 4
@ARM_F7_REGNUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Help me with fetch reg %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @remote_rdp_fetch_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remote_rdp_fetch_register(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %14, %7
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @NUM_REGS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load i32, i32* %2, align 4
  call void @remote_rdp_fetch_register(i32 %13)
  br label %14

14:                                               ; preds = %12
  %15 = load i32, i32* %2, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %2, align 4
  br label %8

17:                                               ; preds = %8
  br label %75

18:                                               ; preds = %1
  %19 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %3, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %4, align 8
  %23 = load i32, i32* %2, align 4
  %24 = icmp slt i32 %23, 15
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32, i32* %2, align 4
  %27 = shl i32 1, %26
  %28 = call i32 @rdp_fetch_one_register(i32 %27, i8* %22)
  br label %71

29:                                               ; preds = %18
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @ARM_PC_REGNUM, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @RDP_CPU_READWRITE_MASK_PC, align 4
  %35 = call i32 @rdp_fetch_one_register(i32 %34, i8* %22)
  br label %70

36:                                               ; preds = %29
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @ARM_PS_REGNUM, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @RDP_CPU_READWRITE_MASK_CPSR, align 4
  %42 = call i32 @rdp_fetch_one_register(i32 %41, i8* %22)
  br label %69

43:                                               ; preds = %36
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @ARM_FPS_REGNUM, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @RDP_FPU_READWRITE_MASK_FPS, align 4
  %49 = call i32 @rdp_fetch_one_fpu_register(i32 %48, i8* %22)
  br label %68

50:                                               ; preds = %43
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @ARM_F0_REGNUM, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @ARM_F7_REGNUM, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* @ARM_F0_REGNUM, align 4
  %61 = sub nsw i32 %59, %60
  %62 = shl i32 1, %61
  %63 = call i32 @rdp_fetch_one_fpu_register(i32 %62, i8* %22)
  br label %67

64:                                               ; preds = %54, %50
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %64, %58
  br label %68

68:                                               ; preds = %67, %47
  br label %69

69:                                               ; preds = %68, %40
  br label %70

70:                                               ; preds = %69, %33
  br label %71

71:                                               ; preds = %70, %25
  %72 = load i32, i32* %2, align 4
  %73 = call i32 @supply_register(i32 %72, i8* %22)
  %74 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %74)
  br label %75

75:                                               ; preds = %71, %17
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rdp_fetch_one_register(i32, i8*) #2

declare dso_local i32 @rdp_fetch_one_fpu_register(i32, i8*) #2

declare dso_local i32 @printf(i8*, i32) #2

declare dso_local i32 @supply_register(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
