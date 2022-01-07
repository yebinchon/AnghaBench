; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmrestag.c_AcpiDmGetResourceTag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmrestag.c_AcpiDmGetResourceTag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@AcpiGbl_ResourceTags = common dso_local global i32** null, align 8
@ACPI_ADDRESS_TYPE_MEMORY_RANGE = common dso_local global i32 0, align 4
@AcpiDmMemoryFlagTags = common dso_local global i32* null, align 8
@ACPI_ADDRESS_TYPE_IO_RANGE = common dso_local global i32 0, align 4
@AcpiDmIoFlagTags = common dso_local global i32* null, align 8
@AML_RESOURCE_MAX_GPIOTYPE = common dso_local global i64 0, align 8
@AcpiGbl_GpioResourceTags = common dso_local global i32** null, align 8
@AML_RESOURCE_MAX_SERIALBUSTYPE = common dso_local global i64 0, align 8
@AcpiGbl_SerialResourceTags = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct.TYPE_9__*, i64)* @AcpiDmGetResourceTag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @AcpiDmGetResourceTag(i32 %0, %struct.TYPE_9__* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* null, i8** %9, align 8
  %10 = load i32**, i32*** @AcpiGbl_ResourceTags, align 8
  %11 = load i64, i64* %7, align 8
  %12 = getelementptr inbounds i32*, i32** %10, i64 %11
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %8, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %84 [
    i32 133, label %17
    i32 132, label %17
    i32 131, label %17
    i32 130, label %17
    i32 129, label %46
    i32 128, label %62
  ]

17:                                               ; preds = %3, %3, %3, %3
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ACPI_ADDRESS_TYPE_MEMORY_RANGE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = load i32*, i32** @AcpiDmMemoryFlagTags, align 8
  %27 = call i8* @AcpiDmSearchTagList(i32 %25, i32* %26)
  store i8* %27, i8** %9, align 8
  br label %40

28:                                               ; preds = %17
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ACPI_ADDRESS_TYPE_IO_RANGE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* %5, align 4
  %37 = load i32*, i32** @AcpiDmIoFlagTags, align 8
  %38 = call i8* @AcpiDmSearchTagList(i32 %36, i32* %37)
  store i8* %38, i8** %9, align 8
  br label %39

39:                                               ; preds = %35, %28
  br label %40

40:                                               ; preds = %39, %24
  %41 = load i8*, i8** %9, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i8*, i8** %9, align 8
  store i8* %44, i8** %4, align 8
  br label %94

45:                                               ; preds = %40
  br label %85

46:                                               ; preds = %3
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AML_RESOURCE_MAX_GPIOTYPE, align 8
  %52 = icmp ugt i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i8* null, i8** %4, align 8
  br label %94

54:                                               ; preds = %46
  %55 = load i32**, i32*** @AcpiGbl_GpioResourceTags, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i32*, i32** %55, i64 %59
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %8, align 8
  br label %85

62:                                               ; preds = %3
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %62
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @AML_RESOURCE_MAX_SERIALBUSTYPE, align 8
  %74 = icmp ugt i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68, %62
  store i8* null, i8** %4, align 8
  br label %94

76:                                               ; preds = %68
  %77 = load i32**, i32*** @AcpiGbl_SerialResourceTags, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32*, i32** %77, i64 %81
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %8, align 8
  br label %85

84:                                               ; preds = %3
  br label %85

85:                                               ; preds = %84, %76, %54, %45
  %86 = load i32*, i32** %8, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* %5, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = call i8* @AcpiDmSearchTagList(i32 %89, i32* %90)
  store i8* %91, i8** %9, align 8
  br label %92

92:                                               ; preds = %88, %85
  %93 = load i8*, i8** %9, align 8
  store i8* %93, i8** %4, align 8
  br label %94

94:                                               ; preds = %92, %75, %53, %43
  %95 = load i8*, i8** %4, align 8
  ret i8* %95
}

declare dso_local i8* @AcpiDmSearchTagList(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
