; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valprint.c__initialize_valprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valprint.c__initialize_valprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"print\00", align 1
@no_class = common dso_local global i32 0, align 4
@set_print = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Generic command for setting how things print.\00", align 1
@setprintlist = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"set print \00", align 1
@setlist = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"pr\00", align 1
@show_print = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"Generic command for showing print settings.\00", align 1
@showprintlist = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"show print \00", align 1
@showlist = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"elements\00", align 1
@var_uinteger = common dso_local global i32 0, align 4
@print_max = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [106 x i8] c"Set limit on string chars or array elements to print.\0A\22set print elements 0\22 causes there to be no limit.\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"null-stop\00", align 1
@var_boolean = common dso_local global i32 0, align 4
@stop_print_at_null = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [56 x i8] c"Set printing of char arrays to stop at first null char.\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"repeats\00", align 1
@repeat_count_threshold = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [113 x i8] c"Set threshold for repeated print elements.\0A\22set print repeats 0\22 causes all elements to be individually printed.\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"pretty\00", align 1
@class_support = common dso_local global i32 0, align 4
@prettyprint_structs = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [34 x i8] c"Set prettyprinting of structures.\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@unionprint = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [47 x i8] c"Set printing of unions interior to structures.\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@prettyprint_arrays = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [30 x i8] c"Set prettyprinting of arrays.\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"address\00", align 1
@addressprint = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [27 x i8] c"Set printing of addresses.\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"input-radix\00", align 1
@input_radix = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [46 x i8] c"Set default input radix for entering numbers.\00", align 1
@set_input_radix = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [13 x i8] c"output-radix\00", align 1
@output_radix = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [49 x i8] c"Set default output radix for printing of values.\00", align 1
@set_output_radix = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [6 x i8] c"radix\00", align 1
@set_radix = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [188 x i8] c"Set default input and output number radices.\0AUse 'set input-radix' or 'set output-radix' to independently set each.\0AWithout an argument, sets both radices back to the default value of 10.\00", align 1
@show_radix = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [124 x i8] c"Show the default input and output number radices.\0AUse 'show input-radix' or 'show output-radix' to independently show each.\00", align 1
@PRINT_MAX_DEFAULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_valprint() #0 {
  %1 = alloca %struct.cmd_list_element*, align 8
  %2 = load i32, i32* @no_class, align 4
  %3 = load i32, i32* @set_print, align 4
  %4 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32* @setprintlist, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* @setlist)
  %5 = load i32, i32* @no_class, align 4
  %6 = call i32 @add_alias_cmd(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %5, i32 1, i32* @setlist)
  %7 = load i32, i32* @no_class, align 4
  %8 = call i32 @add_alias_cmd(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %7, i32 1, i32* @setlist)
  %9 = load i32, i32* @no_class, align 4
  %10 = load i32, i32* @show_print, align 4
  %11 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32* @showprintlist, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 0, i32* @showlist)
  %12 = load i32, i32* @no_class, align 4
  %13 = call i32 @add_alias_cmd(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %12, i32 1, i32* @showlist)
  %14 = load i32, i32* @no_class, align 4
  %15 = call i32 @add_alias_cmd(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %14, i32 1, i32* @showlist)
  %16 = load i32, i32* @no_class, align 4
  %17 = load i32, i32* @var_uinteger, align 4
  %18 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %16, i32 %17, i8* bitcast (i64* @print_max to i8*), i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.8, i64 0, i64 0), i32* @setprintlist)
  %19 = call i32 @add_show_from_set(%struct.cmd_list_element* %18, i32* @showprintlist)
  %20 = load i32, i32* @no_class, align 4
  %21 = load i32, i32* @var_boolean, align 4
  %22 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %20, i32 %21, i8* bitcast (i32* @stop_print_at_null to i8*), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0), i32* @setprintlist)
  %23 = call i32 @add_show_from_set(%struct.cmd_list_element* %22, i32* @showprintlist)
  %24 = load i32, i32* @no_class, align 4
  %25 = load i32, i32* @var_uinteger, align 4
  %26 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %24, i32 %25, i8* bitcast (i32* @repeat_count_threshold to i8*), i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.12, i64 0, i64 0), i32* @setprintlist)
  %27 = call i32 @add_show_from_set(%struct.cmd_list_element* %26, i32* @showprintlist)
  %28 = load i32, i32* @class_support, align 4
  %29 = load i32, i32* @var_boolean, align 4
  %30 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %28, i32 %29, i8* bitcast (i64* @prettyprint_structs to i8*), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i32* @setprintlist)
  %31 = call i32 @add_show_from_set(%struct.cmd_list_element* %30, i32* @showprintlist)
  %32 = load i32, i32* @class_support, align 4
  %33 = load i32, i32* @var_boolean, align 4
  %34 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %32, i32 %33, i8* bitcast (i32* @unionprint to i8*), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i64 0, i64 0), i32* @setprintlist)
  %35 = call i32 @add_show_from_set(%struct.cmd_list_element* %34, i32* @showprintlist)
  %36 = load i32, i32* @class_support, align 4
  %37 = load i32, i32* @var_boolean, align 4
  %38 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 %36, i32 %37, i8* bitcast (i64* @prettyprint_arrays to i8*), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0), i32* @setprintlist)
  %39 = call i32 @add_show_from_set(%struct.cmd_list_element* %38, i32* @showprintlist)
  %40 = load i32, i32* @class_support, align 4
  %41 = load i32, i32* @var_boolean, align 4
  %42 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i32 %40, i32 %41, i8* bitcast (i32* @addressprint to i8*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i32* @setprintlist)
  %43 = call i32 @add_show_from_set(%struct.cmd_list_element* %42, i32* @showprintlist)
  %44 = load i32, i32* @class_support, align 4
  %45 = load i32, i32* @var_uinteger, align 4
  %46 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i32 %44, i32 %45, i8* bitcast (i32* @input_radix to i8*), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.22, i64 0, i64 0), i32* @setlist)
  store %struct.cmd_list_element* %46, %struct.cmd_list_element** %1, align 8
  %47 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %48 = call i32 @add_show_from_set(%struct.cmd_list_element* %47, i32* @showlist)
  %49 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %50 = load i32, i32* @set_input_radix, align 4
  %51 = call i32 @set_cmd_sfunc(%struct.cmd_list_element* %49, i32 %50)
  %52 = load i32, i32* @class_support, align 4
  %53 = load i32, i32* @var_uinteger, align 4
  %54 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i32 %52, i32 %53, i8* bitcast (i32* @output_radix to i8*), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.24, i64 0, i64 0), i32* @setlist)
  store %struct.cmd_list_element* %54, %struct.cmd_list_element** %1, align 8
  %55 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %56 = call i32 @add_show_from_set(%struct.cmd_list_element* %55, i32* @showlist)
  %57 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %58 = load i32, i32* @set_output_radix, align 4
  %59 = call i32 @set_cmd_sfunc(%struct.cmd_list_element* %57, i32 %58)
  %60 = load i32, i32* @class_support, align 4
  %61 = load i32, i32* @set_radix, align 4
  %62 = call i32 @add_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i32 %60, i32 %61, i8* getelementptr inbounds ([188 x i8], [188 x i8]* @.str.26, i64 0, i64 0), i32* @setlist)
  %63 = load i32, i32* @class_support, align 4
  %64 = load i32, i32* @show_radix, align 4
  %65 = call i32 @add_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i32 %63, i32 %64, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.27, i64 0, i64 0), i32* @showlist)
  store i64 0, i64* @prettyprint_structs, align 8
  store i64 0, i64* @prettyprint_arrays, align 8
  store i32 1, i32* @unionprint, align 4
  store i32 1, i32* @addressprint, align 4
  %66 = load i64, i64* @PRINT_MAX_DEFAULT, align 8
  store i64 %66, i64* @print_max, align 8
  ret void
}

declare dso_local i32 @add_prefix_cmd(i8*, i32, i32, i8*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @add_alias_cmd(i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @add_show_from_set(%struct.cmd_list_element*, i32*) #1

declare dso_local %struct.cmd_list_element* @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @set_cmd_sfunc(%struct.cmd_list_element*, i32) #1

declare dso_local i32 @add_cmd(i8*, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
