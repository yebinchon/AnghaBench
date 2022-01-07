; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_top.c_quit_force.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_top.c_quit_force.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qt_args = type { i8*, i32 }
%struct.value = type { i32 }

@quit_target = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Quitting: \00", align 1
@RETURN_MASK_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quit_force(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.qt_args, align 8
  %7 = alloca %struct.value*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8
  %12 = call %struct.value* @parse_and_eval(i8* %11)
  store %struct.value* %12, %struct.value** %7, align 8
  %13 = load %struct.value*, %struct.value** %7, align 8
  %14 = call i64 @value_as_long(%struct.value* %13)
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %10, %2
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds %struct.qt_args, %struct.qt_args* %6, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = getelementptr inbounds %struct.qt_args, %struct.qt_args* %6, i32 0, i32 1
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* @quit_target, align 4
  %22 = load i32, i32* @RETURN_MASK_ALL, align 4
  %23 = call i32 @catch_errors(i32 %21, %struct.qt_args* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @exit(i32 %24) #3
  unreachable
}

declare dso_local %struct.value* @parse_and_eval(i8*) #1

declare dso_local i64 @value_as_long(%struct.value*) #1

declare dso_local i32 @catch_errors(i32, %struct.qt_args*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
