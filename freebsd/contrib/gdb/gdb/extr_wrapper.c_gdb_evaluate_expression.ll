; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wrapper.c_gdb_evaluate_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wrapper.c_gdb_evaluate_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expression = type { i32 }
%struct.value = type { i32 }
%struct.gdb_wrapper_arguments = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.expression* }

@wrap_evaluate_expression = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RETURN_MASK_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdb_evaluate_expression(%struct.expression* %0, %struct.value** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.expression*, align 8
  %5 = alloca %struct.value**, align 8
  %6 = alloca %struct.gdb_wrapper_arguments, align 8
  store %struct.expression* %0, %struct.expression** %4, align 8
  store %struct.value** %1, %struct.value*** %5, align 8
  %7 = load %struct.expression*, %struct.expression** %4, align 8
  %8 = getelementptr inbounds %struct.gdb_wrapper_arguments, %struct.gdb_wrapper_arguments* %6, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.expression* %7, %struct.expression** %11, align 8
  %12 = load i64, i64* @wrap_evaluate_expression, align 8
  %13 = inttoptr i64 %12 to i32*
  %14 = load i32, i32* @RETURN_MASK_ERROR, align 4
  %15 = call i32 @catch_errors(i32* %13, %struct.gdb_wrapper_arguments* %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.gdb_wrapper_arguments, %struct.gdb_wrapper_arguments* %6, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.value*
  %23 = load %struct.value**, %struct.value*** %5, align 8
  store %struct.value* %22, %struct.value** %23, align 8
  store i32 1, i32* %3, align 4
  br label %24

24:                                               ; preds = %18, %17
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @catch_errors(i32*, %struct.gdb_wrapper_arguments*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
