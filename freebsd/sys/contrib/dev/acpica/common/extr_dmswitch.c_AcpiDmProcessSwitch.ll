; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmswitch.c_AcpiDmProcessSwitch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmswitch.c_AcpiDmProcessSwitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_12__*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"_T_\00", align 1
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AcpiGbl_TempListHead = common dso_local global %struct.TYPE_12__* null, align 8
@ACPI_DASM_SWITCH = common dso_local global i32 0, align 4
@ACPI_PARSEOP_IGNORE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Warning: Declaration for temp name %.4s not found\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiDmProcessSwitch(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i8* null, i8** %4, align 8
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %116 [
    i32 129, label %14
    i32 128, label %49
  ]

14:                                               ; preds = %1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = bitcast i32* %17 to i8*
  store i8* %18, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @strncmp(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %48, label %22

22:                                               ; preds = %14
  %23 = call %struct.TYPE_12__* @ACPI_ALLOCATE_ZEROED(i32 16)
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %5, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = icmp ne %struct.TYPE_12__* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %27, i32* %2, align 4
  br label %119

28:                                               ; preds = %22
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** @AcpiGbl_TempListHead, align 8
  %30 = icmp ne %struct.TYPE_12__* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** @AcpiGbl_TempListHead, align 8
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %6, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** @AcpiGbl_TempListHead, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** @AcpiGbl_TempListHead, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %36, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** @AcpiGbl_TempListHead, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %39, align 8
  br label %47

40:                                               ; preds = %28
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %41, %struct.TYPE_12__** @AcpiGbl_TempListHead, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** @AcpiGbl_TempListHead, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %44, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** @AcpiGbl_TempListHead, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %46, align 8
  br label %47

47:                                               ; preds = %40, %31
  br label %48

48:                                               ; preds = %47, %14
  br label %117

49:                                               ; preds = %1
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = call i32 @AcpiDmIsSwitchBlock(%struct.TYPE_13__* %50, i8** %4)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  br label %117

54:                                               ; preds = %49
  %55 = load i32, i32* @ACPI_DASM_SWITCH, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** @AcpiGbl_TempListHead, align 8
  store %struct.TYPE_12__* %59, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %59, %struct.TYPE_12__** %7, align 8
  br label %60

60:                                               ; preds = %103, %54
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %62 = icmp ne %struct.TYPE_12__* %61, null
  br i1 %62, label %63, label %108

63:                                               ; preds = %60
  %64 = load i8*, i8** %4, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = bitcast i32* %69 to i8*
  %71 = call i32 @strncmp(i8* %64, i8* %70, i32 4)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %103, label %73

73:                                               ; preds = %63
  %74 = load i32, i32* @ACPI_PARSEOP_IGNORE, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %74
  store i32 %81, i32* %79, align 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** @AcpiGbl_TempListHead, align 8
  %84 = icmp eq %struct.TYPE_12__* %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %73
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  store %struct.TYPE_12__* %88, %struct.TYPE_12__** @AcpiGbl_TempListHead, align 8
  br label %95

89:                                               ; preds = %73
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  store %struct.TYPE_12__* %92, %struct.TYPE_12__** %94, align 8
  br label %95

95:                                               ; preds = %89, %85
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %97, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %99, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %101 = call i32 @ACPI_FREE(%struct.TYPE_12__* %100)
  %102 = load i32, i32* @TRUE, align 4
  store i32 %102, i32* %8, align 4
  br label %108

103:                                              ; preds = %63
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %104, %struct.TYPE_12__** %7, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  store %struct.TYPE_12__* %107, %struct.TYPE_12__** %6, align 8
  br label %60

108:                                              ; preds = %95, %60
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* @stderr, align 4
  %113 = load i8*, i8** %4, align 8
  %114 = call i32 @fprintf(i32 %112, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %113)
  br label %115

115:                                              ; preds = %111, %108
  br label %117

116:                                              ; preds = %1
  br label %117

117:                                              ; preds = %116, %115, %53, %48
  %118 = load i32, i32* @AE_OK, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %117, %26
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_12__* @ACPI_ALLOCATE_ZEROED(i32) #1

declare dso_local i32 @AcpiDmIsSwitchBlock(%struct.TYPE_13__*, i8**) #1

declare dso_local i32 @ACPI_FREE(%struct.TYPE_12__*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
