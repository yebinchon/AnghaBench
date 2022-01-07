; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_user-regs.c_usernum_to_user_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_user-regs.c_usernum_to_user_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_reg = type { %struct.user_reg* }
%struct.gdbarch = type { i32 }
%struct.gdb_user_regs = type { %struct.user_reg* }

@user_regs_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.user_reg* (%struct.gdbarch*, i32)* @usernum_to_user_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.user_reg* @usernum_to_user_reg(%struct.gdbarch* %0, i32 %1) #0 {
  %3 = alloca %struct.user_reg*, align 8
  %4 = alloca %struct.gdbarch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gdb_user_regs*, align 8
  %7 = alloca %struct.user_reg*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %9 = load i32, i32* @user_regs_data, align 4
  %10 = call %struct.gdb_user_regs* @gdbarch_data(%struct.gdbarch* %8, i32 %9)
  store %struct.gdb_user_regs* %10, %struct.gdb_user_regs** %6, align 8
  %11 = load %struct.gdb_user_regs*, %struct.gdb_user_regs** %6, align 8
  %12 = getelementptr inbounds %struct.gdb_user_regs, %struct.gdb_user_regs* %11, i32 0, i32 0
  %13 = load %struct.user_reg*, %struct.user_reg** %12, align 8
  store %struct.user_reg* %13, %struct.user_reg** %7, align 8
  br label %14

14:                                               ; preds = %25, %2
  %15 = load %struct.user_reg*, %struct.user_reg** %7, align 8
  %16 = icmp ne %struct.user_reg* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load %struct.user_reg*, %struct.user_reg** %7, align 8
  store %struct.user_reg* %21, %struct.user_reg** %3, align 8
  br label %30

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %22
  %26 = load %struct.user_reg*, %struct.user_reg** %7, align 8
  %27 = getelementptr inbounds %struct.user_reg, %struct.user_reg* %26, i32 0, i32 0
  %28 = load %struct.user_reg*, %struct.user_reg** %27, align 8
  store %struct.user_reg* %28, %struct.user_reg** %7, align 8
  br label %14

29:                                               ; preds = %14
  store %struct.user_reg* null, %struct.user_reg** %3, align 8
  br label %30

30:                                               ; preds = %29, %20
  %31 = load %struct.user_reg*, %struct.user_reg** %3, align 8
  ret %struct.user_reg* %31
}

declare dso_local %struct.gdb_user_regs* @gdbarch_data(%struct.gdbarch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
