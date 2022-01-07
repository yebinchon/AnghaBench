; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dttemplate.c_DtCreateOneTemplateFile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dttemplate.c_DtCreateOneTemplateFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ACPI_NAMESEG_SIZE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"%s: Invalid ACPI table signature (length must be 4 characters)\0A\00", align 1
@AE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"MADT\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"APIC\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"FADT\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"FACP\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"%4.4s: No template available\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"%4.4s: Unrecognized ACPI table signature\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @DtCreateOneTemplateFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DtCreateOneTemplateFile(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strlen(i8* %8)
  %10 = load i64, i64* @ACPI_NAMESEG_SIZE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32, i32* @stderr, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32, i32* @AE_ERROR, align 4
  store i32 %16, i32* %3, align 4
  br label %60

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %28

22:                                               ; preds = %17
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %27

27:                                               ; preds = %26, %22
  br label %28

28:                                               ; preds = %27, %21
  %29 = load i8*, i8** %4, align 8
  %30 = call %struct.TYPE_4__* @AcpiDmGetTableData(i8* %29)
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %6, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @stderr, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* @AE_ERROR, align 4
  store i32 %42, i32* %3, align 4
  br label %60

43:                                               ; preds = %33
  br label %54

44:                                               ; preds = %28
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @AcpiUtIsSpecialTable(i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @stderr, align 4
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @fprintf(i32 %49, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i8* %50)
  %52 = load i32, i32* @AE_ERROR, align 4
  store i32 %52, i32* %3, align 4
  br label %60

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %43
  %55 = load i8*, i8** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %58 = call i32 @DtCreateOneTemplate(i8* %55, i32 %56, %struct.TYPE_4__* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %54, %48, %38, %12
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_4__* @AcpiDmGetTableData(i8*) #1

declare dso_local i32 @AcpiUtIsSpecialTable(i8*) #1

declare dso_local i32 @DtCreateOneTemplate(i8*, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
