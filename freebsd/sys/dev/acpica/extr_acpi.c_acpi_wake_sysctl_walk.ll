; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_wake_sysctl_walk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_wake_sysctl_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_TEMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_PRW\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"wake\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@acpi_wake_set_sysctl = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Device set to wake the system\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @acpi_wake_sysctl_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_wake_sysctl_walk(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @device_get_children(i32 %10, i32** %7, i32* %6)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %14, %1
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* @M_TEMP, align 4
  %23 = call i32 @free(i32* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %71

26:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %64, %26
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %67

31:                                               ; preds = %27
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @acpi_wake_sysctl_walk(i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @device_is_attached(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %31
  br label %64

43:                                               ; preds = %31
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @acpi_get_handle(i32 %44)
  %46 = call i32 @AcpiEvaluateObject(i32 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @ACPI_SUCCESS(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %43
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @device_get_sysctl_ctx(i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @device_get_sysctl_tree(i32 %53)
  %55 = call i32 @SYSCTL_CHILDREN(i32 %54)
  %56 = load i32, i32* @OID_AUTO, align 4
  %57 = load i32, i32* @CTLTYPE_INT, align 4
  %58 = load i32, i32* @CTLFLAG_RW, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @acpi_wake_set_sysctl, align 4
  %62 = call i32 @SYSCTL_ADD_PROC(i32 %52, i32 %55, i32 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60, i32 0, i32 %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %63

63:                                               ; preds = %50, %43
  br label %64

64:                                               ; preds = %63, %42
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %27

67:                                               ; preds = %27
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* @M_TEMP, align 4
  %70 = call i32 @free(i32* %68, i32 %69)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %24
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @device_get_children(i32, i32**, i32*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @device_is_attached(i32) #1

declare dso_local i32 @AcpiEvaluateObject(i32, i8*, i32*, i32*) #1

declare dso_local i32 @acpi_get_handle(i32) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
