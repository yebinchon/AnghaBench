; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_rs6000_convert_from_func_ptr_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_rs6000_convert_from_func_ptr_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.target_ops = type { i32 }
%struct.obj_section = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SEC_CODE = common dso_local global i32 0, align 4
@current_gdbarch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdbarch*, i32, %struct.target_ops*)* @rs6000_convert_from_func_ptr_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs6000_convert_from_func_ptr_addr(%struct.gdbarch* %0, i32 %1, %struct.target_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gdbarch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.target_ops*, align 8
  %8 = alloca %struct.obj_section*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.target_ops* %2, %struct.target_ops** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call %struct.obj_section* @find_pc_section(i32 %9)
  store %struct.obj_section* %10, %struct.obj_section** %8, align 8
  %11 = load %struct.obj_section*, %struct.obj_section** %8, align 8
  %12 = icmp ne %struct.obj_section* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %3
  %14 = load %struct.obj_section*, %struct.obj_section** %8, align 8
  %15 = getelementptr inbounds %struct.obj_section, %struct.obj_section* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SEC_CODE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %4, align 4
  br label %31

24:                                               ; preds = %13, %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @current_gdbarch, align 4
  %27 = call %struct.TYPE_4__* @gdbarch_tdep(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @read_memory_addr(i32 %25, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %24, %22
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.obj_section* @find_pc_section(i32) #1

declare dso_local i32 @read_memory_addr(i32, i32) #1

declare dso_local %struct.TYPE_4__* @gdbarch_tdep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
