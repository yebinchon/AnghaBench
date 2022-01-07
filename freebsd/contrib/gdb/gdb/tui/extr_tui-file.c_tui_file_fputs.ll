; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-file.c_tui_file_fputs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-file.c_tui_file_fputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }
%struct.tui_stream = type { i64, i32 }

@astring = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_file_fputs(i8* %0, %struct.ui_file* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ui_file*, align 8
  %5 = alloca %struct.tui_stream*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ui_file* %1, %struct.ui_file** %4, align 8
  %6 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %7 = call %struct.tui_stream* @ui_file_data(%struct.ui_file* %6)
  store %struct.tui_stream* %7, %struct.tui_stream** %5, align 8
  %8 = load %struct.tui_stream*, %struct.tui_stream** %5, align 8
  %9 = getelementptr inbounds %struct.tui_stream, %struct.tui_stream* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @astring, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %17 = call i32 @tui_file_adjust_strbuf(i32 %15, %struct.ui_file* %16)
  %18 = load %struct.tui_stream*, %struct.tui_stream** %5, align 8
  %19 = getelementptr inbounds %struct.tui_stream, %struct.tui_stream* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @strcat(i32 %20, i8* %21)
  br label %26

23:                                               ; preds = %2
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @tui_puts(i8* %24)
  br label %26

26:                                               ; preds = %23, %13
  ret void
}

declare dso_local %struct.tui_stream* @ui_file_data(%struct.ui_file*) #1

declare dso_local i32 @tui_file_adjust_strbuf(i32, %struct.ui_file*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcat(i32, i8*) #1

declare dso_local i32 @tui_puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
