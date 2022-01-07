; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslcodegen.c_CgGenerateAmlOutput.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslcodegen.c_CgGenerateAmlOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AslGbl_CurrentDB = common dso_local global i32 0, align 4
@ASL_WALK_VISIT_DOWNWARD = common dso_local global i32 0, align 4
@ASL_WALK_VISIT_DB_SEPARATELY = common dso_local global i32 0, align 4
@CgAmlWriteWalk = common dso_local global i32 0, align 4
@ASL_TREE_OUTPUT = common dso_local global i32 0, align 4
@ASL_PARSE_TREE_HEADER2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CgGenerateAmlOutput() #0 {
  %1 = load i32, i32* @AslGbl_CurrentDB, align 4
  %2 = load i32, i32* @ASL_WALK_VISIT_DOWNWARD, align 4
  %3 = load i32, i32* @ASL_WALK_VISIT_DB_SEPARATELY, align 4
  %4 = or i32 %2, %3
  %5 = load i32, i32* @CgAmlWriteWalk, align 4
  %6 = call i32 @TrWalkParseTree(i32 %1, i32 %4, i32 %5, i32* null, i32* null)
  %7 = load i32, i32* @ASL_TREE_OUTPUT, align 4
  %8 = load i32, i32* @ASL_PARSE_TREE_HEADER2, align 4
  %9 = call i32 @DbgPrint(i32 %7, i32 %8)
  %10 = load i32, i32* @AslGbl_CurrentDB, align 4
  %11 = call i32 @CgUpdateHeader(i32 %10)
  ret void
}

declare dso_local i32 @TrWalkParseTree(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @DbgPrint(i32, i32) #1

declare dso_local i32 @CgUpdateHeader(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
