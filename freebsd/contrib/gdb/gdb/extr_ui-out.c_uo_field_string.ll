; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ui-out.c_uo_field_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ui-out.c_uo_field_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_out = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ui_out*, i32, i32, i32, i8*, i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uo_field_string(%struct.ui_out* %0, i32 %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.ui_out*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.ui_out* %0, %struct.ui_out** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %13 = load %struct.ui_out*, %struct.ui_out** %7, align 8
  %14 = getelementptr inbounds %struct.ui_out, %struct.ui_out* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.ui_out*, i32, i32, i32, i8*, i8*)*, i32 (%struct.ui_out*, i32, i32, i32, i8*, i8*)** %16, align 8
  %18 = icmp ne i32 (%struct.ui_out*, i32, i32, i32, i8*, i8*)* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %6
  br label %33

20:                                               ; preds = %6
  %21 = load %struct.ui_out*, %struct.ui_out** %7, align 8
  %22 = getelementptr inbounds %struct.ui_out, %struct.ui_out* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.ui_out*, i32, i32, i32, i8*, i8*)*, i32 (%struct.ui_out*, i32, i32, i32, i8*, i8*)** %24, align 8
  %26 = load %struct.ui_out*, %struct.ui_out** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i8*, i8** %11, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = call i32 %25(%struct.ui_out* %26, i32 %27, i32 %28, i32 %29, i8* %30, i8* %31)
  br label %33

33:                                               ; preds = %20, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
