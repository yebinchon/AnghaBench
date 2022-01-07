; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_devpath.c_efi_acpi_dev_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_devpath.c_efi_acpi_dev_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@PNP_EISA_ID_MASK = common dso_local global i32 0, align 4
@PNP_EISA_ID_CONST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"PciRoot(%x)%s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"PcieRoot(%x)%s\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Floppy(%x)%s\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Keyboard(%x)%s\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Serial(%x)%s\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"ParallelPort(%x)%s\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Acpi(PNP%04x,%x)%s\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Acpi(%08x,%x)%s\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"UnknownACPI(%x)%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*)* @efi_acpi_dev_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @efi_acpi_dev_path(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @DevicePathSubType(i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @efi_make_tail(i8* %13)
  store i8* %14, i8** %8, align 8
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %111 [
    i32 129, label %16
    i32 128, label %110
  ]

16:                                               ; preds = %2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PNP_EISA_ID_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @PNP_EISA_ID_CONST, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %97

24:                                               ; preds = %16
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @EISA_ID_TO_NUM(i32 %27)
  switch i32 %28, label %83 [
    i32 2563, label %29
    i32 2568, label %38
    i32 1540, label %47
    i32 769, label %56
    i32 1281, label %65
    i32 1025, label %74
  ]

29:                                               ; preds = %24
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 (i8**, i8*, i32, ...) @asprintf(i8** %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %32, i8* %33)
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i8* null, i8** %7, align 8
  br label %37

37:                                               ; preds = %36, %29
  br label %96

38:                                               ; preds = %24
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 (i8**, i8*, i32, ...) @asprintf(i8** %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %41, i8* %42)
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i8* null, i8** %7, align 8
  br label %46

46:                                               ; preds = %45, %38
  br label %96

47:                                               ; preds = %24
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 (i8**, i8*, i32, ...) @asprintf(i8** %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %50, i8* %51)
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i8* null, i8** %7, align 8
  br label %55

55:                                               ; preds = %54, %47
  br label %96

56:                                               ; preds = %24
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 (i8**, i8*, i32, ...) @asprintf(i8** %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %59, i8* %60)
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i8* null, i8** %7, align 8
  br label %64

64:                                               ; preds = %63, %56
  br label %96

65:                                               ; preds = %24
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 (i8**, i8*, i32, ...) @asprintf(i8** %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %68, i8* %69)
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i8* null, i8** %7, align 8
  br label %73

73:                                               ; preds = %72, %65
  br label %96

74:                                               ; preds = %24
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 (i8**, i8*, i32, ...) @asprintf(i8** %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %77, i8* %78)
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  store i8* null, i8** %7, align 8
  br label %82

82:                                               ; preds = %81, %74
  br label %96

83:                                               ; preds = %24
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @EISA_ID_TO_NUM(i32 %86)
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 (i8**, i8*, i32, ...) @asprintf(i8** %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %87, i32 %90, i8* %91)
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  store i8* null, i8** %7, align 8
  br label %95

95:                                               ; preds = %94, %83
  br label %96

96:                                               ; preds = %95, %82, %73, %64, %55, %46, %37
  br label %109

97:                                               ; preds = %16
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 (i8**, i8*, i32, ...) @asprintf(i8** %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %100, i32 %103, i8* %104)
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  store i8* null, i8** %7, align 8
  br label %108

108:                                              ; preds = %107, %97
  br label %109

109:                                              ; preds = %108, %96
  br label %118

110:                                              ; preds = %2
  br label %111

111:                                              ; preds = %2, %110
  %112 = load i32, i32* %5, align 4
  %113 = load i8*, i8** %8, align 8
  %114 = call i32 (i8**, i8*, i32, ...) @asprintf(i8** %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %112, i8* %113)
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  store i8* null, i8** %7, align 8
  br label %117

117:                                              ; preds = %116, %111
  br label %118

118:                                              ; preds = %117, %109
  %119 = load i8*, i8** %8, align 8
  %120 = call i32 @free(i8* %119)
  %121 = load i8*, i8** %7, align 8
  ret i8* %121
}

declare dso_local i32 @DevicePathSubType(i32*) #1

declare dso_local i8* @efi_make_tail(i8*) #1

declare dso_local i32 @EISA_ID_TO_NUM(i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i32, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
