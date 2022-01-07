; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c__initialize_values.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c__initialize_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"convenience\00", align 1
@no_class = common dso_local global i32 0, align 4
@show_convenience = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [357 x i8] c"Debugger convenience (\22$foo\22) variables.\0AThese variables are created when you assign them values;\0Athus, \22print $foo=1\22 gives \22$foo\22 the value 1.  Values may be any type.\0A\0AA few convenience variables are given values automatically:\0A\22$_\22holds the last address examined with \22x\22 or \22info lines\22,\0A\22$__\22 holds the contents of the last address examined with \22x\22.\00", align 1
@showlist = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"values\00", align 1
@show_values = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"Elements of value history around item number IDX (or last ten).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_values() #0 {
  %1 = load i32, i32* @no_class, align 4
  %2 = load i32, i32* @show_convenience, align 4
  %3 = call i32 @add_cmd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %1, i32 %2, i8* getelementptr inbounds ([357 x i8], [357 x i8]* @.str.1, i64 0, i64 0), i32* @showlist)
  %4 = load i32, i32* @no_class, align 4
  %5 = load i32, i32* @show_values, align 4
  %6 = call i32 @add_cmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %4, i32 %5, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32* @showlist)
  ret void
}

declare dso_local i32 @add_cmd(i8*, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
