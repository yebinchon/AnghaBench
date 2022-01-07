; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asllisting.c_LsDumpParseTree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asllisting.c_LsDumpParseTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AslGbl_DebugFlag = common dso_local global i32 0, align 4
@ASL_TREE_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"\0AOriginal parse tree from parser:\0A\0A\00", align 1
@ASL_PARSE_TREE_HEADER1 = common dso_local global i8* null, align 8
@AslGbl_ParseTreeRoot = common dso_local global i32 0, align 4
@ASL_WALK_VISIT_DOWNWARD = common dso_local global i32 0, align 4
@LsTreeWriteWalk = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LsDumpParseTree() #0 {
  %1 = load i32, i32* @AslGbl_DebugFlag, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %17

4:                                                ; preds = %0
  %5 = load i32, i32* @ASL_TREE_OUTPUT, align 4
  %6 = call i32 @DbgPrint(i32 %5, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @ASL_TREE_OUTPUT, align 4
  %8 = load i8*, i8** @ASL_PARSE_TREE_HEADER1, align 8
  %9 = call i32 @DbgPrint(i32 %7, i8* %8)
  %10 = load i32, i32* @AslGbl_ParseTreeRoot, align 4
  %11 = load i32, i32* @ASL_WALK_VISIT_DOWNWARD, align 4
  %12 = load i32, i32* @LsTreeWriteWalk, align 4
  %13 = call i32 @TrWalkParseTree(i32 %10, i32 %11, i32 %12, i32* null, i32* null)
  %14 = load i32, i32* @ASL_TREE_OUTPUT, align 4
  %15 = load i8*, i8** @ASL_PARSE_TREE_HEADER1, align 8
  %16 = call i32 @DbgPrint(i32 %14, i8* %15)
  br label %17

17:                                               ; preds = %4, %3
  ret void
}

declare dso_local i32 @DbgPrint(i32, i8*) #1

declare dso_local i32 @TrWalkParseTree(i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
