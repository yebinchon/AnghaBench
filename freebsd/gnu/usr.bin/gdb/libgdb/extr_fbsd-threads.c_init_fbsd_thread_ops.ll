; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c_init_fbsd_thread_ops.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c_init_fbsd_thread_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"freebsd-threads\00", align 1
@fbsd_thread_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"FreeBSD multithreaded child process.\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"FreeBSD threads support.\00", align 1
@fbsd_thread_attach = common dso_local global i32 0, align 4
@fbsd_thread_detach = common dso_local global i32 0, align 4
@fbsd_thread_post_attach = common dso_local global i32 0, align 4
@fbsd_thread_resume = common dso_local global i32 0, align 4
@fbsd_thread_wait = common dso_local global i32 0, align 4
@fbsd_thread_fetch_registers = common dso_local global i32 0, align 4
@fbsd_thread_store_registers = common dso_local global i32 0, align 4
@fbsd_thread_xfer_memory = common dso_local global i32 0, align 4
@fbsd_thread_files_info = common dso_local global i32 0, align 4
@fbsd_thread_kill = common dso_local global i32 0, align 4
@fbsd_thread_create_inferior = common dso_local global i32 0, align 4
@fbsd_thread_post_startup_inferior = common dso_local global i32 0, align 4
@fbsd_thread_mourn_inferior = common dso_local global i32 0, align 4
@fbsd_thread_can_run = common dso_local global i32 0, align 4
@fbsd_thread_alive = common dso_local global i32 0, align 4
@fbsd_thread_find_new_threads = common dso_local global i32 0, align 4
@fbsd_thread_pid_to_str = common dso_local global i32 0, align 4
@thread_stratum = common dso_local global i32 0, align 4
@tc_none = common dso_local global i32 0, align 4
@memory_insert_breakpoint = common dso_local global i32 0, align 4
@memory_remove_breakpoint = common dso_local global i32 0, align 4
@fbsd_thread_get_local_address = common dso_local global i32 0, align 4
@OPS_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_fbsd_thread_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_fbsd_thread_ops() #0 {
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fbsd_thread_ops, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fbsd_thread_ops, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fbsd_thread_ops, i32 0, i32 2), align 8
  %1 = load i32, i32* @fbsd_thread_attach, align 4
  store i32 %1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fbsd_thread_ops, i32 0, i32 30), align 4
  %2 = load i32, i32* @fbsd_thread_detach, align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fbsd_thread_ops, i32 0, i32 29), align 8
  %3 = load i32, i32* @fbsd_thread_post_attach, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fbsd_thread_ops, i32 0, i32 28), align 4
  %4 = load i32, i32* @fbsd_thread_resume, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fbsd_thread_ops, i32 0, i32 27), align 8
  %5 = load i32, i32* @fbsd_thread_wait, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fbsd_thread_ops, i32 0, i32 26), align 4
  %6 = load i32, i32* @fbsd_thread_fetch_registers, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fbsd_thread_ops, i32 0, i32 25), align 8
  %7 = load i32, i32* @fbsd_thread_store_registers, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fbsd_thread_ops, i32 0, i32 24), align 4
  %8 = load i32, i32* @fbsd_thread_xfer_memory, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fbsd_thread_ops, i32 0, i32 23), align 8
  %9 = load i32, i32* @fbsd_thread_files_info, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fbsd_thread_ops, i32 0, i32 22), align 4
  %10 = load i32, i32* @fbsd_thread_kill, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fbsd_thread_ops, i32 0, i32 21), align 8
  %11 = load i32, i32* @fbsd_thread_create_inferior, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fbsd_thread_ops, i32 0, i32 20), align 4
  %12 = load i32, i32* @fbsd_thread_post_startup_inferior, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fbsd_thread_ops, i32 0, i32 19), align 8
  %13 = load i32, i32* @fbsd_thread_mourn_inferior, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fbsd_thread_ops, i32 0, i32 18), align 4
  %14 = load i32, i32* @fbsd_thread_can_run, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fbsd_thread_ops, i32 0, i32 17), align 8
  %15 = load i32, i32* @fbsd_thread_alive, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fbsd_thread_ops, i32 0, i32 16), align 4
  %16 = load i32, i32* @fbsd_thread_find_new_threads, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fbsd_thread_ops, i32 0, i32 15), align 8
  %17 = load i32, i32* @fbsd_thread_pid_to_str, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fbsd_thread_ops, i32 0, i32 14), align 4
  %18 = load i32, i32* @thread_stratum, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fbsd_thread_ops, i32 0, i32 13), align 8
  %19 = load i32, i32* @tc_none, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fbsd_thread_ops, i32 0, i32 12), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fbsd_thread_ops, i32 0, i32 3), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fbsd_thread_ops, i32 0, i32 4), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fbsd_thread_ops, i32 0, i32 5), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fbsd_thread_ops, i32 0, i32 6), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fbsd_thread_ops, i32 0, i32 7), align 8
  %20 = load i32, i32* @memory_insert_breakpoint, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fbsd_thread_ops, i32 0, i32 11), align 8
  %21 = load i32, i32* @memory_remove_breakpoint, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fbsd_thread_ops, i32 0, i32 10), align 4
  %22 = load i32, i32* @fbsd_thread_get_local_address, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fbsd_thread_ops, i32 0, i32 9), align 8
  %23 = load i32, i32* @OPS_MAGIC, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fbsd_thread_ops, i32 0, i32 8), align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
