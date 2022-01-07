; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ui-out.c_ui_out_field_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ui-out.c_ui_out_field_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_out = type { i32 }
%struct.ui_stream = type { i32 }
%struct.cleanup = type { i32 }

@xfree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_out_field_stream(%struct.ui_out* %0, i8* %1, %struct.ui_stream* %2) #0 {
  %4 = alloca %struct.ui_out*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ui_stream*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cleanup*, align 8
  store %struct.ui_out* %0, %struct.ui_out** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ui_stream* %2, %struct.ui_stream** %6, align 8
  %10 = load %struct.ui_stream*, %struct.ui_stream** %6, align 8
  %11 = getelementptr inbounds %struct.ui_stream, %struct.ui_stream* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @ui_file_xstrdup(i32 %12, i64* %7)
  store i8* %13, i8** %8, align 8
  %14 = load i32, i32* @xfree, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = call %struct.cleanup* @make_cleanup(i32 %14, i8* %15)
  store %struct.cleanup* %16, %struct.cleanup** %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @ui_out_field_string(%struct.ui_out* %20, i8* %21, i8* %22)
  br label %28

24:                                               ; preds = %3
  %25 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @ui_out_field_skip(%struct.ui_out* %25, i8* %26)
  br label %28

28:                                               ; preds = %24, %19
  %29 = load %struct.ui_stream*, %struct.ui_stream** %6, align 8
  %30 = getelementptr inbounds %struct.ui_stream, %struct.ui_stream* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ui_file_rewind(i32 %31)
  %33 = load %struct.cleanup*, %struct.cleanup** %9, align 8
  %34 = call i32 @do_cleanups(%struct.cleanup* %33)
  ret void
}

declare dso_local i8* @ui_file_xstrdup(i32, i64*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i32 @ui_out_field_string(%struct.ui_out*, i8*, i8*) #1

declare dso_local i32 @ui_out_field_skip(%struct.ui_out*, i8*) #1

declare dso_local i32 @ui_file_rewind(i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
