; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_pv_constant_last.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_pv_constant_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prologue_value = type { i64 }

@pv_constant = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.prologue_value**, %struct.prologue_value**)* @pv_constant_last to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pv_constant_last(%struct.prologue_value** %0, %struct.prologue_value** %1) #0 {
  %3 = alloca %struct.prologue_value**, align 8
  %4 = alloca %struct.prologue_value**, align 8
  %5 = alloca %struct.prologue_value*, align 8
  store %struct.prologue_value** %0, %struct.prologue_value*** %3, align 8
  store %struct.prologue_value** %1, %struct.prologue_value*** %4, align 8
  %6 = load %struct.prologue_value**, %struct.prologue_value*** %3, align 8
  %7 = load %struct.prologue_value*, %struct.prologue_value** %6, align 8
  %8 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @pv_constant, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load %struct.prologue_value**, %struct.prologue_value*** %4, align 8
  %14 = load %struct.prologue_value*, %struct.prologue_value** %13, align 8
  %15 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @pv_constant, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = load %struct.prologue_value**, %struct.prologue_value*** %3, align 8
  %21 = load %struct.prologue_value*, %struct.prologue_value** %20, align 8
  store %struct.prologue_value* %21, %struct.prologue_value** %5, align 8
  %22 = load %struct.prologue_value**, %struct.prologue_value*** %4, align 8
  %23 = load %struct.prologue_value*, %struct.prologue_value** %22, align 8
  %24 = load %struct.prologue_value**, %struct.prologue_value*** %3, align 8
  store %struct.prologue_value* %23, %struct.prologue_value** %24, align 8
  %25 = load %struct.prologue_value*, %struct.prologue_value** %5, align 8
  %26 = load %struct.prologue_value**, %struct.prologue_value*** %4, align 8
  store %struct.prologue_value* %25, %struct.prologue_value** %26, align 8
  br label %27

27:                                               ; preds = %19, %12, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
