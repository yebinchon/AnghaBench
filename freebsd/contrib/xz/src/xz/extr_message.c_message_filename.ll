; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_message.c_message_filename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_message.c_message_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@files_pos = common dso_local global i32 0, align 4
@filename = common dso_local global i8* null, align 8
@verbosity = common dso_local global i64 0, align 8
@V_VERBOSE = common dso_local global i64 0, align 8
@progress_automatic = common dso_local global i64 0, align 8
@opt_mode = common dso_local global i64 0, align 8
@MODE_LIST = common dso_local global i64 0, align 8
@current_filename_printed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @message_filename(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @files_pos, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @files_pos, align 4
  %5 = load i8*, i8** %2, align 8
  store i8* %5, i8** @filename, align 8
  %6 = load i64, i64* @verbosity, align 8
  %7 = load i64, i64* @V_VERBOSE, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load i64, i64* @progress_automatic, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = load i64, i64* @opt_mode, align 8
  %14 = load i64, i64* @MODE_LIST, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %9
  %17 = call i32 (...) @print_filename()
  br label %19

18:                                               ; preds = %12, %1
  store i32 0, i32* @current_filename_printed, align 4
  br label %19

19:                                               ; preds = %18, %16
  ret void
}

declare dso_local i32 @print_filename(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
