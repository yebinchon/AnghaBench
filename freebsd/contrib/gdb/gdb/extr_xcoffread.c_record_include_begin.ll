; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_record_include_begin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_record_include_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.coff_symbol = type { i32, i32 }

@inclDepth = common dso_local global i64 0, align 8
@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Nested C_BINCL symbols\00", align 1
@inclTable = common dso_local global %struct.TYPE_2__* null, align 8
@inclIndx = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coff_symbol*)* @record_include_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_include_begin(%struct.coff_symbol* %0) #0 {
  %2 = alloca %struct.coff_symbol*, align 8
  store %struct.coff_symbol* %0, %struct.coff_symbol** %2, align 8
  %3 = load i64, i64* @inclDepth, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %1
  %8 = load i64, i64* @inclDepth, align 8
  %9 = add nsw i64 %8, 1
  store i64 %9, i64* @inclDepth, align 8
  %10 = call i32 (...) @allocate_include_entry()
  %11 = load %struct.coff_symbol*, %struct.coff_symbol** %2, align 8
  %12 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inclTable, align 8
  %15 = load i64, i64* @inclIndx, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32 %13, i32* %17, align 4
  %18 = load %struct.coff_symbol*, %struct.coff_symbol** %2, align 8
  %19 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inclTable, align 8
  %22 = load i64, i64* @inclIndx, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 4
  ret void
}

declare dso_local i32 @complaint(i32*, i8*) #1

declare dso_local i32 @allocate_include_entry(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
