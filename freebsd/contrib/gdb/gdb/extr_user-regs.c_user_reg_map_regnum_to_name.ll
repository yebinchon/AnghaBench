; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_user-regs.c_user_reg_map_regnum_to_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_user-regs.c_user_reg_map_regnum_to_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.user_reg = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @user_reg_map_regnum_to_name(%struct.gdbarch* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.gdbarch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.user_reg*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %9 = call i32 @gdbarch_num_regs(%struct.gdbarch* %8)
  %10 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %11 = call i32 @gdbarch_num_pseudo_regs(%struct.gdbarch* %10)
  %12 = add nsw i32 %9, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %37

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i8* @gdbarch_register_name(%struct.gdbarch* %21, i32 %22)
  store i8* %23, i8** %3, align 8
  br label %37

24:                                               ; preds = %16
  %25 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 %26, %27
  %29 = call %struct.user_reg* @usernum_to_user_reg(%struct.gdbarch* %25, i32 %28)
  store %struct.user_reg* %29, %struct.user_reg** %7, align 8
  %30 = load %struct.user_reg*, %struct.user_reg** %7, align 8
  %31 = icmp eq %struct.user_reg* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i8* null, i8** %3, align 8
  br label %37

33:                                               ; preds = %24
  %34 = load %struct.user_reg*, %struct.user_reg** %7, align 8
  %35 = getelementptr inbounds %struct.user_reg, %struct.user_reg* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %3, align 8
  br label %37

37:                                               ; preds = %33, %32, %20, %15
  %38 = load i8*, i8** %3, align 8
  ret i8* %38
}

declare dso_local i32 @gdbarch_num_regs(%struct.gdbarch*) #1

declare dso_local i32 @gdbarch_num_pseudo_regs(%struct.gdbarch*) #1

declare dso_local i8* @gdbarch_register_name(%struct.gdbarch*, i32) #1

declare dso_local %struct.user_reg* @usernum_to_user_reg(%struct.gdbarch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
