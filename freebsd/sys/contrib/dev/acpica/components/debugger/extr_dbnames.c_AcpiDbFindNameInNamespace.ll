; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbnames.c_AcpiDbFindNameInNamespace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbnames.c_AcpiDbFindNameInNamespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.AcpiDbFindNameInNamespace.AcpiName = private unnamed_addr constant [5 x i8] c"____\00", align 1
@ACPI_NAMESEG_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Name must be no longer than 4 characters\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_ROOT_OBJECT = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@AcpiDbWalkAndMatchName = common dso_local global i32 0, align 4
@ACPI_DB_CONSOLE_OUTPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiDbFindNameInNamespace(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [5 x i8], align 1
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = bitcast [5 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.AcpiDbFindNameInNamespace.AcpiName, i32 0, i32 0), i64 5, i1 false)
  %7 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strlen(i8* %8)
  %10 = load i64, i64* @ACPI_NAMESEG_SIZE, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @AE_OK, align 4
  store i32 %14, i32* %2, align 4
  br label %40

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @AcpiUtStrupr(i8* %16)
  br label %18

18:                                               ; preds = %22, %15
  %19 = load i8*, i8** %3, align 8
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load i8*, i8** %3, align 8
  %24 = load i8, i8* %23, align 1
  %25 = load i8*, i8** %5, align 8
  store i8 %24, i8* %25, align 1
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %3, align 8
  br label %18

30:                                               ; preds = %18
  %31 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %32 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %33 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %34 = load i32, i32* @AcpiDbWalkAndMatchName, align 4
  %35 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %36 = call i32 @AcpiWalkNamespace(i32 %31, i32 %32, i32 %33, i32 %34, i32* null, i8* %35, i32* null)
  %37 = load i32, i32* @ACPI_DB_CONSOLE_OUTPUT, align 4
  %38 = call i32 @AcpiDbSetOutputDestination(i32 %37)
  %39 = load i32, i32* @AE_OK, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %30, %12
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @AcpiOsPrintf(i8*) #2

declare dso_local i32 @AcpiUtStrupr(i8*) #2

declare dso_local i32 @AcpiWalkNamespace(i32, i32, i32, i32, i32*, i8*, i32*) #2

declare dso_local i32 @AcpiDbSetOutputDestination(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
