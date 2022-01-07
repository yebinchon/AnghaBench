; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-sim.c_gdbsim_create_inferior.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-sim.c_gdbsim_create_inferior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exec_bfd = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"No executable file specified.\00", align 1
@program_loaded = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"No program loaded.\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"gdbsim_create_inferior: exec_file \22%s\22, args \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"(NULL)\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@gdbsim_desc = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@TARGET_SIGNAL_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8**)* @gdbsim_create_inferior to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdbsim_create_inferior(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* @exec_bfd, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %3
  %16 = call i32 @warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %12
  %18 = load i32, i32* @program_loaded, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = call i32 @warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %17
  %23 = call i64 (...) @sr_get_debug()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load i8*, i8** %4, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i8*, i8** %4, align 8
  br label %31

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i8* [ %29, %28 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %30 ]
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @printf_filtered(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %32, i8* %33)
  br label %35

35:                                               ; preds = %31, %22
  %36 = call i32 (...) @gdbsim_kill()
  %37 = call i32 (...) @remove_breakpoints()
  %38 = call i32 (...) @init_wait_for_inferior()
  %39 = load i8*, i8** %4, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %67

41:                                               ; preds = %35
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = add nsw i32 %43, 1
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = add nsw i32 %44, %46
  %48 = add nsw i32 %47, 1
  %49 = add nsw i32 %48, 10
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @alloca(i32 %50)
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** %8, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  store i8 0, i8* %54, align 1
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @strcat(i8* %55, i8* %56)
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @strcat(i8* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %60 = load i8*, i8** %8, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @strcat(i8* %60, i8* %61)
  %63 = load i8*, i8** %8, align 8
  %64 = call i8** @buildargv(i8* %63)
  store i8** %64, i8*** %9, align 8
  %65 = load i8**, i8*** %9, align 8
  %66 = call i32 @make_cleanup_freeargv(i8** %65)
  br label %68

67:                                               ; preds = %35
  store i8** null, i8*** %9, align 8
  br label %68

68:                                               ; preds = %67, %41
  %69 = load i32, i32* @gdbsim_desc, align 4
  %70 = load i64, i64* @exec_bfd, align 8
  %71 = load i8**, i8*** %9, align 8
  %72 = load i8**, i8*** %6, align 8
  %73 = call i32 @sim_create_inferior(i32 %69, i64 %70, i8** %71, i8** %72)
  %74 = call i32 @pid_to_ptid(i32 42)
  store i32 %74, i32* @inferior_ptid, align 4
  %75 = call i32 (...) @insert_breakpoints()
  %76 = call i32 (...) @clear_proceed_status()
  %77 = load i32, i32* @TARGET_SIGNAL_DEFAULT, align 4
  %78 = call i32 @proceed(i32 -1, i32 %77, i32 0)
  ret void
}

declare dso_local i32 @warning(i8*) #1

declare dso_local i64 @sr_get_debug(...) #1

declare dso_local i32 @printf_filtered(i8*, i8*, i8*) #1

declare dso_local i32 @gdbsim_kill(...) #1

declare dso_local i32 @remove_breakpoints(...) #1

declare dso_local i32 @init_wait_for_inferior(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i8** @buildargv(i8*) #1

declare dso_local i32 @make_cleanup_freeargv(i8**) #1

declare dso_local i32 @sim_create_inferior(i32, i64, i8**, i8**) #1

declare dso_local i32 @pid_to_ptid(i32) #1

declare dso_local i32 @insert_breakpoints(...) #1

declare dso_local i32 @clear_proceed_status(...) #1

declare dso_local i32 @proceed(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
