; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbcmds.c_AcpiDbDisplayInterfaces.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbcmds.c_AcpiDbDisplayInterfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, %struct.TYPE_3__* }

@AcpiGbl_OsiMutex = common dso_local global i32 0, align 4
@ACPI_WAIT_FOREVER = common dso_local global i32 0, align 4
@AcpiGbl_SupportedInterfaces = common dso_local global %struct.TYPE_3__* null, align 8
@ACPI_OSI_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Missing Interface Name argument\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"INSTALL\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%s, while installing \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"REMOVE\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"%s, while removing \22%s\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Invalid action argument: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiDbDisplayInterfaces(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %37, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @AcpiGbl_OsiMutex, align 4
  %12 = load i32, i32* @ACPI_WAIT_FOREVER, align 4
  %13 = call i32 @AcpiOsAcquireMutex(i32 %11, i32 %12)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @AcpiGbl_SupportedInterfaces, align 8
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %5, align 8
  br label %15

15:                                               ; preds = %30, %10
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ACPI_OSI_INVALID, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %25, %18
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %5, align 8
  br label %15

34:                                               ; preds = %15
  %35 = load i32, i32* @AcpiGbl_OsiMutex, align 4
  %36 = call i32 @AcpiOsReleaseMutex(i32 %35)
  br label %81

37:                                               ; preds = %2
  %38 = load i8*, i8** %4, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %81

42:                                               ; preds = %37
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @AcpiUtStrupr(i8* %43)
  %45 = load i8*, i8** %3, align 8
  %46 = call i8* @strstr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  store i8* %46, i8** %6, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %42
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @AcpiInstallInterface(i8* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @ACPI_FAILURE(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @AcpiFormatException(i32 %56)
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %57, i8* %58)
  br label %60

60:                                               ; preds = %55, %49
  br label %81

61:                                               ; preds = %42
  %62 = load i8*, i8** %3, align 8
  %63 = call i8* @strstr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %62)
  store i8* %63, i8** %6, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 @AcpiRemoveInterface(i8* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i64 @ACPI_FAILURE(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @AcpiFormatException(i32 %73)
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %74, i8* %75)
  br label %77

77:                                               ; preds = %72, %66
  br label %81

78:                                               ; preds = %61
  %79 = load i8*, i8** %3, align 8
  %80 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %78, %77, %60, %40, %34
  ret void
}

declare dso_local i32 @AcpiOsAcquireMutex(i32, i32) #1

declare dso_local i32 @AcpiOsPrintf(i8*, ...) #1

declare dso_local i32 @AcpiOsReleaseMutex(i32) #1

declare dso_local i32 @AcpiUtStrupr(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @AcpiInstallInterface(i8*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiFormatException(i32) #1

declare dso_local i32 @AcpiRemoveInterface(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
