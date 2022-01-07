; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc_software_single_step.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc_software_single_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch_tdep = type { i32, i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@sparc_software_single_step.npc = internal global i64 0, align 8
@sparc_software_single_step.nnpc = internal global i64 0, align 8
@sparc_software_single_step.npc_save = internal global [4 x i8] zeroinitializer, align 1
@sparc_software_single_step.nnpc_save = internal global [4 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sparc_software_single_step(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gdbarch_tdep*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @current_gdbarch, align 4
  %8 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %7)
  store %struct.gdbarch_tdep* %8, %struct.gdbarch_tdep** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %2
  %12 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %13 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @sparc_address_from_register(i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %17 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @sparc_address_from_register(i32 %18)
  store i64 %19, i64* @sparc_software_single_step.npc, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @sparc_analyze_control_transfer(i64 %20, i64* @sparc_software_single_step.npc)
  store i64 %21, i64* @sparc_software_single_step.nnpc, align 8
  %22 = load i64, i64* @sparc_software_single_step.npc, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %11
  %25 = load i64, i64* @sparc_software_single_step.npc, align 8
  %26 = call i32 @target_insert_breakpoint(i64 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @sparc_software_single_step.npc_save, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %11
  %28 = load i64, i64* @sparc_software_single_step.nnpc, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i64, i64* @sparc_software_single_step.nnpc, align 8
  %32 = call i32 @target_insert_breakpoint(i64 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @sparc_software_single_step.nnpc_save, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i64, i64* @sparc_software_single_step.npc, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* @sparc_software_single_step.nnpc, align 8
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i1 [ true, %33 ], [ %38, %36 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @gdb_assert(i32 %41)
  %43 = load i64, i64* @sparc_software_single_step.nnpc, align 8
  %44 = load i64, i64* @sparc_software_single_step.npc, align 8
  %45 = icmp ne i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @gdb_assert(i32 %46)
  br label %61

48:                                               ; preds = %2
  %49 = load i64, i64* @sparc_software_single_step.npc, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i64, i64* @sparc_software_single_step.npc, align 8
  %53 = call i32 @target_remove_breakpoint(i64 %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @sparc_software_single_step.npc_save, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i64, i64* @sparc_software_single_step.nnpc, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i64, i64* @sparc_software_single_step.nnpc, align 8
  %59 = call i32 @target_remove_breakpoint(i64 %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @sparc_software_single_step.nnpc_save, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %54
  br label %61

61:                                               ; preds = %60, %39
  ret void
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(i32) #1

declare dso_local i64 @sparc_address_from_register(i32) #1

declare dso_local i64 @sparc_analyze_control_transfer(i64, i64*) #1

declare dso_local i32 @target_insert_breakpoint(i64, i8*) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @target_remove_breakpoint(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
