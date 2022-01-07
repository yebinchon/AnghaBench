; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ui-out.c_ui_out_field_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ui-out.c_ui_out_field_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_out = type { i32 }
%struct.ui_out_level = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_out_field_int(%struct.ui_out* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ui_out*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ui_out_level*, align 8
  store %struct.ui_out* %0, %struct.ui_out** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %12 = call %struct.ui_out_level* @current_level(%struct.ui_out* %11)
  store %struct.ui_out_level* %12, %struct.ui_out_level** %10, align 8
  %13 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %14 = call i32 @verify_field(%struct.ui_out* %13, i32* %7, i32* %8, i32* %9)
  %15 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @uo_field_int(%struct.ui_out* %15, i32 %16, i32 %17, i32 %18, i8* %19, i32 %20)
  ret void
}

declare dso_local %struct.ui_out_level* @current_level(%struct.ui_out*) #1

declare dso_local i32 @verify_field(%struct.ui_out*, i32*, i32*, i32*) #1

declare dso_local i32 @uo_field_int(%struct.ui_out*, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
