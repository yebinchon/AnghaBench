; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_typeprint.c_ptype_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_typeprint.c_ptype_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.expression = type { i32 }
%struct.cleanup = type { i32 }

@free_current_contents = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"type = \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@gdb_stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ptype_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptype_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.expression*, align 8
  %7 = alloca %struct.cleanup*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @whatis_exp(i8* %11, i32 1)
  br label %36

13:                                               ; preds = %2
  %14 = load i8*, i8** %3, align 8
  %15 = call %struct.expression* @parse_expression(i8* %14)
  store %struct.expression* %15, %struct.expression** %6, align 8
  %16 = load i32, i32* @free_current_contents, align 4
  %17 = call %struct.cleanup* @make_cleanup(i32 %16, %struct.expression** %6)
  store %struct.cleanup* %17, %struct.cleanup** %7, align 8
  %18 = load %struct.expression*, %struct.expression** %6, align 8
  %19 = call %struct.type* @ptype_eval(%struct.expression* %18)
  store %struct.type* %19, %struct.type** %5, align 8
  %20 = load %struct.type*, %struct.type** %5, align 8
  %21 = icmp ne %struct.type* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %13
  %23 = call i32 @printf_filtered(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.type*, %struct.type** %5, align 8
  %25 = load i32, i32* @gdb_stdout, align 4
  %26 = call i32 @type_print(%struct.type* %24, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 1)
  %27 = call i32 @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %28 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %29 = call i32 @do_cleanups(%struct.cleanup* %28)
  br label %35

30:                                               ; preds = %13
  %31 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %32 = call i32 @do_cleanups(%struct.cleanup* %31)
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @whatis_exp(i8* %33, i32 1)
  br label %35

35:                                               ; preds = %30, %22
  br label %36

36:                                               ; preds = %35, %10
  ret void
}

declare dso_local i32 @whatis_exp(i8*, i32) #1

declare dso_local %struct.expression* @parse_expression(i8*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, %struct.expression**) #1

declare dso_local %struct.type* @ptype_eval(%struct.expression*) #1

declare dso_local i32 @printf_filtered(i8*) #1

declare dso_local i32 @type_print(%struct.type*, i8*, i32, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
