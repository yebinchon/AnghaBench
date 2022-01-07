; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dttemplate.c_DtCreateAllTemplates.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dttemplate.c_DtCreateAllTemplates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Creating all supported Template files\0A\00", align 1
@AcpiDmTableData = common dso_local global %struct.TYPE_4__* null, align 8
@ACPI_SIG_DSDT = common dso_local global i64 0, align 8
@ACPI_SIG_SSDT = common dso_local global i64 0, align 8
@ACPI_SIG_OSDT = common dso_local global i64 0, align 8
@ACPI_SIG_FACS = common dso_local global i64 0, align 8
@ACPI_RSDP_NAME = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @DtCreateAllTemplates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DtCreateAllTemplates() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @stderr, align 4
  %5 = call i32 @fprintf(i32 %4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AcpiDmTableData, align 8
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %2, align 8
  br label %7

7:                                                ; preds = %30, %0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %7
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = call i32 @DtCreateOneTemplate(i64 %20, i32 0, %struct.TYPE_4__* %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @ACPI_FAILURE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %3, align 4
  store i32 %27, i32* %1, align 4
  br label %75

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28, %12
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 1
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %2, align 8
  br label %7

33:                                               ; preds = %7
  %34 = load i64, i64* @ACPI_SIG_DSDT, align 8
  %35 = call i32 @DtCreateOneTemplate(i64 %34, i32 0, %struct.TYPE_4__* null)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i64 @ACPI_FAILURE(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %3, align 4
  store i32 %40, i32* %1, align 4
  br label %75

41:                                               ; preds = %33
  %42 = load i64, i64* @ACPI_SIG_SSDT, align 8
  %43 = call i32 @DtCreateOneTemplate(i64 %42, i32 0, %struct.TYPE_4__* null)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i64 @ACPI_FAILURE(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %3, align 4
  store i32 %48, i32* %1, align 4
  br label %75

49:                                               ; preds = %41
  %50 = load i64, i64* @ACPI_SIG_OSDT, align 8
  %51 = call i32 @DtCreateOneTemplate(i64 %50, i32 0, %struct.TYPE_4__* null)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i64 @ACPI_FAILURE(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %3, align 4
  store i32 %56, i32* %1, align 4
  br label %75

57:                                               ; preds = %49
  %58 = load i64, i64* @ACPI_SIG_FACS, align 8
  %59 = call i32 @DtCreateOneTemplate(i64 %58, i32 0, %struct.TYPE_4__* null)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = call i64 @ACPI_FAILURE(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %3, align 4
  store i32 %64, i32* %1, align 4
  br label %75

65:                                               ; preds = %57
  %66 = load i64, i64* @ACPI_RSDP_NAME, align 8
  %67 = call i32 @DtCreateOneTemplate(i64 %66, i32 0, %struct.TYPE_4__* null)
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i64 @ACPI_FAILURE(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* %3, align 4
  store i32 %72, i32* %1, align 4
  br label %75

73:                                               ; preds = %65
  %74 = load i32, i32* @AE_OK, align 4
  store i32 %74, i32* %1, align 4
  br label %75

75:                                               ; preds = %73, %71, %63, %55, %47, %39, %26
  %76 = load i32, i32* %1, align 4
  ret i32 %76
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @DtCreateOneTemplate(i64, i32, %struct.TYPE_4__*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
