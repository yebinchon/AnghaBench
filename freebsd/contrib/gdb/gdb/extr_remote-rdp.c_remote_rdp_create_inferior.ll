; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdp.c_remote_rdp_create_inferior.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdp.c_remote_rdp_create_inferior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exec_bfd = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"No executable file specified.\00", align 1
@inferior_ptid = common dso_local global i32 0, align 4
@TARGET_SIGNAL_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8**)* @remote_rdp_create_inferior to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remote_rdp_create_inferior(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i64, i64* @exec_bfd, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %3
  %14 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %10
  %16 = load i64, i64* @exec_bfd, align 8
  %17 = call i64 @bfd_get_start_address(i64 %16)
  store i64 %17, i64* %7, align 8
  %18 = call i32 (...) @remote_rdp_kill()
  %19 = call i32 (...) @remove_breakpoints()
  %20 = call i32 (...) @init_wait_for_inferior()
  %21 = load i8*, i8** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @rdp_set_command_line(i8* %21, i8* %22)
  %24 = call i32 @pid_to_ptid(i32 42)
  store i32 %24, i32* @inferior_ptid, align 4
  %25 = call i32 (...) @insert_breakpoints()
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* @TARGET_SIGNAL_DEFAULT, align 4
  %28 = call i32 @proceed(i64 %26, i32 %27, i32 0)
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @bfd_get_start_address(i64) #1

declare dso_local i32 @remote_rdp_kill(...) #1

declare dso_local i32 @remove_breakpoints(...) #1

declare dso_local i32 @init_wait_for_inferior(...) #1

declare dso_local i32 @rdp_set_command_line(i8*, i8*) #1

declare dso_local i32 @pid_to_ptid(i32) #1

declare dso_local i32 @insert_breakpoints(...) #1

declare dso_local i32 @proceed(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
