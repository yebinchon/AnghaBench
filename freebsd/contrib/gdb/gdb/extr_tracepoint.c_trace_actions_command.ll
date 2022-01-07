; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_tracepoint.c_trace_actions_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_tracepoint.c_trace_actions_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracepoint = type { i32, i64 }

@.str = private unnamed_addr constant [35 x i8] c"End with a line saying just \22end\22.\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Enter actions for tracepoint %d, one per line.\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s  %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s\0A%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @trace_actions_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trace_actions_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tracepoint*, align 8
  %6 = alloca [128 x i8], align 16
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %8 = call %struct.tracepoint* @get_tracepoint_by_number(i8** %3, i32 0, i32 1)
  store %struct.tracepoint* %8, %struct.tracepoint** %5, align 8
  %9 = load %struct.tracepoint*, %struct.tracepoint** %5, align 8
  %10 = icmp ne %struct.tracepoint* %9, null
  br i1 %10, label %11, label %43

11:                                               ; preds = %2
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %13 = load %struct.tracepoint*, %struct.tracepoint** %5, align 8
  %14 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %11
  br i1 true, label %20, label %24

20:                                               ; preds = %19
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @readline_begin_hook(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %21, i8* %22)
  br label %32

24:                                               ; preds = %19
  %25 = call i64 (...) @input_from_terminal_p()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @printf_filtered(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %28, i8* %29)
  br label %31

31:                                               ; preds = %27, %24
  br label %32

32:                                               ; preds = %31, %20
  br label %33

33:                                               ; preds = %32, %11
  %34 = load %struct.tracepoint*, %struct.tracepoint** %5, align 8
  %35 = call i32 @free_actions(%struct.tracepoint* %34)
  %36 = load %struct.tracepoint*, %struct.tracepoint** %5, align 8
  %37 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.tracepoint*, %struct.tracepoint** %5, align 8
  %39 = call i32 @read_actions(%struct.tracepoint* %38)
  br i1 true, label %40, label %42

40:                                               ; preds = %33
  %41 = call i32 (...) @readline_end_hook()
  br label %42

42:                                               ; preds = %40, %33
  br label %43

43:                                               ; preds = %42, %2
  ret void
}

declare dso_local %struct.tracepoint* @get_tracepoint_by_number(i8**, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @readline_begin_hook(i8*, i8*, i8*) #1

declare dso_local i64 @input_from_terminal_p(...) #1

declare dso_local i32 @printf_filtered(i8*, i8*, i8*) #1

declare dso_local i32 @free_actions(%struct.tracepoint*) #1

declare dso_local i32 @read_actions(%struct.tracepoint*) #1

declare dso_local i32 @readline_end_hook(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
