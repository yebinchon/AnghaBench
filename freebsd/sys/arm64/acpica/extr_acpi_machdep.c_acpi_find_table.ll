; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/acpica/extr_acpi_machdep.c_acpi_find_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/acpica/extr_acpi_machdep.c_acpi_find_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_9__ = type { i64*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"acpi\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"ACPI: Failed to map RSDP\0A\00", align 1
@ACPI_RSDP_XCHECKSUM_LENGTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"ACPI: RSDP failed extended checksum\0A\00", align 1
@ACPI_SIG_XSDT = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"ACPI: Failed to map XSDT\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"ACPI: No %s table found\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"%s: Found table at 0x%jx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_find_table(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = call i64 @resource_disabled(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %139

14:                                               ; preds = %1
  %15 = call i32 (...) @AcpiOsGetRootPointer()
  store i32 %15, i32* %4, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i64 0, i64* %2, align 8
  br label %139

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.TYPE_10__* @pmap_mapbios(i32 %19, i32 16)
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %5, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = icmp eq %struct.TYPE_10__* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i64, i64* @bootverbose, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %23
  store i64 0, i64* %2, align 8
  br label %139

29:                                               ; preds = %18
  store i64 0, i64* %8, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %32, 2
  br i1 %33, label %34, label %107

34:                                               ; preds = %29
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %107

39:                                               ; preds = %34
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = bitcast %struct.TYPE_10__* %40 to i32*
  %42 = load i32, i32* @ACPI_RSDP_XCHECKSUM_LENGTH, align 4
  %43 = call i64 @AcpiTbChecksum(i32* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i64, i64* @bootverbose, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %45
  store i64 0, i64* %2, align 8
  br label %139

51:                                               ; preds = %39
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i8*, i8** @ACPI_SIG_XSDT, align 8
  %56 = call %struct.TYPE_9__* @map_table(i64 %54, i32 2, i8* %55)
  store %struct.TYPE_9__* %56, %struct.TYPE_9__** %6, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = icmp eq %struct.TYPE_9__* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %51
  %60 = load i64, i64* @bootverbose, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %59
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = ptrtoint %struct.TYPE_10__* %65 to i32
  %67 = call i32 @pmap_unmapbios(i32 %66, i32 16)
  store i64 0, i64* %2, align 8
  br label %139

68:                                               ; preds = %51
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = sub i64 %73, 16
  %75 = udiv i64 %74, 4
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %77

77:                                               ; preds = %101, %68
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %104

81:                                               ; preds = %77
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load i8*, i8** %3, align 8
  %90 = call i64 @probe_table(i64 %88, i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %81
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %8, align 8
  br label %104

100:                                              ; preds = %81
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %77

104:                                              ; preds = %92, %77
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %106 = call i32 @acpi_unmap_table(%struct.TYPE_9__* %105)
  br label %107

107:                                              ; preds = %104, %34, %29
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %109 = ptrtoint %struct.TYPE_10__* %108 to i32
  %110 = call i32 @pmap_unmapbios(i32 %109, i32 16)
  %111 = load i64, i64* %8, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %107
  %114 = load i64, i64* @bootverbose, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i8*, i8** %3, align 8
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %117)
  br label %119

119:                                              ; preds = %116, %113
  store i64 0, i64* %2, align 8
  br label %139

120:                                              ; preds = %107
  %121 = load i64, i64* @bootverbose, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load i8*, i8** %3, align 8
  %125 = load i64, i64* %8, align 8
  %126 = trunc i64 %125 to i32
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %124, i32 %126)
  br label %128

128:                                              ; preds = %123, %120
  %129 = load i64, i64* %8, align 8
  %130 = load i8*, i8** %3, align 8
  %131 = call %struct.TYPE_9__* @map_table(i64 %129, i32 0, i8* %130)
  store %struct.TYPE_9__* %131, %struct.TYPE_9__** %7, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %133 = icmp eq %struct.TYPE_9__* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  store i64 0, i64* %2, align 8
  br label %139

135:                                              ; preds = %128
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %137 = call i32 @acpi_unmap_table(%struct.TYPE_9__* %136)
  %138 = load i64, i64* %8, align 8
  store i64 %138, i64* %2, align 8
  br label %139

139:                                              ; preds = %135, %134, %119, %64, %50, %28, %17, %13
  %140 = load i64, i64* %2, align 8
  ret i64 %140
}

declare dso_local i64 @resource_disabled(i8*, i32) #1

declare dso_local i32 @AcpiOsGetRootPointer(...) #1

declare dso_local %struct.TYPE_10__* @pmap_mapbios(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @AcpiTbChecksum(i32*, i32) #1

declare dso_local %struct.TYPE_9__* @map_table(i64, i32, i8*) #1

declare dso_local i32 @pmap_unmapbios(i32, i32) #1

declare dso_local i64 @probe_table(i64, i8*) #1

declare dso_local i32 @acpi_unmap_table(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
