; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_do_monitor_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_do_monitor_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { void (i8*, %struct.ui_file*)* }
%struct.ui_file = type opaque
%struct.TYPE_3__ = type { void (i8*, %struct.ui_file.2*)* }
%struct.ui_file.2 = type opaque
%struct.ui_file.0 = type opaque
%struct.ui_file.3 = type opaque
%struct.ui_file.1 = type opaque

@current_target = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@tcomplain = common dso_local global i64 0, align 8
@debug_target = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [49 x i8] c"\22monitor\22 command not supported by this target.\0A\00", align 1
@gdb_stdtarg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @do_monitor_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_monitor_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load void (i8*, %struct.ui_file*)*, void (i8*, %struct.ui_file*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_target, i32 0, i32 0), align 8
  %6 = load i64, i64* @tcomplain, align 8
  %7 = inttoptr i64 %6 to void (i8*, %struct.ui_file.0*)*
  %8 = bitcast void (i8*, %struct.ui_file.0*)* %7 to void (i8*, %struct.ui_file*)*
  %9 = icmp eq void (i8*, %struct.ui_file*)* %5, %8
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = load void (i8*, %struct.ui_file*)*, void (i8*, %struct.ui_file*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_target, i32 0, i32 0), align 8
  %12 = icmp eq void (i8*, %struct.ui_file*)* %11, bitcast (void (i8*, %struct.ui_file.1*)* @debug_to_rcmd to void (i8*, %struct.ui_file*)*)
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load void (i8*, %struct.ui_file.2*)*, void (i8*, %struct.ui_file.2*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @debug_target, i32 0, i32 0), align 8
  %15 = load i64, i64* @tcomplain, align 8
  %16 = inttoptr i64 %15 to void (i8*, %struct.ui_file.3*)*
  %17 = bitcast void (i8*, %struct.ui_file.3*)* %16 to void (i8*, %struct.ui_file.2*)*
  %18 = icmp eq void (i8*, %struct.ui_file.2*)* %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13, %2
  %20 = call i32 @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %13, %10
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* @gdb_stdtarg, align 4
  %24 = call i32 @target_rcmd(i8* %22, i32 %23)
  ret void
}

declare dso_local void @debug_to_rcmd(i8*, %struct.ui_file.1*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @target_rcmd(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
