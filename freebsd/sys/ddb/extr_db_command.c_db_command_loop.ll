; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_command.c_db_command_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_command.c_db_command_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@db_dot = common dso_local global i8* null, align 8
@db_prev = common dso_local global i8* null, align 8
@db_next = common dso_local global i8* null, align 8
@db_cmd_loop_done = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"db> \00", align 1
@db_last_command = common dso_local global i32 0, align 4
@db_cmd_table = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db_command_loop() #0 {
  %1 = load i8*, i8** @db_dot, align 8
  store i8* %1, i8** @db_prev, align 8
  %2 = load i8*, i8** @db_dot, align 8
  store i8* %2, i8** @db_next, align 8
  store i64 0, i64* @db_cmd_loop_done, align 8
  br label %3

3:                                                ; preds = %12, %0
  %4 = load i64, i64* @db_cmd_loop_done, align 8
  %5 = icmp ne i64 %4, 0
  %6 = xor i1 %5, true
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = call i64 (...) @db_print_position()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %7
  %13 = call i32 @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 (...) @db_read_line()
  %15 = call i32 @db_command(i32* @db_last_command, i32* @db_cmd_table, i32 1)
  br label %3

16:                                               ; preds = %3
  ret void
}

declare dso_local i64 @db_print_position(...) #1

declare dso_local i32 @db_printf(i8*) #1

declare dso_local i32 @db_read_line(...) #1

declare dso_local i32 @db_command(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
