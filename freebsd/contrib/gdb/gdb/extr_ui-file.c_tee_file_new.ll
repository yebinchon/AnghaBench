; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ui-file.c_tee_file_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ui-file.c_tee_file_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }
%struct.tee_file = type { i32, i32, %struct.ui_file*, %struct.ui_file*, i32* }

@tee_file_magic = common dso_local global i32 0, align 4
@tee_file_delete = common dso_local global i32 0, align 4
@tee_file_flush = common dso_local global i32 0, align 4
@tee_file_write = common dso_local global i32 0, align 4
@tee_file_fputs = common dso_local global i32 0, align 4
@tee_file_isatty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ui_file* @tee_file_new(%struct.ui_file* %0, i32 %1, %struct.ui_file* %2, i32 %3) #0 {
  %5 = alloca %struct.ui_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ui_file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ui_file*, align 8
  %10 = alloca %struct.tee_file*, align 8
  store %struct.ui_file* %0, %struct.ui_file** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ui_file* %2, %struct.ui_file** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = call %struct.ui_file* (...) @ui_file_new()
  store %struct.ui_file* %11, %struct.ui_file** %9, align 8
  %12 = call %struct.tee_file* @xmalloc(i32 32)
  store %struct.tee_file* %12, %struct.tee_file** %10, align 8
  %13 = load %struct.tee_file*, %struct.tee_file** %10, align 8
  %14 = getelementptr inbounds %struct.tee_file, %struct.tee_file* %13, i32 0, i32 4
  store i32* @tee_file_magic, i32** %14, align 8
  %15 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %16 = load %struct.tee_file*, %struct.tee_file** %10, align 8
  %17 = getelementptr inbounds %struct.tee_file, %struct.tee_file* %16, i32 0, i32 3
  store %struct.ui_file* %15, %struct.ui_file** %17, align 8
  %18 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %19 = load %struct.tee_file*, %struct.tee_file** %10, align 8
  %20 = getelementptr inbounds %struct.tee_file, %struct.tee_file* %19, i32 0, i32 2
  store %struct.ui_file* %18, %struct.ui_file** %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.tee_file*, %struct.tee_file** %10, align 8
  %23 = getelementptr inbounds %struct.tee_file, %struct.tee_file* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.tee_file*, %struct.tee_file** %10, align 8
  %26 = getelementptr inbounds %struct.tee_file, %struct.tee_file* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ui_file*, %struct.ui_file** %9, align 8
  %28 = load %struct.tee_file*, %struct.tee_file** %10, align 8
  %29 = load i32, i32* @tee_file_delete, align 4
  %30 = call i32 @set_ui_file_data(%struct.ui_file* %27, %struct.tee_file* %28, i32 %29)
  %31 = load %struct.ui_file*, %struct.ui_file** %9, align 8
  %32 = load i32, i32* @tee_file_flush, align 4
  %33 = call i32 @set_ui_file_flush(%struct.ui_file* %31, i32 %32)
  %34 = load %struct.ui_file*, %struct.ui_file** %9, align 8
  %35 = load i32, i32* @tee_file_write, align 4
  %36 = call i32 @set_ui_file_write(%struct.ui_file* %34, i32 %35)
  %37 = load %struct.ui_file*, %struct.ui_file** %9, align 8
  %38 = load i32, i32* @tee_file_fputs, align 4
  %39 = call i32 @set_ui_file_fputs(%struct.ui_file* %37, i32 %38)
  %40 = load %struct.ui_file*, %struct.ui_file** %9, align 8
  %41 = load i32, i32* @tee_file_isatty, align 4
  %42 = call i32 @set_ui_file_isatty(%struct.ui_file* %40, i32 %41)
  %43 = load %struct.ui_file*, %struct.ui_file** %9, align 8
  ret %struct.ui_file* %43
}

declare dso_local %struct.ui_file* @ui_file_new(...) #1

declare dso_local %struct.tee_file* @xmalloc(i32) #1

declare dso_local i32 @set_ui_file_data(%struct.ui_file*, %struct.tee_file*, i32) #1

declare dso_local i32 @set_ui_file_flush(%struct.ui_file*, i32) #1

declare dso_local i32 @set_ui_file_write(%struct.ui_file*, i32) #1

declare dso_local i32 @set_ui_file_fputs(%struct.ui_file*, i32) #1

declare dso_local i32 @set_ui_file_isatty(%struct.ui_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
