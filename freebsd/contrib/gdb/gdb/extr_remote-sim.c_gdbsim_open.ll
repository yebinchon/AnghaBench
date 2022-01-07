; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-sim.c_gdbsim_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-sim.c_gdbsim_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"gdbsim_open: args \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@gdbsim_desc = common dso_local global i32* null, align 8
@gdbsim_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c" -E little\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c" --architecture=xxxxxxxxxx\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"gdbsim\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c" -E big\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c" --architecture=\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"Insufficient memory available to allocate simulator arg list.\00", align 1
@SIM_OPEN_DEBUG = common dso_local global i32 0, align 4
@gdb_callback = common dso_local global i32 0, align 4
@exec_bfd = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"unable to create simulator instance\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Connected to the simulator.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @gdbsim_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdbsim_open(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i64 (...) @sr_get_debug()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i8*, i8** %3, align 8
  br label %16

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i8* [ %14, %13 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %15 ]
  %18 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %16, %2
  %20 = load i32*, i32** @gdbsim_desc, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 @unpush_target(i32* @gdbsim_ops)
  br label %24

24:                                               ; preds = %22, %19
  %25 = call i32 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %26 = add nsw i32 8, %25
  %27 = call i32 @strlen(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %28 = add nsw i32 %26, %27
  %29 = load i8*, i8** %3, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @strlen(i8* %32)
  br label %35

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi i32 [ %33, %31 ], [ 0, %34 ]
  %37 = add nsw i32 %28, %36
  %38 = add nsw i32 %37, 50
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @alloca(i32 %39)
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %6, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @strcpy(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %44 = call i32 (...) @selected_byte_order()
  switch i32 %44, label %52 [
    i32 130, label %45
    i32 129, label %48
    i32 128, label %51
  ]

45:                                               ; preds = %35
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @strcat(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %52

48:                                               ; preds = %35
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @strcat(i8* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %52

51:                                               ; preds = %35
  br label %52

52:                                               ; preds = %35, %51, %48, %45
  %53 = call i8* (...) @selected_architecture_name()
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @strcat(i8* %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %58 = load i8*, i8** %6, align 8
  %59 = call i8* (...) @selected_architecture_name()
  %60 = call i32 @strcat(i8* %58, i8* %59)
  br label %61

61:                                               ; preds = %55, %52
  %62 = load i8*, i8** %3, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @strcat(i8* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %67 = load i8*, i8** %6, align 8
  %68 = load i8*, i8** %3, align 8
  %69 = call i32 @strcat(i8* %67, i8* %68)
  br label %70

70:                                               ; preds = %64, %61
  %71 = load i8*, i8** %6, align 8
  %72 = call i8** @buildargv(i8* %71)
  store i8** %72, i8*** %7, align 8
  %73 = load i8**, i8*** %7, align 8
  %74 = icmp eq i8** %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = call i32 @error(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %70
  %78 = load i8**, i8*** %7, align 8
  %79 = call i32 @make_cleanup_freeargv(i8** %78)
  %80 = call i32 (...) @init_callbacks()
  %81 = load i32, i32* @SIM_OPEN_DEBUG, align 4
  %82 = load i32, i32* @exec_bfd, align 4
  %83 = load i8**, i8*** %7, align 8
  %84 = call i32* @sim_open(i32 %81, i32* @gdb_callback, i32 %82, i8** %83)
  store i32* %84, i32** @gdbsim_desc, align 8
  %85 = load i32*, i32** @gdbsim_desc, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %77
  %90 = call i32 @push_target(i32* @gdbsim_ops)
  %91 = call i32 @target_fetch_registers(i32 -1)
  %92 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i64 @sr_get_debug(...) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @unpush_target(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @selected_byte_order(...) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i8* @selected_architecture_name(...) #1

declare dso_local i8** @buildargv(i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @make_cleanup_freeargv(i8**) #1

declare dso_local i32 @init_callbacks(...) #1

declare dso_local i32* @sim_open(i32, i32*, i32, i8**) #1

declare dso_local i32 @push_target(i32*) #1

declare dso_local i32 @target_fetch_registers(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
