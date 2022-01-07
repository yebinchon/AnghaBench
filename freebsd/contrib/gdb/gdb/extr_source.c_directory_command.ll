; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_source.c_directory_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_source.c_directory_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"Reinitialize source path to empty? \00", align 1
@source_path = common dso_local global i32 0, align 4
@last_source_visited = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @directory_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @dont_repeat()
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = call i64 @query(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* @source_path, align 4
  %16 = call i32 @xfree(i32 %15)
  %17 = call i32 (...) @init_source_path()
  br label %18

18:                                               ; preds = %14, %11, %8
  br label %22

19:                                               ; preds = %2
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @mod_path(i8* %20, i32* @source_path)
  store i32* null, i32** @last_source_visited, align 8
  br label %22

22:                                               ; preds = %19, %18
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @show_directories(i8* null, i32 %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = call i32 (...) @forget_cached_source_info()
  ret void
}

declare dso_local i32 @dont_repeat(...) #1

declare dso_local i64 @query(i8*) #1

declare dso_local i32 @xfree(i32) #1

declare dso_local i32 @init_source_path(...) #1

declare dso_local i32 @mod_path(i8*, i32*) #1

declare dso_local i32 @show_directories(i8*, i32) #1

declare dso_local i32 @forget_cached_source_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
