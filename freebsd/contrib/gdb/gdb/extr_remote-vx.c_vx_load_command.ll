; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vx.c_vx_load_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vx.c_vx_load_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"The load command takes a file name\00", align 1
@xfree = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@target_has_execution = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [83 x i8] c"You may not load a module while the target task is running.\0AKill the target task? \00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Load canceled.\00", align 1
@QUIT = common dso_local global i32 0, align 4
@immediate_quit = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Load failed on target machine\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @vx_load_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vx_load_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i8*, i8** %3, align 8
  %14 = call i8* @tilde_expand(i8* %13)
  store i8* %14, i8** %3, align 8
  %15 = load i32, i32* @xfree, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @make_cleanup(i32 %15, i8* %16)
  %18 = call i32 (...) @dont_repeat()
  %19 = load i32, i32* @inferior_ptid, align 4
  %20 = call i64 @PIDGET(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %12
  %23 = load i64, i64* @target_has_execution, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = call i64 @query(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (...) @target_kill()
  br label %32

30:                                               ; preds = %25
  %31 = call i32 @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %28
  br label %33

33:                                               ; preds = %32, %22, %12
  %34 = load i32, i32* @QUIT, align 4
  %35 = load i32, i32* @immediate_quit, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @immediate_quit, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @net_load(i8* %37, i32* %5, i32* %6, i32* %7)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %33
  %43 = load i32, i32* @immediate_quit, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* @immediate_quit, align 4
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @vx_add_symbols(i8* %45, i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = call i32 (...) @reinit_frame_cache()
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local i8* @tilde_expand(i8*) #1

declare dso_local i32 @make_cleanup(i32, i8*) #1

declare dso_local i32 @dont_repeat(...) #1

declare dso_local i64 @PIDGET(i32) #1

declare dso_local i64 @query(i8*) #1

declare dso_local i32 @target_kill(...) #1

declare dso_local i32 @net_load(i8*, i32*, i32*, i32*) #1

declare dso_local i32 @vx_add_symbols(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @reinit_frame_cache(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
