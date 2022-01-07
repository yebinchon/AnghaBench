; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ui-out.c_uo_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ui-out.c_uo_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_out = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ui_out*, i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uo_text(%struct.ui_out* %0, i8* %1) #0 {
  %3 = alloca %struct.ui_out*, align 8
  %4 = alloca i8*, align 8
  store %struct.ui_out* %0, %struct.ui_out** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.ui_out*, %struct.ui_out** %3, align 8
  %6 = getelementptr inbounds %struct.ui_out, %struct.ui_out* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.ui_out*, i8*)*, i32 (%struct.ui_out*, i8*)** %8, align 8
  %10 = icmp ne i32 (%struct.ui_out*, i8*)* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %21

12:                                               ; preds = %2
  %13 = load %struct.ui_out*, %struct.ui_out** %3, align 8
  %14 = getelementptr inbounds %struct.ui_out, %struct.ui_out* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.ui_out*, i8*)*, i32 (%struct.ui_out*, i8*)** %16, align 8
  %18 = load %struct.ui_out*, %struct.ui_out** %3, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 %17(%struct.ui_out* %18, i8* %19)
  br label %21

21:                                               ; preds = %12, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
