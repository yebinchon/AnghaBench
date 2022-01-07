; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_main.c_db_trap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_main.c_db_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@db_inst_count = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"After %d instructions (%d loads, %d stores),\0A\00", align 1
@db_load_count = common dso_local global i32 0, align 4
@db_store_count = common dso_local global i32 0, align 4
@db_dot = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Breakpoint at\09\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Watchpoint at\09\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Stopped at\09\00", align 1
@kdb_why = common dso_local global i8* null, align 8
@KDB_WHY_UNSET = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @db_trap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_trap(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = call i64 (...) @cnunavailable()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %68

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @db_stop_at_pc(i32 %15, i32 %16, i32* %8, i32* %9)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %65

19:                                               ; preds = %14
  %20 = load i64, i64* @db_inst_count, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i64, i64* @db_inst_count, align 8
  %24 = load i32, i32* @db_load_count, align 4
  %25 = load i32, i32* @db_store_count, align 4
  %26 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %19
  %28 = load i8*, i8** %6, align 8
  %29 = call i8* @kdb_jmpbuf(i8* %28)
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @setjmp(i8* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %27
  %34 = call i32 (...) @PC_REGS()
  store i32 %34, i32* @db_dot, align 4
  %35 = call i32 (...) @db_print_thread()
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %48

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %47

45:                                               ; preds = %40
  %46 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %43
  br label %48

48:                                               ; preds = %47, %38
  %49 = load i32, i32* @db_dot, align 4
  %50 = call i32 @db_print_loc_and_inst(i32 %49)
  br label %51

51:                                               ; preds = %48, %27
  %52 = load i8*, i8** @kdb_why, align 8
  store i8* %52, i8** %10, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load i8*, i8** @KDB_WHY_UNSET, align 8
  %55 = icmp ne i8* %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i8*, i8** %10, align 8
  br label %59

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i8* [ %57, %56 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %58 ]
  %61 = call i32 @db_script_kdbenter(i8* %60)
  %62 = call i32 (...) @db_command_loop()
  %63 = load i8*, i8** %7, align 8
  %64 = call i8* @kdb_jmpbuf(i8* %63)
  br label %65

65:                                               ; preds = %59, %14
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @db_restart_at_pc(i32 %66)
  store i32 1, i32* %3, align 4
  br label %68

68:                                               ; preds = %65, %13
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @cnunavailable(...) #1

declare dso_local i64 @db_stop_at_pc(i32, i32, i32*, i32*) #1

declare dso_local i32 @db_printf(i8*, ...) #1

declare dso_local i8* @kdb_jmpbuf(i8*) #1

declare dso_local i64 @setjmp(i8*) #1

declare dso_local i32 @PC_REGS(...) #1

declare dso_local i32 @db_print_thread(...) #1

declare dso_local i32 @db_print_loc_and_inst(i32) #1

declare dso_local i32 @db_script_kdbenter(i8*) #1

declare dso_local i32 @db_command_loop(...) #1

declare dso_local i32 @db_restart_at_pc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
