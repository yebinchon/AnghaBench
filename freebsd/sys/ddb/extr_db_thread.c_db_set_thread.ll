; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_thread.c_db_set_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_thread.c_db_set_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"unable to switch to thread %ld\0A\00", align 1
@db_dot = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%d: invalid thread\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db_set_thread(i64 %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %4
  %14 = load i64, i64* %5, align 8
  %15 = call %struct.thread* @db_lookup_thread(i64 %14, i32 0)
  store %struct.thread* %15, %struct.thread** %9, align 8
  %16 = load %struct.thread*, %struct.thread** %9, align 8
  %17 = icmp ne %struct.thread* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = load %struct.thread*, %struct.thread** %9, align 8
  %20 = call i32 @kdb_thr_select(%struct.thread* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.thread*, %struct.thread** %9, align 8
  %25 = getelementptr inbounds %struct.thread, %struct.thread* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @db_printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %40

29:                                               ; preds = %18
  %30 = call i32 (...) @PC_REGS()
  store i32 %30, i32* @db_dot, align 4
  br label %35

31:                                               ; preds = %13
  %32 = load i64, i64* %5, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @db_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %40

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %4
  %37 = call i32 (...) @db_print_thread()
  %38 = call i32 (...) @PC_REGS()
  %39 = call i32 @db_print_loc_and_inst(i32 %38)
  br label %40

40:                                               ; preds = %36, %31, %23
  ret void
}

declare dso_local %struct.thread* @db_lookup_thread(i64, i32) #1

declare dso_local i32 @kdb_thr_select(%struct.thread*) #1

declare dso_local i32 @db_printf(i8*, i32) #1

declare dso_local i32 @PC_REGS(...) #1

declare dso_local i32 @db_print_thread(...) #1

declare dso_local i32 @db_print_loc_and_inst(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
