; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ui-file.c_ui_file_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ui-file.c_ui_file_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 (%struct.ui_file*, i8*, i64)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_file_write(%struct.ui_file* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.ui_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.ui_file* %0, %struct.ui_file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %8 = getelementptr inbounds %struct.ui_file, %struct.ui_file* %7, i32 0, i32 0
  %9 = load i32 (%struct.ui_file*, i8*, i64)*, i32 (%struct.ui_file*, i8*, i64)** %8, align 8
  %10 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 %9(%struct.ui_file* %10, i8* %11, i64 %12)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
