; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_pv_set_to_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_pv_set_to_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prologue_value = type { i32, i32, i32 }

@pv_register = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.prologue_value*, i32, i32)* @pv_set_to_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pv_set_to_register(%struct.prologue_value* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.prologue_value*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.prologue_value* %0, %struct.prologue_value** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @pv_register, align 4
  %8 = load %struct.prologue_value*, %struct.prologue_value** %4, align 8
  %9 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.prologue_value*, %struct.prologue_value** %4, align 8
  %12 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.prologue_value*, %struct.prologue_value** %4, align 8
  %15 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
