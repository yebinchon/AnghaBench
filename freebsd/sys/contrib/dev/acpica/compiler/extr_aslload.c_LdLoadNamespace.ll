; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslload.c_LdLoadNamespace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslload.c_LdLoadNamespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ASL_WALK_VISIT_TWICE = common dso_local global i32 0, align 4
@LdNamespace1Begin = common dso_local global i32 0, align 4
@LdCommonNamespaceEnd = common dso_local global i32 0, align 4
@LdNamespace2Begin = common dso_local global i32 0, align 4
@AcpiDbgLevel = common dso_local global i32 0, align 4
@ACPI_LV_TABLES = common dso_local global i32 0, align 4
@ACPI_NS_ALL = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LdLoadNamespace(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %5 = call i32* @AcpiDsCreateWalkState(i32 0, i32* null, i32* null, i32* null)
  store i32* %5, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %9, i32* %2, align 4
  br label %35

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @ASL_WALK_VISIT_TWICE, align 4
  %13 = load i32, i32* @LdNamespace1Begin, align 4
  %14 = load i32, i32* @LdCommonNamespaceEnd, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @TrWalkParseTree(i32* %11, i32 %12, i32 %13, i32 %14, i32* %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @ASL_WALK_VISIT_TWICE, align 4
  %19 = load i32, i32* @LdNamespace2Begin, align 4
  %20 = load i32, i32* @LdCommonNamespaceEnd, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @TrWalkParseTree(i32* %17, i32 %18, i32 %19, i32 %20, i32* %21)
  %23 = load i32, i32* @AcpiDbgLevel, align 4
  %24 = load i32, i32* @ACPI_LV_TABLES, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %10
  %28 = load i32, i32* @ACPI_NS_ALL, align 4
  %29 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %30 = call i32 @AcpiNsDumpTables(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %10
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @ACPI_FREE(i32* %32)
  %34 = load i32, i32* @AE_OK, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %31, %8
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32* @AcpiDsCreateWalkState(i32, i32*, i32*, i32*) #1

declare dso_local i32 @TrWalkParseTree(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @AcpiNsDumpTables(i32, i32) #1

declare dso_local i32 @ACPI_FREE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
