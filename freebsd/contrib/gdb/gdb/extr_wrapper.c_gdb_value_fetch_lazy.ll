; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wrapper.c_gdb_value_fetch_lazy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wrapper.c_gdb_value_fetch_lazy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.gdb_wrapper_arguments = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.value* }

@wrap_value_fetch_lazy = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RETURN_MASK_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdb_value_fetch_lazy(%struct.value* %0) #0 {
  %2 = alloca %struct.value*, align 8
  %3 = alloca %struct.gdb_wrapper_arguments, align 8
  store %struct.value* %0, %struct.value** %2, align 8
  %4 = load %struct.value*, %struct.value** %2, align 8
  %5 = getelementptr inbounds %struct.gdb_wrapper_arguments, %struct.gdb_wrapper_arguments* %3, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.value* %4, %struct.value** %8, align 8
  %9 = load i64, i64* @wrap_value_fetch_lazy, align 8
  %10 = inttoptr i64 %9 to i32*
  %11 = load i32, i32* @RETURN_MASK_ERROR, align 4
  %12 = call i32 @catch_errors(i32* %10, %struct.gdb_wrapper_arguments* %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %11)
  ret i32 %12
}

declare dso_local i32 @catch_errors(i32*, %struct.gdb_wrapper_arguments*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
