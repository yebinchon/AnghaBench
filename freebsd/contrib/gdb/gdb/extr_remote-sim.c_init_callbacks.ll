; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-sim.c_init_callbacks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-sim.c_init_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 (%struct.TYPE_4__*)* }

@callbacks_initialized = common dso_local global i32 0, align 4
@gdb_callback = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@default_callback = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@gdb_os_write_stdout = common dso_local global i32 0, align 4
@gdb_os_flush_stdout = common dso_local global i32 0, align 4
@gdb_os_write_stderr = common dso_local global i32 0, align 4
@gdb_os_flush_stderr = common dso_local global i32 0, align 4
@gdb_os_printf_filtered = common dso_local global i32 0, align 4
@gdb_os_vprintf_filtered = common dso_local global i32 0, align 4
@gdb_os_evprintf_filtered = common dso_local global i32 0, align 4
@gdb_os_error = common dso_local global i32 0, align 4
@gdb_os_poll_quit = common dso_local global i32 0, align 4
@HOST_CALLBACK_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_callbacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_callbacks() #0 {
  %1 = load i32, i32* @callbacks_initialized, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %16, label %3

3:                                                ; preds = %0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_4__* @gdb_callback to i8*), i8* align 8 bitcast (%struct.TYPE_4__* @default_callback to i8*), i64 48, i1 false)
  %4 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gdb_callback, i32 0, i32 10), align 8
  %5 = call i32 %4(%struct.TYPE_4__* @gdb_callback)
  %6 = load i32, i32* @gdb_os_write_stdout, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gdb_callback, i32 0, i32 9), align 4
  %7 = load i32, i32* @gdb_os_flush_stdout, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gdb_callback, i32 0, i32 8), align 8
  %8 = load i32, i32* @gdb_os_write_stderr, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gdb_callback, i32 0, i32 7), align 4
  %9 = load i32, i32* @gdb_os_flush_stderr, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gdb_callback, i32 0, i32 6), align 8
  %10 = load i32, i32* @gdb_os_printf_filtered, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gdb_callback, i32 0, i32 5), align 4
  %11 = load i32, i32* @gdb_os_vprintf_filtered, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gdb_callback, i32 0, i32 4), align 8
  %12 = load i32, i32* @gdb_os_evprintf_filtered, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gdb_callback, i32 0, i32 3), align 4
  %13 = load i32, i32* @gdb_os_error, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gdb_callback, i32 0, i32 2), align 8
  %14 = load i32, i32* @gdb_os_poll_quit, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gdb_callback, i32 0, i32 1), align 4
  %15 = load i32, i32* @HOST_CALLBACK_MAGIC, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gdb_callback, i32 0, i32 0), align 8
  store i32 1, i32* @callbacks_initialized, align 4
  br label %16

16:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
