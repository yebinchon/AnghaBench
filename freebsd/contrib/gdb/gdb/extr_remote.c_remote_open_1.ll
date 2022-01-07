; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_remote_open_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_remote_open_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_ops = type { i32 }
%struct.remote_state = type { i32 }

@.str = private unnamed_addr constant [149 x i8] c"To open a remote debug connection, you need to specify what\0Aserial device is attached to the remote system\0A(e.g. /dev/ttyS0, /dev/ttya, COM1, etc.).\00", align 1
@wait_forever_enabled_p = common dso_local global i32 0, align 4
@remote_desc = common dso_local global i32* null, align 8
@baud_rate = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Remote debugging using \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@general_thread = common dso_local global i32 0, align 4
@continue_thread = common dso_local global i32 0, align 4
@use_threadinfo_query = common dso_local global i32 0, align 4
@use_threadextra_query = common dso_local global i32 0, align 4
@MAGIC_NULL_PID = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@remote_async_terminal_ours_p = common dso_local global i32 0, align 4
@uiout = common dso_local global i32 0, align 4
@remote_start_remote = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Couldn't establish connection to remote target\0A\00", align 1
@RETURN_MASK_ALL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@exec_bfd = common dso_local global i64 0, align 8
@symfile_objfile = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.target_ops*, i32, i32)* @remote_open_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remote_open_1(i8* %0, i32 %1, %struct.target_ops* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.target_ops*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.remote_state*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.target_ops* %2, %struct.target_ops** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = call %struct.remote_state* (...) @get_remote_state()
  store %struct.remote_state* %14, %struct.remote_state** %12, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = call i32 @error(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %5
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i32 1, i32* @wait_forever_enabled_p, align 4
  br label %23

23:                                               ; preds = %22, %19
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @target_preopen(i32 %24)
  %26 = load %struct.target_ops*, %struct.target_ops** %8, align 8
  %27 = call i32 @unpush_target(%struct.target_ops* %26)
  %28 = load i8*, i8** %6, align 8
  %29 = call i32* @remote_serial_open(i8* %28)
  store i32* %29, i32** @remote_desc, align 8
  %30 = load i32*, i32** @remote_desc, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @perror_with_name(i8* %33)
  br label %35

35:                                               ; preds = %32, %23
  %36 = load i32, i32* @baud_rate, align 4
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load i32*, i32** @remote_desc, align 8
  %40 = load i32, i32* @baud_rate, align 4
  %41 = call i64 @serial_setbaudrate(i32* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32*, i32** @remote_desc, align 8
  %45 = call i32 @serial_close(i32* %44)
  store i32* null, i32** @remote_desc, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @perror_with_name(i8* %46)
  br label %48

48:                                               ; preds = %43, %38
  br label %49

49:                                               ; preds = %48, %35
  %50 = load i32*, i32** @remote_desc, align 8
  %51 = call i32 @serial_raw(i32* %50)
  %52 = load i32*, i32** @remote_desc, align 8
  %53 = call i32 @serial_flush_input(i32* %52)
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = call i32 @puts_filtered(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @puts_filtered(i8* %58)
  %60 = call i32 @puts_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %56, %49
  %62 = load %struct.target_ops*, %struct.target_ops** %8, align 8
  %63 = call i32 @push_target(%struct.target_ops* %62)
  %64 = call i32 (...) @init_all_packet_configs()
  store i32 -2, i32* @general_thread, align 4
  store i32 -2, i32* @continue_thread, align 4
  store i32 1, i32* @use_threadinfo_query, align 4
  store i32 1, i32* @use_threadextra_query, align 4
  %65 = load i32, i32* @MAGIC_NULL_PID, align 4
  %66 = call i32 @pid_to_ptid(i32 %65)
  store i32 %66, i32* @inferior_ptid, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  store i32 1, i32* @remote_async_terminal_ours_p, align 4
  store i32 0, i32* @wait_forever_enabled_p, align 4
  br label %70

70:                                               ; preds = %69, %61
  %71 = load i32, i32* @uiout, align 4
  %72 = load i32, i32* @remote_start_remote, align 4
  %73 = load i32, i32* @RETURN_MASK_ALL, align 4
  %74 = call i32 @catch_exceptions(i32 %71, i32 %72, i32* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = call i32 (...) @pop_target()
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 1, i32* @wait_forever_enabled_p, align 4
  br label %82

82:                                               ; preds = %81, %77
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @throw_exception(i32 %83)
  br label %85

85:                                               ; preds = %82, %70
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 1, i32* @wait_forever_enabled_p, align 4
  br label %89

89:                                               ; preds = %88, %85
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %89
  %93 = load %struct.remote_state*, %struct.remote_state** %12, align 8
  %94 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @alloca(i32 %95)
  store i8* %96, i8** %13, align 8
  %97 = call i32 @putpkt(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %98 = load i8*, i8** %13, align 8
  %99 = load %struct.remote_state*, %struct.remote_state** %12, align 8
  %100 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @getpkt(i8* %98, i32 %101, i32 0)
  br label %103

103:                                              ; preds = %92, %89
  ret void
}

declare dso_local %struct.remote_state* @get_remote_state(...) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @target_preopen(i32) #1

declare dso_local i32 @unpush_target(%struct.target_ops*) #1

declare dso_local i32* @remote_serial_open(i8*) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i64 @serial_setbaudrate(i32*, i32) #1

declare dso_local i32 @serial_close(i32*) #1

declare dso_local i32 @serial_raw(i32*) #1

declare dso_local i32 @serial_flush_input(i32*) #1

declare dso_local i32 @puts_filtered(i8*) #1

declare dso_local i32 @push_target(%struct.target_ops*) #1

declare dso_local i32 @init_all_packet_configs(...) #1

declare dso_local i32 @pid_to_ptid(i32) #1

declare dso_local i32 @catch_exceptions(i32, i32, i32*, i8*, i32) #1

declare dso_local i32 @pop_target(...) #1

declare dso_local i32 @throw_exception(i32) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @putpkt(i8*) #1

declare dso_local i32 @getpkt(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
