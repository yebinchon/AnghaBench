; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_record_include_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_record_include_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.coff_symbol = type { i32 }

@inclDepth = common dso_local global i64 0, align 8
@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Mismatched C_BINCL/C_EINCL pair\00", align 1
@inclTable = common dso_local global %struct.TYPE_3__* null, align 8
@inclIndx = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coff_symbol*)* @record_include_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_include_end(%struct.coff_symbol* %0) #0 {
  %2 = alloca %struct.coff_symbol*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.coff_symbol* %0, %struct.coff_symbol** %2, align 8
  %4 = load i64, i64* @inclDepth, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %1
  %9 = call i32 (...) @allocate_include_entry()
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @inclTable, align 8
  %11 = load i64, i64* @inclIndx, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %11
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %3, align 8
  %13 = load %struct.coff_symbol*, %struct.coff_symbol** %2, align 8
  %14 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i64, i64* @inclDepth, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* @inclDepth, align 8
  %20 = load i64, i64* @inclIndx, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* @inclIndx, align 8
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
