; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_ppc_floating_point_unit_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_ppc_floating_point_unit_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.bfd_arch_info = type { i64, i64 }

@bfd_arch_powerpc = common dso_local global i64 0, align 8
@bfd_mach_ppc_e500 = common dso_local global i64 0, align 8
@bfd_arch_rs6000 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ppc_floating_point_unit_p(%struct.gdbarch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gdbarch*, align 8
  %4 = alloca %struct.bfd_arch_info*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %3, align 8
  %5 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %6 = call %struct.bfd_arch_info* @gdbarch_bfd_arch_info(%struct.gdbarch* %5)
  store %struct.bfd_arch_info* %6, %struct.bfd_arch_info** %4, align 8
  %7 = load %struct.bfd_arch_info*, %struct.bfd_arch_info** %4, align 8
  %8 = getelementptr inbounds %struct.bfd_arch_info, %struct.bfd_arch_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @bfd_arch_powerpc, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.bfd_arch_info*, %struct.bfd_arch_info** %4, align 8
  %14 = getelementptr inbounds %struct.bfd_arch_info, %struct.bfd_arch_info* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @bfd_mach_ppc_e500, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %2, align 4
  br label %27

19:                                               ; preds = %1
  %20 = load %struct.bfd_arch_info*, %struct.bfd_arch_info** %4, align 8
  %21 = getelementptr inbounds %struct.bfd_arch_info, %struct.bfd_arch_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @bfd_arch_rs6000, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %27

26:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %25, %12
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.bfd_arch_info* @gdbarch_bfd_arch_info(%struct.gdbarch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
