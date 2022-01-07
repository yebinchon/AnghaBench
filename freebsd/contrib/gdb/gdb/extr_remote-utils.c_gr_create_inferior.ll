; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-utils.c_gr_create_inferior.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-utils.c_gr_create_inferior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"Can't pass arguments to remote process.\00", align 1
@exec_bfd = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"No executable file specified\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gr_create_inferior(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %10, %3
  %18 = load i8*, i8** %4, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* @exec_bfd, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %17
  %24 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i64, i64* @exec_bfd, align 8
  %27 = call i64 @bfd_get_start_address(i64 %26)
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = call i32 (...) @sr_check_open()
  %30 = call i32 (...) @gr_kill()
  %31 = call i32 (...) @gr_clear_all_breakpoints()
  %32 = call i32 (...) @init_wait_for_inferior()
  %33 = call i32 (...) @gr_checkin()
  %34 = call i32 (...) @insert_breakpoints()
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @proceed(i32 %35, i32 -1, i32 0)
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @bfd_get_start_address(i64) #1

declare dso_local i32 @sr_check_open(...) #1

declare dso_local i32 @gr_kill(...) #1

declare dso_local i32 @gr_clear_all_breakpoints(...) #1

declare dso_local i32 @init_wait_for_inferior(...) #1

declare dso_local i32 @gr_checkin(...) #1

declare dso_local i32 @insert_breakpoints(...) #1

declare dso_local i32 @proceed(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
