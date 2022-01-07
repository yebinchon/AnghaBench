; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_top.c_init_history.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_top.c_init_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"HISTSIZE\00", align 1
@history_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"GDBHISTFILE\00", align 1
@history_filename = common dso_local global i64 0, align 8
@current_directory = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"/.gdb_history\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_history() #0 {
  %1 = alloca i8*, align 8
  %2 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %2, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i8*, i8** %1, align 8
  %7 = call i32 @atoi(i8* %6)
  store i32 %7, i32* @history_size, align 4
  br label %13

8:                                                ; preds = %0
  %9 = load i32, i32* @history_size, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  store i32 256, i32* @history_size, align 4
  br label %12

12:                                               ; preds = %11, %8
  br label %13

13:                                               ; preds = %12, %5
  %14 = load i32, i32* @history_size, align 4
  %15 = call i32 @stifle_history(i32 %14)
  %16 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i8* %16, i8** %1, align 8
  %17 = load i8*, i8** %1, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load i8*, i8** %1, align 8
  %21 = load i8*, i8** %1, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = call i64 @savestring(i8* %20, i32 %22)
  store i64 %23, i64* @history_filename, align 8
  br label %31

24:                                               ; preds = %13
  %25 = load i64, i64* @history_filename, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @current_directory, align 4
  %29 = call i64 @concat(i32 %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i64 %29, i64* @history_filename, align 8
  br label %30

30:                                               ; preds = %27, %24
  br label %31

31:                                               ; preds = %30, %19
  %32 = load i64, i64* @history_filename, align 8
  %33 = call i32 @read_history(i64 %32)
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @stifle_history(i32) #1

declare dso_local i64 @savestring(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @concat(i32, i8*, i32*) #1

declare dso_local i32 @read_history(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
