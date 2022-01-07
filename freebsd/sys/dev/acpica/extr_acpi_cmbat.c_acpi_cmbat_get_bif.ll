; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_cmbat.c_acpi_cmbat_get_bif.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_cmbat.c_acpi_cmbat_get_bif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_cmbat_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32 }

@cmbat = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_BIF\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"error fetching current battery info -- %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"battery info corrupted\0A\00", align 1
@ACPI_CMBAT_MAXSTRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @acpi_cmbat_get_bif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_cmbat_get_bif(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.acpi_cmbat_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @cmbat, align 4
  %10 = call i32 @ACPI_SERIAL_ASSERT(i32 %9)
  %11 = load i8*, i8** %2, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call %struct.acpi_cmbat_softc* @device_get_softc(i8* %12)
  store %struct.acpi_cmbat_softc* %13, %struct.acpi_cmbat_softc** %3, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @acpi_get_handle(i8* %14)
  store i32 %15, i32* %6, align 4
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32* null, i32** %16, align 8
  %17 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @AcpiEvaluateObject(i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.TYPE_5__* %7)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @ACPI_FAILURE(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @acpi_device_get_parent_softc(i8* %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @AcpiFormatException(i32 %28)
  %30 = call i32 (i8*, i32, i8*, ...) @ACPI_VPRINT(i8* %25, i32 %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %155

31:                                               ; preds = %1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %5, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @ACPI_PKG_VALID(i32* %34, i32 13)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = load i8*, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @acpi_device_get_parent_softc(i8* %39)
  %41 = call i32 (i8*, i32, i8*, ...) @ACPI_VPRINT(i8* %38, i32 %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %155

42:                                               ; preds = %31
  %43 = load i32*, i32** %5, align 8
  %44 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %3, align 8
  %45 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 12
  %47 = call i64 @acpi_PkgInt32(i32* %43, i32 0, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %155

50:                                               ; preds = %42
  %51 = load i32*, i32** %5, align 8
  %52 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %3, align 8
  %53 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 11
  %55 = call i64 @acpi_PkgInt32(i32* %51, i32 1, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %155

58:                                               ; preds = %50
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %3, align 8
  %61 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 10
  %63 = call i64 @acpi_PkgInt32(i32* %59, i32 2, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %155

66:                                               ; preds = %58
  %67 = load i32*, i32** %5, align 8
  %68 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %3, align 8
  %69 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 9
  %71 = call i64 @acpi_PkgInt32(i32* %67, i32 3, i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %155

74:                                               ; preds = %66
  %75 = load i32*, i32** %5, align 8
  %76 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %3, align 8
  %77 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 8
  %79 = call i64 @acpi_PkgInt32(i32* %75, i32 4, i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %155

82:                                               ; preds = %74
  %83 = load i32*, i32** %5, align 8
  %84 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %3, align 8
  %85 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 7
  %87 = call i64 @acpi_PkgInt32(i32* %83, i32 5, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %155

90:                                               ; preds = %82
  %91 = load i32*, i32** %5, align 8
  %92 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %3, align 8
  %93 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 6
  %95 = call i64 @acpi_PkgInt32(i32* %91, i32 6, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %155

98:                                               ; preds = %90
  %99 = load i32*, i32** %5, align 8
  %100 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %3, align 8
  %101 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 5
  %103 = call i64 @acpi_PkgInt32(i32* %99, i32 7, i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %155

106:                                              ; preds = %98
  %107 = load i32*, i32** %5, align 8
  %108 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %3, align 8
  %109 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 4
  %111 = call i64 @acpi_PkgInt32(i32* %107, i32 8, i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %155

114:                                              ; preds = %106
  %115 = load i32*, i32** %5, align 8
  %116 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %3, align 8
  %117 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @ACPI_CMBAT_MAXSTRLEN, align 4
  %121 = call i64 @acpi_PkgStr(i32* %115, i32 9, i32 %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  br label %155

124:                                              ; preds = %114
  %125 = load i32*, i32** %5, align 8
  %126 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %3, align 8
  %127 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @ACPI_CMBAT_MAXSTRLEN, align 4
  %131 = call i64 @acpi_PkgStr(i32* %125, i32 10, i32 %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %124
  br label %155

134:                                              ; preds = %124
  %135 = load i32*, i32** %5, align 8
  %136 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %3, align 8
  %137 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @ACPI_CMBAT_MAXSTRLEN, align 4
  %141 = call i64 @acpi_PkgStr(i32* %135, i32 11, i32 %139, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %134
  br label %155

144:                                              ; preds = %134
  %145 = load i32*, i32** %5, align 8
  %146 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %3, align 8
  %147 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @ACPI_CMBAT_MAXSTRLEN, align 4
  %151 = call i64 @acpi_PkgStr(i32* %145, i32 12, i32 %149, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %144
  br label %155

154:                                              ; preds = %144
  br label %155

155:                                              ; preds = %154, %153, %143, %133, %123, %113, %105, %97, %89, %81, %73, %65, %57, %49, %37, %24
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 @AcpiOsFree(i32* %161)
  br label %163

163:                                              ; preds = %159, %155
  ret void
}

declare dso_local i32 @ACPI_SERIAL_ASSERT(i32) #1

declare dso_local %struct.acpi_cmbat_softc* @device_get_softc(i8*) #1

declare dso_local i32 @acpi_get_handle(i8*) #1

declare dso_local i32 @AcpiEvaluateObject(i32, i8*, i32*, %struct.TYPE_5__*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_VPRINT(i8*, i32, i8*, ...) #1

declare dso_local i32 @acpi_device_get_parent_softc(i8*) #1

declare dso_local i32 @AcpiFormatException(i32) #1

declare dso_local i32 @ACPI_PKG_VALID(i32*, i32) #1

declare dso_local i64 @acpi_PkgInt32(i32*, i32, i32*) #1

declare dso_local i64 @acpi_PkgStr(i32*, i32, i32, i32) #1

declare dso_local i32 @AcpiOsFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
