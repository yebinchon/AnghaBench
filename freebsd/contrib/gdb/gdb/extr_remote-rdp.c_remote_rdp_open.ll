; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdp.c_remote_rdp_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdp.c_remote_rdp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*)* }

@.str = private unnamed_addr constant [24 x i8] c"serial port device name\00", align 1
@baud_rate = common dso_local global i32 0, align 4
@io = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Remote RDP debugging using %s at %d baud\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"bw-SB\00", align 1
@RDP_INFO = common dso_local global i32 0, align 4
@RDP_INFO_ICEBREAKER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"ARM7TDI\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"bbbbw-p-SWZ\00", align 1
@RDP_SELECT_CONFIG = common dso_local global i32 0, align 4
@RDI_ConfigCPU = common dso_local global i32 0, align 4
@RDI_MatchAny = common dso_local global i32 0, align 4
@remote_rdp_ops = common dso_local global i32 0, align 4
@callback = common dso_local global %struct.TYPE_3__* null, align 8
@stop_pc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @remote_rdp_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remote_rdp_open(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 @error_no_arg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  store i32 9600, i32* @baud_rate, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @target_preopen(i32 %14)
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @serial_open(i8* %16)
  store i32 %17, i32* @io, align 4
  %18 = load i32, i32* @io, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @perror_with_name(i8* %21)
  br label %23

23:                                               ; preds = %20, %13
  %24 = load i32, i32* @io, align 4
  %25 = call i32 @serial_raw(i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @rdp_init(i32 1, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i8*, i8** %3, align 8
  %32 = load i32, i32* @baud_rate, align 4
  %33 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %23
  %35 = call i32 (...) @rdp_info()
  %36 = call i32 (...) @rdp_catch_vectors()
  %37 = load i32, i32* @RDP_INFO, align 4
  %38 = load i32, i32* @RDP_INFO_ICEBREAKER, align 4
  %39 = call i32 (i8*, i32, i32, ...) @send_rdp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 %38, i32* %5)
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %34
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @strlen(i8* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* @RDP_SELECT_CONFIG, align 4
  %46 = load i32, i32* @RDI_ConfigCPU, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @RDI_MatchAny, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 (i8*, i32, i32, ...) @send_rdp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %45, i32 %46, i32 %47, i32 %48, i32 0, i8* %49, i32 %50, i32* %7)
  br label %52

52:                                               ; preds = %42, %34
  %53 = call i32 @push_target(i32* @remote_rdp_ops)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @callback, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %55, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @callback, align 8
  %58 = call i32 %56(%struct.TYPE_3__* %57)
  %59 = call i32 (...) @flush_cached_frames()
  %60 = call i32 (...) @registers_changed()
  %61 = call i32 (...) @read_pc()
  store i32 %61, i32* @stop_pc, align 4
  %62 = call i32 (...) @get_selected_frame()
  %63 = call i32 @print_stack_frame(i32 %62, i32 -1, i32 1)
  ret void
}

declare dso_local i32 @error_no_arg(i8*) #1

declare dso_local i32 @target_preopen(i32) #1

declare dso_local i32 @serial_open(i8*) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i32 @serial_raw(i32) #1

declare dso_local i32 @rdp_init(i32, i32) #1

declare dso_local i32 @printf_unfiltered(i8*, i8*, i32) #1

declare dso_local i32 @rdp_info(...) #1

declare dso_local i32 @rdp_catch_vectors(...) #1

declare dso_local i32 @send_rdp(i8*, i32, i32, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @push_target(i32*) #1

declare dso_local i32 @flush_cached_frames(...) #1

declare dso_local i32 @registers_changed(...) #1

declare dso_local i32 @read_pc(...) #1

declare dso_local i32 @print_stack_frame(i32, i32, i32) #1

declare dso_local i32 @get_selected_frame(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
