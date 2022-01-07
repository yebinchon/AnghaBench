; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_initialize_targets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_initialize_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dummy_target = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"target\00", align 1
@target_info = common dso_local global i32 0, align 4
@targ_desc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@class_maintenance = common dso_local global i32 0, align 4
@var_zinteger = common dso_local global i32 0, align 4
@targetdebug = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"Set target debugging.\0AWhen non-zero, target debugging is enabled.\00", align 1
@setdebuglist = common dso_local global i32 0, align 4
@showdebuglist = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"trust-readonly-sections\00", align 1
@class_support = common dso_local global i32 0, align 4
@trust_readonly = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [258 x i8] c"Set mode for reading from readonly sections.\0AWhen this mode is on, memory reads from readonly sections (such as .text)\0Awill be read from the object file instead of from the target.  This will\0Aresult in significant performance improvement for remote targets.\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Show mode for reading from readonly sections.\0A\00", align 1
@setlist = common dso_local global i32 0, align 4
@showlist = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"monitor\00", align 1
@class_obscure = common dso_local global i32 0, align 4
@do_monitor_command = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [60 x i8] c"Send a command to the remote monitor (remote targets only).\00", align 1
@target_dcache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initialize_targets() #0 {
  %1 = call i32 (...) @init_dummy_target()
  %2 = call i32 @push_target(i32* @dummy_target)
  %3 = load i32, i32* @target_info, align 4
  %4 = load i32, i32* @targ_desc, align 4
  %5 = call i32 @add_info(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %3, i32 %4)
  %6 = load i32, i32* @target_info, align 4
  %7 = load i32, i32* @targ_desc, align 4
  %8 = call i32 @add_info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %6, i32 %7)
  %9 = load i32, i32* @class_maintenance, align 4
  %10 = load i32, i32* @var_zinteger, align 4
  %11 = call i32 @add_set_cmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10, i8* bitcast (i32* @targetdebug to i8*), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32* @setdebuglist)
  %12 = call i32 @add_show_from_set(i32 %11, i32* @showdebuglist)
  %13 = load i32, i32* @class_support, align 4
  %14 = call i32 @add_setshow_boolean_cmd(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %13, i32* @trust_readonly, i8* getelementptr inbounds ([258 x i8], [258 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32* null, i32* null, i32* @setlist, i32* @showlist)
  %15 = load i32, i32* @class_obscure, align 4
  %16 = load i32, i32* @do_monitor_command, align 4
  %17 = call i32 @add_com(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %15, i32 %16, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0))
  %18 = call i32 (...) @dcache_init()
  store i32 %18, i32* @target_dcache, align 4
  ret void
}

declare dso_local i32 @init_dummy_target(...) #1

declare dso_local i32 @push_target(i32*) #1

declare dso_local i32 @add_info(i8*, i32, i32) #1

declare dso_local i32 @add_show_from_set(i32, i32*) #1

declare dso_local i32 @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @add_setshow_boolean_cmd(i8*, i32, i32*, i8*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @add_com(i8*, i32, i32, i8*) #1

declare dso_local i32 @dcache_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
