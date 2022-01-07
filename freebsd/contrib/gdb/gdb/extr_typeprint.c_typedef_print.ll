; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_typeprint.c_typedef_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_typeprint.c_typedef_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.type = type { i32 }
%struct.symbol = type { i32 }
%struct.ui_file = type { i32 }

@current_language = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Language not supported.\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @typedef_print(%struct.type* %0, %struct.symbol* %1, %struct.ui_file* %2) #0 {
  %4 = alloca %struct.type*, align 8
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca %struct.ui_file*, align 8
  store %struct.type* %0, %struct.type** %4, align 8
  store %struct.symbol* %1, %struct.symbol** %5, align 8
  store %struct.ui_file* %2, %struct.ui_file** %6, align 8
  %7 = load %struct.type*, %struct.type** %4, align 8
  %8 = call i32 @CHECK_TYPEDEF(%struct.type* %7)
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_language, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %12 [
  ]

12:                                               ; preds = %3
  %13 = call i32 @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12
  %15 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %16 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
