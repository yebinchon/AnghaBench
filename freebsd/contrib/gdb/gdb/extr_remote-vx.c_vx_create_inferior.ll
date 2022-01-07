; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vx.c_vx_create_inferior.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vx.c_vx_create_inferior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32* }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [62 x i8] c"You must specify a function name to run, and arguments if any\00", align 1
@PROCESS_START = common dso_local global i32 0, align 4
@xdr_arg_array = common dso_local global i32 0, align 4
@xdr_TASK_START = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Can't create process on remote target machine\00", align 1
@vx_running = common dso_local global i32 0, align 4
@vx_run_ops = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@STOP_QUIETLY = common dso_local global i32 0, align 4
@stop_soon = common dso_local global i32 0, align 4
@NO_STOP_QUIETLY = common dso_local global i32 0, align 4
@TARGET_SIGNAL_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8**)* @vx_create_inferior to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vx_create_inferior(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca %struct.TYPE_7__, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  %10 = bitcast %struct.TYPE_6__* %8 to i8*
  %11 = call i32 @memset(i8* %10, i8 signext 0, i32 16)
  %12 = bitcast %struct.TYPE_7__* %9 to i8*
  %13 = call i32 @memset(i8* %12, i8 signext 0, i32 8)
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @parse_args(i8* %14, %struct.TYPE_6__* %8)
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 @error(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %3
  %22 = load i32, i32* @PROCESS_START, align 4
  %23 = load i32, i32* @xdr_arg_array, align 4
  %24 = load i32, i32* @xdr_TASK_START, align 4
  %25 = call i32 @net_clnt_call(i32 %22, i32 %23, %struct.TYPE_6__* %8, i32 %24, %struct.TYPE_7__* %9)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @RPC_SUCCESS, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %35

33:                                               ; preds = %29, %21
  %34 = call i32 @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %29
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @strlen(i32 %43)
  %45 = call i32 @savestring(i32 %39, i32 %44)
  store i32 %45, i32* @vx_running, align 4
  %46 = call i32 @push_target(i32* @vx_run_ops)
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pid_to_ptid(i32 %48)
  store i32 %49, i32* @inferior_ptid, align 4
  %50 = call i32 (...) @init_wait_for_inferior()
  %51 = call i32 (...) @target_terminal_init()
  %52 = call i32 (...) @target_terminal_inferior()
  %53 = load i32, i32* @STOP_QUIETLY, align 4
  store i32 %53, i32* @stop_soon, align 4
  %54 = call i32 (...) @wait_for_inferior()
  %55 = load i32, i32* @NO_STOP_QUIETLY, align 4
  store i32 %55, i32* @stop_soon, align 4
  %56 = load i32, i32* @TARGET_SIGNAL_DEFAULT, align 4
  %57 = call i32 @proceed(i32 -1, i32 %56, i32 0)
  ret void
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @parse_args(i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @net_clnt_call(i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @savestring(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @push_target(i32*) #1

declare dso_local i32 @pid_to_ptid(i32) #1

declare dso_local i32 @init_wait_for_inferior(...) #1

declare dso_local i32 @target_terminal_init(...) #1

declare dso_local i32 @target_terminal_inferior(...) #1

declare dso_local i32 @wait_for_inferior(...) #1

declare dso_local i32 @proceed(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
