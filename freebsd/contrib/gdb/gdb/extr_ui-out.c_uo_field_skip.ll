; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ui-out.c_uo_field_skip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ui-out.c_uo_field_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_out = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ui_out*, i32, i32, i32, i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uo_field_skip(%struct.ui_out* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.ui_out*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.ui_out* %0, %struct.ui_out** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %11 = load %struct.ui_out*, %struct.ui_out** %6, align 8
  %12 = getelementptr inbounds %struct.ui_out, %struct.ui_out* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.ui_out*, i32, i32, i32, i8*)*, i32 (%struct.ui_out*, i32, i32, i32, i8*)** %14, align 8
  %16 = icmp ne i32 (%struct.ui_out*, i32, i32, i32, i8*)* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  br label %30

18:                                               ; preds = %5
  %19 = load %struct.ui_out*, %struct.ui_out** %6, align 8
  %20 = getelementptr inbounds %struct.ui_out, %struct.ui_out* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.ui_out*, i32, i32, i32, i8*)*, i32 (%struct.ui_out*, i32, i32, i32, i8*)** %22, align 8
  %24 = load %struct.ui_out*, %struct.ui_out** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 %23(%struct.ui_out* %24, i32 %25, i32 %26, i32 %27, i8* %28)
  br label %30

30:                                               ; preds = %18, %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
