; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffsolib.c__initialize_xcoffsolib.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffsolib.c__initialize_xcoffsolib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"sharedlibrary\00", align 1
@class_files = common dso_local global i32 0, align 4
@sharedlibrary_command = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Load shared object library symbols for files matching REGEXP.\00", align 1
@solib_info = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Status of loaded shared object libraries\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"auto-solib-add\00", align 1
@class_support = common dso_local global i32 0, align 4
@var_boolean = common dso_local global i32 0, align 4
@auto_solib_add = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [333 x i8] c"Set autoloading of shared library symbols.\0AIf \22on\22, symbols from all shared object libraries will be loaded\0Aautomatically when the inferior begins execution, when the dynamic linker\0Ainforms gdb that a new library has been loaded, or when attaching to the\0Ainferior.  Otherwise, symbols must be loaded manually, using `sharedlibrary'.\00", align 1
@setlist = common dso_local global i32 0, align 4
@showlist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_xcoffsolib() #0 {
  %1 = load i32, i32* @class_files, align 4
  %2 = load i32, i32* @sharedlibrary_command, align 4
  %3 = call i32 @add_com(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %1, i32 %2, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %4 = load i32, i32* @solib_info, align 4
  %5 = call i32 @add_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %6 = load i32, i32* @class_support, align 4
  %7 = load i32, i32* @var_boolean, align 4
  %8 = call i32 @add_set_cmd(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %6, i32 %7, i8* bitcast (i32* @auto_solib_add to i8*), i8* getelementptr inbounds ([333 x i8], [333 x i8]* @.str.4, i64 0, i64 0), i32* @setlist)
  %9 = call i32 @add_show_from_set(i32 %8, i32* @showlist)
  ret void
}

declare dso_local i32 @add_com(i8*, i32, i32, i8*) #1

declare dso_local i32 @add_info(i8*, i32, i8*) #1

declare dso_local i32 @add_show_from_set(i32, i32*) #1

declare dso_local i32 @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
