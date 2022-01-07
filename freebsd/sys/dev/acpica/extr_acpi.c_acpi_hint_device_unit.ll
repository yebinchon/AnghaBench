; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_hint_device_unit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_hint_device_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"at\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"acpi0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"acpi\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"isa0\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"isa\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"fdc\00", align 1
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"maddr\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"drq\00", align 1
@SYS_RES_DRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i32*)* @acpi_hint_device_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_hint_device_unit(i32 %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %120, %111, %95, %75, %59, %37, %4
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @resource_find_dev(i32* %11, i8* %15, i32* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* null)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %121

18:                                               ; preds = %14
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %13, align 4
  %21 = call i32 @resource_string_value(i8* %19, i32 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %9)
  %22 = load i8*, i8** %9, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %18
  %26 = load i8*, i8** %9, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %9, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = load i8*, i8** %9, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  br label %14

38:                                               ; preds = %33, %29, %25, %18
  store i32 0, i32* %12, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call i64 @resource_long_value(i8* %39, i32 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64* %10)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %38
  %44 = load i8*, i8** %7, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i64, i64* %10, align 8
  %49 = add nsw i64 %48, 2
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %47, %43
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @SYS_RES_IOPORT, align 4
  %53 = load i64, i64* %10, align 8
  %54 = call i64 @acpi_match_resource_hint(i32 %51, i32 %52, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %60

59:                                               ; preds = %50
  br label %14

60:                                               ; preds = %56
  br label %61

61:                                               ; preds = %60, %38
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i64 @resource_long_value(i8* %62, i32 %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64* %10)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @SYS_RES_MEMORY, align 4
  %69 = load i64, i64* %10, align 8
  %70 = call i64 @acpi_match_resource_hint(i32 %67, i32 %68, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  br label %76

75:                                               ; preds = %66
  br label %14

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %76, %61
  %78 = load i32, i32* %12, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %114

81:                                               ; preds = %77
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i64 @resource_long_value(i8* %82, i32 %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64* %10)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %81
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @SYS_RES_IRQ, align 4
  %89 = load i64, i64* %10, align 8
  %90 = call i64 @acpi_match_resource_hint(i32 %87, i32 %88, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %96

95:                                               ; preds = %86
  br label %14

96:                                               ; preds = %92
  br label %97

97:                                               ; preds = %96, %81
  %98 = load i8*, i8** %7, align 8
  %99 = load i32, i32* %13, align 4
  %100 = call i64 @resource_long_value(i8* %98, i32 %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i64* %10)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %97
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @SYS_RES_DRQ, align 4
  %105 = load i64, i64* %10, align 8
  %106 = call i64 @acpi_match_resource_hint(i32 %103, i32 %104, i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  br label %112

111:                                              ; preds = %102
  br label %14

112:                                              ; preds = %108
  br label %113

113:                                              ; preds = %112, %97
  br label %114

114:                                              ; preds = %113, %80
  %115 = load i32, i32* %12, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* %13, align 4
  %119 = load i32*, i32** %8, align 8
  store i32 %118, i32* %119, align 4
  br label %121

120:                                              ; preds = %114
  br label %14

121:                                              ; preds = %117, %14
  ret void
}

declare dso_local i64 @resource_find_dev(i32*, i8*, i32*, i8*, i32*) #1

declare dso_local i32 @resource_string_value(i8*, i32, i8*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @resource_long_value(i8*, i32, i8*, i64*) #1

declare dso_local i64 @acpi_match_resource_hint(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
