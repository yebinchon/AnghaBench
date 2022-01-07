; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc32_register_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc32_register_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.gdbarch = type { i32 }

@SPARC_F0_REGNUM = common dso_local global i32 0, align 4
@SPARC_F31_REGNUM = common dso_local global i32 0, align 4
@builtin_type_float = common dso_local global %struct.type* null, align 8
@SPARC32_D0_REGNUM = common dso_local global i32 0, align 4
@SPARC32_D30_REGNUM = common dso_local global i32 0, align 4
@builtin_type_double = common dso_local global %struct.type* null, align 8
@SPARC_SP_REGNUM = common dso_local global i32 0, align 4
@SPARC_FP_REGNUM = common dso_local global i32 0, align 4
@builtin_type_void_data_ptr = common dso_local global %struct.type* null, align 8
@SPARC32_PC_REGNUM = common dso_local global i32 0, align 4
@SPARC32_NPC_REGNUM = common dso_local global i32 0, align 4
@builtin_type_void_func_ptr = common dso_local global %struct.type* null, align 8
@builtin_type_int32 = common dso_local global %struct.type* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (%struct.gdbarch*, i32)* @sparc32_register_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @sparc32_register_type(%struct.gdbarch* %0, i32 %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.gdbarch*, align 8
  %5 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @SPARC_F0_REGNUM, align 4
  %8 = icmp sge i32 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @SPARC_F31_REGNUM, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load %struct.type*, %struct.type** @builtin_type_float, align 8
  store %struct.type* %14, %struct.type** %3, align 8
  br label %47

15:                                               ; preds = %9, %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SPARC32_D0_REGNUM, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @SPARC32_D30_REGNUM, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load %struct.type*, %struct.type** @builtin_type_double, align 8
  store %struct.type* %24, %struct.type** %3, align 8
  br label %47

25:                                               ; preds = %19, %15
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @SPARC_SP_REGNUM, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SPARC_FP_REGNUM, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29, %25
  %34 = load %struct.type*, %struct.type** @builtin_type_void_data_ptr, align 8
  store %struct.type* %34, %struct.type** %3, align 8
  br label %47

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @SPARC32_PC_REGNUM, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @SPARC32_NPC_REGNUM, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %35
  %44 = load %struct.type*, %struct.type** @builtin_type_void_func_ptr, align 8
  store %struct.type* %44, %struct.type** %3, align 8
  br label %47

45:                                               ; preds = %39
  %46 = load %struct.type*, %struct.type** @builtin_type_int32, align 8
  store %struct.type* %46, %struct.type** %3, align 8
  br label %47

47:                                               ; preds = %45, %43, %33, %23, %13
  %48 = load %struct.type*, %struct.type** %3, align 8
  ret %struct.type* %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
