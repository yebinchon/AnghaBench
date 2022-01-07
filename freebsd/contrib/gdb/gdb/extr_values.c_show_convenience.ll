; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c_show_convenience.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c_show_convenience.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.internalvar = type { i32, i32, %struct.internalvar* }

@internalvars = common dso_local global %struct.internalvar* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"$%s = \00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@Val_pretty_default = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [147 x i8] c"No debugger convenience variables now defined.\0AConvenience variables have names starting with \22$\22;\0Ause \22set\22 as in \22set $foo = 5\22 to define them.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @show_convenience to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_convenience(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.internalvar*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.internalvar*, %struct.internalvar** @internalvars, align 8
  store %struct.internalvar* %7, %struct.internalvar** %5, align 8
  br label %8

8:                                                ; preds = %27, %2
  %9 = load %struct.internalvar*, %struct.internalvar** %5, align 8
  %10 = icmp ne %struct.internalvar* %9, null
  br i1 %10, label %11, label %31

11:                                               ; preds = %8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  store i32 1, i32* %6, align 4
  br label %15

15:                                               ; preds = %14, %11
  %16 = load %struct.internalvar*, %struct.internalvar** %5, align 8
  %17 = getelementptr inbounds %struct.internalvar, %struct.internalvar* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.internalvar*, %struct.internalvar** %5, align 8
  %21 = getelementptr inbounds %struct.internalvar, %struct.internalvar* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @gdb_stdout, align 4
  %24 = load i32, i32* @Val_pretty_default, align 4
  %25 = call i32 @value_print(i32 %22, i32 %23, i32 0, i32 %24)
  %26 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %15
  %28 = load %struct.internalvar*, %struct.internalvar** %5, align 8
  %29 = getelementptr inbounds %struct.internalvar, %struct.internalvar* %28, i32 0, i32 2
  %30 = load %struct.internalvar*, %struct.internalvar** %29, align 8
  store %struct.internalvar* %30, %struct.internalvar** %5, align 8
  br label %8

31:                                               ; preds = %8
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %31
  ret void
}

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @value_print(i32, i32, i32, i32) #1

declare dso_local i32 @printf_unfiltered(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
