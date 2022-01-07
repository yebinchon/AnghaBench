; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_parse_prw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_parse_prw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_prw_data = type { i32, %struct.TYPE_11__*, i32, i32*, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_PRW\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ACPI_PRW_MAX_POWERRES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"ACPI device %s has too many power resources\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_parse_prw(i32* %0, %struct.acpi_prw_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.acpi_prw_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.acpi_prw_data* %1, %struct.acpi_prw_data** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load %struct.acpi_prw_data*, %struct.acpi_prw_data** %5, align 8
  %17 = icmp eq %struct.acpi_prw_data* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %2
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %157

20:                                               ; preds = %15
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %10, align 4
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  store i32* null, i32** %22, align 8
  %23 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @AcpiEvaluateObject(i32* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.TYPE_12__* %7)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @ACPI_FAILURE(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* @ENOENT, align 4
  store i32 %31, i32* %3, align 4
  br label %157

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = bitcast i32* %34 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %8, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %37 = icmp eq %struct.TYPE_11__* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @ENOENT, align 4
  store i32 %39, i32* %3, align 4
  br label %157

40:                                               ; preds = %32
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %42 = call i32 @ACPI_PKG_VALID(%struct.TYPE_11__* %41, i32 2)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  br label %147

45:                                               ; preds = %40
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %47 = load %struct.acpi_prw_data*, %struct.acpi_prw_data** %5, align 8
  %48 = getelementptr inbounds %struct.acpi_prw_data, %struct.acpi_prw_data* %47, i32 0, i32 4
  %49 = call i64 @acpi_PkgInt32(%struct.TYPE_11__* %46, i32 1, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %147

52:                                               ; preds = %45
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %105 [
    i32 129, label %60
    i32 128, label %73
  ]

60:                                               ; preds = %52
  %61 = load %struct.acpi_prw_data*, %struct.acpi_prw_data** %5, align 8
  %62 = getelementptr inbounds %struct.acpi_prw_data, %struct.acpi_prw_data* %61, i32 0, i32 3
  store i32* null, i32** %62, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.acpi_prw_data*, %struct.acpi_prw_data** %5, align 8
  %72 = getelementptr inbounds %struct.acpi_prw_data, %struct.acpi_prw_data* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  store i32 0, i32* %10, align 4
  br label %106

73:                                               ; preds = %52
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i64 0
  store %struct.TYPE_11__* %78, %struct.TYPE_11__** %9, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %80 = call i32 @ACPI_PKG_VALID(%struct.TYPE_11__* %79, i32 2)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %73
  br label %147

83:                                               ; preds = %73
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i64 0
  %89 = call i32* @acpi_GetReference(i32* null, %struct.TYPE_11__* %88)
  %90 = load %struct.acpi_prw_data*, %struct.acpi_prw_data** %5, align 8
  %91 = getelementptr inbounds %struct.acpi_prw_data, %struct.acpi_prw_data* %90, i32 0, i32 3
  store i32* %89, i32** %91, align 8
  %92 = load %struct.acpi_prw_data*, %struct.acpi_prw_data** %5, align 8
  %93 = getelementptr inbounds %struct.acpi_prw_data, %struct.acpi_prw_data* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %83
  br label %147

97:                                               ; preds = %83
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %99 = load %struct.acpi_prw_data*, %struct.acpi_prw_data** %5, align 8
  %100 = getelementptr inbounds %struct.acpi_prw_data, %struct.acpi_prw_data* %99, i32 0, i32 2
  %101 = call i64 @acpi_PkgInt32(%struct.TYPE_11__* %98, i32 1, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %147

104:                                              ; preds = %97
  store i32 0, i32* %10, align 4
  br label %106

105:                                              ; preds = %52
  br label %147

106:                                              ; preds = %104, %60
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 %110, 2
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @ACPI_PRW_MAX_POWERRES, align 4
  %114 = icmp sgt i32 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %106
  %116 = load i32*, i32** %4, align 8
  %117 = call i8* @acpi_name(i32* %116)
  %118 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %117)
  store i32 0, i32* %12, align 4
  br label %119

119:                                              ; preds = %115, %106
  %120 = load i32, i32* %12, align 4
  %121 = load %struct.acpi_prw_data*, %struct.acpi_prw_data** %5, align 8
  %122 = getelementptr inbounds %struct.acpi_prw_data, %struct.acpi_prw_data* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  store i32 0, i32* %11, align 4
  br label %123

123:                                              ; preds = %143, %119
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %146

127:                                              ; preds = %123
  %128 = load %struct.acpi_prw_data*, %struct.acpi_prw_data** %5, align 8
  %129 = getelementptr inbounds %struct.acpi_prw_data, %struct.acpi_prw_data* %128, i32 0, i32 1
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i64 %132
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i64 %139
  %141 = bitcast %struct.TYPE_11__* %133 to i8*
  %142 = bitcast %struct.TYPE_11__* %140 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %141, i8* align 8 %142, i64 32, i1 false)
  br label %143

143:                                              ; preds = %127
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %11, align 4
  br label %123

146:                                              ; preds = %123
  br label %147

147:                                              ; preds = %146, %105, %103, %96, %82, %51, %44
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @AcpiOsFree(i32* %153)
  br label %155

155:                                              ; preds = %151, %147
  %156 = load i32, i32* %10, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %155, %38, %30, %18
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @AcpiEvaluateObject(i32*, i8*, i32*, %struct.TYPE_12__*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_PKG_VALID(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @acpi_PkgInt32(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32* @acpi_GetReference(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @acpi_name(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @AcpiOsFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
