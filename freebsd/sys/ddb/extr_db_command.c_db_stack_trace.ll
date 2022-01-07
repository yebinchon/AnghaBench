; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_command.c_db_stack_trace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_command.c_db_stack_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@db_radix = common dso_local global i32 0, align 4
@tCOMMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Count missing\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Thread %d not found\0A\00", align 1
@kdb_thread = common dso_local global %struct.thread* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Tracing pid %d tid %ld td %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i8*)* @db_stack_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db_stack_trace(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load i32, i32* @db_radix, align 4
  store i32 %13, i32* %10, align 4
  store i32 10, i32* @db_radix, align 4
  %14 = call i32 @db_expression(i32* %5)
  store i32 %14, i32* %6, align 4
  %15 = call i32 (...) @db_read_token()
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* @tCOMMA, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %4
  %20 = call i32 @db_expression(i32* %7)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 (...) @db_flush_lex()
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* @db_radix, align 4
  br label %74

26:                                               ; preds = %19
  br label %30

27:                                               ; preds = %4
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @db_unread_token(i32 %28)
  store i32 -1, i32* %7, align 4
  br label %30

30:                                               ; preds = %27, %26
  %31 = call i32 (...) @db_skip_to_eol()
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* @db_radix, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = call %struct.thread* @kdb_thr_lookup(i32 %36)
  store %struct.thread* %37, %struct.thread** %9, align 8
  %38 = load %struct.thread*, %struct.thread** %9, align 8
  %39 = icmp eq %struct.thread* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = call %struct.thread* @kdb_thr_from_pid(i32 %41)
  store %struct.thread* %42, %struct.thread** %9, align 8
  br label %43

43:                                               ; preds = %40, %35
  %44 = load %struct.thread*, %struct.thread** %9, align 8
  %45 = icmp eq %struct.thread* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %74

49:                                               ; preds = %43
  br label %52

50:                                               ; preds = %30
  %51 = load %struct.thread*, %struct.thread** @kdb_thread, align 8
  store %struct.thread* %51, %struct.thread** %9, align 8
  br label %52

52:                                               ; preds = %50, %49
  %53 = load %struct.thread*, %struct.thread** %9, align 8
  %54 = getelementptr inbounds %struct.thread, %struct.thread* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = icmp ne %struct.TYPE_2__* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.thread*, %struct.thread** %9, align 8
  %59 = getelementptr inbounds %struct.thread, %struct.thread* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %11, align 4
  br label %64

63:                                               ; preds = %52
  store i32 -1, i32* %11, align 4
  br label %64

64:                                               ; preds = %63, %57
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.thread*, %struct.thread** %9, align 8
  %67 = getelementptr inbounds %struct.thread, %struct.thread* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.thread*, %struct.thread** %9, align 8
  %70 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %65, i64 %68, %struct.thread* %69)
  %71 = load %struct.thread*, %struct.thread** %9, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @db_trace_thread(%struct.thread* %71, i32 %72)
  br label %74

74:                                               ; preds = %64, %46, %22
  ret void
}

declare dso_local i32 @db_expression(i32*) #1

declare dso_local i32 @db_read_token(...) #1

declare dso_local i32 @db_printf(i8*, ...) #1

declare dso_local i32 @db_flush_lex(...) #1

declare dso_local i32 @db_unread_token(i32) #1

declare dso_local i32 @db_skip_to_eol(...) #1

declare dso_local %struct.thread* @kdb_thr_lookup(i32) #1

declare dso_local %struct.thread* @kdb_thr_from_pid(i32) #1

declare dso_local i32 @db_trace_thread(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
