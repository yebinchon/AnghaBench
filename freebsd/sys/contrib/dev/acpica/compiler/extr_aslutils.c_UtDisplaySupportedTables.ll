; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslutils.c_UtDisplaySupportedTables.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslutils.c_UtDisplaySupportedTables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@.str = private unnamed_addr constant [95 x i8] c"\0AACPI tables supported by iASL version %8.8X:\0A  (Compiler, Disassembler, Template Generator)\0A\0A\00", align 1
@ACPI_CA_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"\0A  Supported ACPI tables:\0A\00", align 1
@AcpiGbl_SupportedTables = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"%8u) %s    %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UtDisplaySupportedTables() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @ACPI_CA_VERSION, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i32 %3)
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @AcpiGbl_SupportedTables, align 8
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %1, align 8
  store i32 1, i32* %2, align 4
  br label %7

7:                                                ; preds = %21, %0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %7
  %13 = load i32, i32* %2, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %13, i8* %16, i8* %19)
  br label %21

21:                                               ; preds = %12
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 1
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %1, align 8
  %24 = load i32, i32* %2, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %2, align 4
  br label %7

26:                                               ; preds = %7
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
