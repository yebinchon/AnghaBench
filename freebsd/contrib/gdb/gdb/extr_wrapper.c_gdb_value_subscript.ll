; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wrapper.c_gdb_value_subscript.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wrapper.c_gdb_value_subscript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.gdb_wrapper_arguments = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.value* }

@wrap_value_subscript = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RETURN_MASK_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdb_value_subscript(%struct.value* %0, %struct.value* %1, %struct.value** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.value*, align 8
  %6 = alloca %struct.value*, align 8
  %7 = alloca %struct.value**, align 8
  %8 = alloca %struct.gdb_wrapper_arguments, align 8
  store %struct.value* %0, %struct.value** %5, align 8
  store %struct.value* %1, %struct.value** %6, align 8
  store %struct.value** %2, %struct.value*** %7, align 8
  %9 = load %struct.value*, %struct.value** %5, align 8
  %10 = getelementptr inbounds %struct.gdb_wrapper_arguments, %struct.gdb_wrapper_arguments* %8, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.value* %9, %struct.value** %13, align 8
  %14 = load %struct.value*, %struct.value** %6, align 8
  %15 = getelementptr inbounds %struct.gdb_wrapper_arguments, %struct.gdb_wrapper_arguments* %8, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.value* %14, %struct.value** %18, align 8
  %19 = load i64, i64* @wrap_value_subscript, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = load i32, i32* @RETURN_MASK_ERROR, align 4
  %22 = call i32 @catch_errors(i32* %20, %struct.gdb_wrapper_arguments* %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %31

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.gdb_wrapper_arguments, %struct.gdb_wrapper_arguments* %8, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.value*
  %30 = load %struct.value**, %struct.value*** %7, align 8
  store %struct.value* %29, %struct.value** %30, align 8
  store i32 1, i32* %4, align 4
  br label %31

31:                                               ; preds = %25, %24
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @catch_errors(i32*, %struct.gdb_wrapper_arguments*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
