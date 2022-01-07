; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdp.c_remote_rdp_store_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdp.c_remote_rdp_store_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_REGS = common dso_local global i32 0, align 4
@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@ARM_PC_REGNUM = common dso_local global i32 0, align 4
@RDP_CPU_READWRITE_MASK_PC = common dso_local global i32 0, align 4
@ARM_PS_REGNUM = common dso_local global i32 0, align 4
@RDP_CPU_READWRITE_MASK_CPSR = common dso_local global i32 0, align 4
@ARM_F0_REGNUM = common dso_local global i32 0, align 4
@ARM_F7_REGNUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Help me with reg %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @remote_rdp_store_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remote_rdp_store_register(i32 %0) #0 {
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
  call void @remote_rdp_store_register(i32 %13)
  br label %14

14:                                               ; preds = %12
  %15 = load i32, i32* %2, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %2, align 4
  br label %8

17:                                               ; preds = %8
  br label %67

18:                                               ; preds = %1
  %19 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %3, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %4, align 8
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @deprecated_read_register_gen(i32 %23, i8* %22)
  %25 = load i32, i32* %2, align 4
  %26 = icmp slt i32 %25, 15
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load i32, i32* %2, align 4
  %29 = shl i32 1, %28
  %30 = call i32 @rdp_store_one_register(i32 %29, i8* %22)
  br label %65

31:                                               ; preds = %18
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @ARM_PC_REGNUM, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @RDP_CPU_READWRITE_MASK_PC, align 4
  %37 = call i32 @rdp_store_one_register(i32 %36, i8* %22)
  br label %64

38:                                               ; preds = %31
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @ARM_PS_REGNUM, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @RDP_CPU_READWRITE_MASK_CPSR, align 4
  %44 = call i32 @rdp_store_one_register(i32 %43, i8* %22)
  br label %63

45:                                               ; preds = %38
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @ARM_F0_REGNUM, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* @ARM_F7_REGNUM, align 4
  %52 = icmp sle i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* @ARM_F0_REGNUM, align 4
  %56 = sub nsw i32 %54, %55
  %57 = shl i32 1, %56
  %58 = call i32 @rdp_store_one_fpu_register(i32 %57, i8* %22)
  br label %62

59:                                               ; preds = %49, %45
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %59, %53
  br label %63

63:                                               ; preds = %62, %42
  br label %64

64:                                               ; preds = %63, %35
  br label %65

65:                                               ; preds = %64, %27
  %66 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %66)
  br label %67

67:                                               ; preds = %65, %17
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @deprecated_read_register_gen(i32, i8*) #2

declare dso_local i32 @rdp_store_one_register(i32, i8*) #2

declare dso_local i32 @rdp_store_one_fpu_register(i32, i8*) #2

declare dso_local i32 @printf(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
