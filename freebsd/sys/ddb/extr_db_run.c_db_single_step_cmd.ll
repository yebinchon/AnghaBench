; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_run.c_db_single_step_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_run.c_db_single_step_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STEP_ONCE = common dso_local global i32 0, align 4
@db_run_mode = common dso_local global i32 0, align 4
@db_loop_count = common dso_local global i32 0, align 4
@db_sstep_multiple = common dso_local global i32 0, align 4
@db_sstep_print = common dso_local global i32 0, align 4
@db_inst_count = common dso_local global i64 0, align 8
@db_load_count = common dso_local global i64 0, align 8
@db_store_count = common dso_local global i64 0, align 8
@db_cmd_loop_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db_single_step_cmd(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store i32 1, i32* %7, align 4
  br label %13

13:                                               ; preds = %12, %4
  %14 = load i8*, i8** %8, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 112
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 1, i32* %9, align 4
  br label %20

20:                                               ; preds = %19, %13
  %21 = load i32, i32* @STEP_ONCE, align 4
  store i32 %21, i32* @db_run_mode, align 4
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* @db_loop_count, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 1
  %25 = zext i1 %24 to i32
  store i32 %25, i32* @db_sstep_multiple, align 4
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* @db_sstep_print, align 4
  store i64 0, i64* @db_inst_count, align 8
  store i64 0, i64* @db_load_count, align 8
  store i64 0, i64* @db_store_count, align 8
  store i32 1, i32* @db_cmd_loop_done, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
