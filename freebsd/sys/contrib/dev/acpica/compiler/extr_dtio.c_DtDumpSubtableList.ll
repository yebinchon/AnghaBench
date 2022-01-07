; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtio.c_DtDumpSubtableList.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtio.c_DtDumpSubtableList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AslGbl_DebugFlag = common dso_local global i32 0, align 4
@AslGbl_RootTable = common dso_local global i32 0, align 4
@ASL_DEBUG_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [117 x i8] c"Subtable Info:\0ADepth                      Name Length   TotalLen LenSize  Flags    This     Parent   Child    Peer\0A\0A\00", align 1
@DtDumpSubtableInfo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"\0ASubtable Tree: (Depth, Name, Subtable, Length, TotalLength)\0A\0A\00", align 1
@DtDumpSubtableTree = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DtDumpSubtableList() #0 {
  %1 = load i32, i32* @AslGbl_DebugFlag, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @AslGbl_RootTable, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3, %0
  br label %20

7:                                                ; preds = %3
  %8 = load i32, i32* @ASL_DEBUG_OUTPUT, align 4
  %9 = call i32 @DbgPrint(i32 %8, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @AslGbl_RootTable, align 4
  %11 = load i32, i32* @DtDumpSubtableInfo, align 4
  %12 = call i32 @DtWalkTableTree(i32 %10, i32 %11, i32* null, i32* null)
  %13 = load i32, i32* @ASL_DEBUG_OUTPUT, align 4
  %14 = call i32 @DbgPrint(i32 %13, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @AslGbl_RootTable, align 4
  %16 = load i32, i32* @DtDumpSubtableTree, align 4
  %17 = call i32 @DtWalkTableTree(i32 %15, i32 %16, i32* null, i32* null)
  %18 = load i32, i32* @ASL_DEBUG_OUTPUT, align 4
  %19 = call i32 @DbgPrint(i32 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %20

20:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @DbgPrint(i32, i8*) #1

declare dso_local i32 @DtWalkTableTree(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
