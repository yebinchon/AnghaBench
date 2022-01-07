; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosacpi.c_biosacpi_detect.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosacpi.c_biosacpi_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"0x%08x\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"hint.acpi.0.rsdp\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"acpi.rsdp\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"hint.acpi.0.revision\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"acpi.revision\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"hint.acpi.0.oem\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"acpi.oem\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"hint.acpi.0.rsdt\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"acpi.rsdt\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"0x%016llx\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"hint.acpi.0.xsdt\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"acpi.xsdt\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"hint.acpi.0.xsdt_length\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"acpi.xsdt_length\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @biosacpi_detect() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca [24 x i8], align 16
  %3 = alloca i32, align 4
  %4 = call %struct.TYPE_4__* (...) @biosacpi_find_rsdp()
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %1, align 8
  %5 = icmp eq %struct.TYPE_4__* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %70

7:                                                ; preds = %0
  %8 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %10 = call i32 @VTOP(%struct.TYPE_4__* %9)
  %11 = call i32 @sprintf(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 0
  %13 = call i32 @setenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %12, i32 1)
  %14 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 0
  %15 = call i32 @setenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %14, i32 1)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %7
  store i32 1, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %7
  %23 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 0
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %24)
  %26 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 0
  %27 = call i32 @setenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %26, i32 1)
  %28 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 0
  %29 = call i32 @setenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %28, i32 1)
  %30 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @strncpy(i8* %30, i32 %33, i32 4)
  %35 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 4
  store i8 0, i8* %35, align 4
  %36 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 0
  %37 = call i32 @setenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %36, i32 1)
  %38 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 0
  %39 = call i32 @setenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %38, i32 1)
  %40 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @sprintf(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 0
  %46 = call i32 @setenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %45, i32 1)
  %47 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 0
  %48 = call i32 @setenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %47, i32 1)
  %49 = load i32, i32* %3, align 4
  %50 = icmp sge i32 %49, 2
  br i1 %50, label %51, label %70

51:                                               ; preds = %22
  %52 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @sprintf(i8* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %55)
  %57 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 0
  %58 = call i32 @setenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* %57, i32 1)
  %59 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 0
  %60 = call i32 @setenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* %59, i32 1)
  %61 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @sprintf(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 0
  %67 = call i32 @setenv(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i8* %66, i32 1)
  %68 = getelementptr inbounds [24 x i8], [24 x i8]* %2, i64 0, i64 0
  %69 = call i32 @setenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* %68, i32 1)
  br label %70

70:                                               ; preds = %6, %51, %22
  ret void
}

declare dso_local %struct.TYPE_4__* @biosacpi_find_rsdp(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @VTOP(%struct.TYPE_4__*) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
