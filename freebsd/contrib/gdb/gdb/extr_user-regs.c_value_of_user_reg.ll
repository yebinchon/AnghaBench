; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_user-regs.c_value_of_user_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_user-regs.c_value_of_user_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.frame_info = type { i32 }
%struct.gdbarch = type { i32 }
%struct.user_reg = type { %struct.value* (%struct.frame_info.0*)* }
%struct.frame_info.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @value_of_user_reg(i32 %0, %struct.frame_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.frame_info*, align 8
  %5 = alloca %struct.gdbarch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.user_reg*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.frame_info* %1, %struct.frame_info** %4, align 8
  %8 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %9 = call %struct.gdbarch* @get_frame_arch(%struct.frame_info* %8)
  store %struct.gdbarch* %9, %struct.gdbarch** %5, align 8
  %10 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %11 = call i32 @gdbarch_num_regs(%struct.gdbarch* %10)
  %12 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %13 = call i32 @gdbarch_num_pseudo_regs(%struct.gdbarch* %12)
  %14 = add nsw i32 %11, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 %16, %17
  %19 = call %struct.user_reg* @usernum_to_user_reg(%struct.gdbarch* %15, i32 %18)
  store %struct.user_reg* %19, %struct.user_reg** %7, align 8
  %20 = load %struct.user_reg*, %struct.user_reg** %7, align 8
  %21 = icmp ne %struct.user_reg* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @gdb_assert(i32 %22)
  %24 = load %struct.user_reg*, %struct.user_reg** %7, align 8
  %25 = getelementptr inbounds %struct.user_reg, %struct.user_reg* %24, i32 0, i32 0
  %26 = load %struct.value* (%struct.frame_info.0*)*, %struct.value* (%struct.frame_info.0*)** %25, align 8
  %27 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %28 = bitcast %struct.frame_info* %27 to %struct.frame_info.0*
  %29 = call %struct.value* %26(%struct.frame_info.0* %28)
  ret %struct.value* %29
}

declare dso_local %struct.gdbarch* @get_frame_arch(%struct.frame_info*) #1

declare dso_local i32 @gdbarch_num_regs(%struct.gdbarch*) #1

declare dso_local i32 @gdbarch_num_pseudo_regs(%struct.gdbarch*) #1

declare dso_local %struct.user_reg* @usernum_to_user_reg(%struct.gdbarch*, i32) #1

declare dso_local i32 @gdb_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
