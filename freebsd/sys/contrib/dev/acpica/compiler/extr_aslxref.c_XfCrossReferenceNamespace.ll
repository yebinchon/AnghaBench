; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslxref.c_XfCrossReferenceNamespace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslxref.c_XfCrossReferenceNamespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AslGbl_ParseTreeRoot = common dso_local global i32 0, align 4
@ASL_WALK_VISIT_TWICE = common dso_local global i32 0, align 4
@XfNamespaceLocateBegin = common dso_local global i32 0, align 4
@XfNamespaceLocateEnd = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XfCrossReferenceNamespace() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = call i32* @AcpiDsCreateWalkState(i32 0, i32* null, i32* null, i32* null)
  store i32* %3, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %7, i32* %1, align 4
  br label %18

8:                                                ; preds = %0
  %9 = load i32, i32* @AslGbl_ParseTreeRoot, align 4
  %10 = load i32, i32* @ASL_WALK_VISIT_TWICE, align 4
  %11 = load i32, i32* @XfNamespaceLocateBegin, align 4
  %12 = load i32, i32* @XfNamespaceLocateEnd, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @TrWalkParseTree(i32 %9, i32 %10, i32 %11, i32 %12, i32* %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @ACPI_FREE(i32* %15)
  %17 = load i32, i32* @AE_OK, align 4
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %8, %6
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

declare dso_local i32* @AcpiDsCreateWalkState(i32, i32*, i32*, i32*) #1

declare dso_local i32 @TrWalkParseTree(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ACPI_FREE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
