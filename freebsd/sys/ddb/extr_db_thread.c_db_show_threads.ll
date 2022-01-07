; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_thread.c_db_show_threads.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_thread.c_db_show_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64, i64 }

@db_pager_quit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"  %6ld (%p) (stack %p)  \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"***\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db_show_threads(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.thread*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = call %struct.thread* (...) @kdb_thr_first()
  store %struct.thread* %12, %struct.thread** %11, align 8
  br label %13

13:                                               ; preds = %43, %4
  %14 = load i32, i32* @db_pager_quit, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load %struct.thread*, %struct.thread** %11, align 8
  %18 = icmp ne %struct.thread* %17, null
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i1 [ false, %13 ], [ %18, %16 ]
  br i1 %20, label %21, label %48

21:                                               ; preds = %19
  %22 = load %struct.thread*, %struct.thread** %11, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.thread*, %struct.thread** %11, align 8
  %26 = load %struct.thread*, %struct.thread** %11, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %24, %struct.thread* %25, i8* %29)
  %31 = load i8*, i8** %9, align 8
  %32 = call i8* @kdb_jmpbuf(i8* %31)
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = call i64 @setjmp(i8* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %21
  %37 = load %struct.thread*, %struct.thread** %11, align 8
  %38 = call i64 @db_trace_thread(%struct.thread* %37, i32 1)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %36
  br label %43

43:                                               ; preds = %42, %21
  %44 = load i8*, i8** %10, align 8
  %45 = call i8* @kdb_jmpbuf(i8* %44)
  %46 = load %struct.thread*, %struct.thread** %11, align 8
  %47 = call %struct.thread* @kdb_thr_next(%struct.thread* %46)
  store %struct.thread* %47, %struct.thread** %11, align 8
  br label %13

48:                                               ; preds = %19
  ret void
}

declare dso_local %struct.thread* @kdb_thr_first(...) #1

declare dso_local i32 @db_printf(i8*, ...) #1

declare dso_local i8* @kdb_jmpbuf(i8*) #1

declare dso_local i64 @setjmp(i8*) #1

declare dso_local i64 @db_trace_thread(%struct.thread*, i32) #1

declare dso_local %struct.thread* @kdb_thr_next(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
