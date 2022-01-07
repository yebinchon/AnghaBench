; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbstats.c_AcpiDbEnumerateObject.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbstats.c_AcpiDbEnumerateObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_17__ = type { %struct.TYPE_18__*, %struct.TYPE_18__** }
%struct.TYPE_16__ = type { %struct.TYPE_18__*, %struct.TYPE_18__** }
%struct.TYPE_15__ = type { %struct.TYPE_18__** }
%struct.TYPE_14__ = type { %struct.TYPE_18__* }
%struct.TYPE_13__ = type { %struct.TYPE_18__*, %struct.TYPE_18__** }
%struct.TYPE_12__ = type { i64, %struct.TYPE_18__** }
%struct.TYPE_11__ = type { i64 }

@AcpiGbl_NumObjects = common dso_local global i32 0, align 4
@ACPI_TYPE_NS_NODE_MAX = common dso_local global i64 0, align 8
@AcpiGbl_ObjTypeCountMisc = common dso_local global i32 0, align 4
@AcpiGbl_ObjTypeCount = common dso_local global i32* null, align 8
@ACPI_TYPE_LOCAL_REGION_FIELD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @AcpiDbEnumerateObject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AcpiDbEnumerateObject(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %4 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %5 = icmp ne %struct.TYPE_18__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %138

7:                                                ; preds = %1
  %8 = load i32, i32* @AcpiGbl_NumObjects, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @AcpiGbl_NumObjects, align 4
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 6
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ACPI_TYPE_NS_NODE_MAX, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %7
  %17 = load i32, i32* @AcpiGbl_ObjTypeCountMisc, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @AcpiGbl_ObjTypeCountMisc, align 4
  br label %28

19:                                               ; preds = %7
  %20 = load i32*, i32** @AcpiGbl_ObjTypeCount, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 6
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %19, %16
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  switch i64 %32, label %137 [
    i64 132, label %33
    i64 133, label %53
    i64 134, label %70
    i64 129, label %80
    i64 131, label %90
    i64 130, label %103
    i64 128, label %120
  ]

33:                                               ; preds = %28
  store i64 0, i64* %3, align 8
  br label %34

34:                                               ; preds = %49, %33
  %35 = load i64, i64* %3, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %35, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %34
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %44, align 8
  %46 = load i64, i64* %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %45, i64 %46
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %47, align 8
  call void @AcpiDbEnumerateObject(%struct.TYPE_18__* %48)
  br label %49

49:                                               ; preds = %41
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %3, align 8
  br label %34

52:                                               ; preds = %34
  br label %138

53:                                               ; preds = %28
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %57, i64 0
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %58, align 8
  call void @AcpiDbEnumerateObject(%struct.TYPE_18__* %59)
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %63, i64 1
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %64, align 8
  call void @AcpiDbEnumerateObject(%struct.TYPE_18__* %65)
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %68, align 8
  call void @AcpiDbEnumerateObject(%struct.TYPE_18__* %69)
  br label %138

70:                                               ; preds = %28
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %72 = call i32 @AcpiNsGetSecondaryObject(%struct.TYPE_18__* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load i32*, i32** @AcpiGbl_ObjTypeCount, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 134
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %74, %70
  br label %138

80:                                               ; preds = %28
  %81 = load i32*, i32** @AcpiGbl_ObjTypeCount, align 8
  %82 = load i64, i64* @ACPI_TYPE_LOCAL_REGION_FIELD, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %88, align 8
  call void @AcpiDbEnumerateObject(%struct.TYPE_18__* %89)
  br label %138

90:                                               ; preds = %28
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %94, i64 0
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %95, align 8
  call void @AcpiDbEnumerateObject(%struct.TYPE_18__* %96)
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %100, i64 1
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %101, align 8
  call void @AcpiDbEnumerateObject(%struct.TYPE_18__* %102)
  br label %138

103:                                              ; preds = %28
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %107, i64 0
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %108, align 8
  call void @AcpiDbEnumerateObject(%struct.TYPE_18__* %109)
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %113, i64 1
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %114, align 8
  call void @AcpiDbEnumerateObject(%struct.TYPE_18__* %115)
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %118, align 8
  call void @AcpiDbEnumerateObject(%struct.TYPE_18__* %119)
  br label %138

120:                                              ; preds = %28
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %124, i64 0
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %125, align 8
  call void @AcpiDbEnumerateObject(%struct.TYPE_18__* %126)
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %130, i64 1
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %131, align 8
  call void @AcpiDbEnumerateObject(%struct.TYPE_18__* %132)
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %135, align 8
  call void @AcpiDbEnumerateObject(%struct.TYPE_18__* %136)
  br label %138

137:                                              ; preds = %28
  br label %138

138:                                              ; preds = %6, %137, %120, %103, %90, %80, %79, %53, %52
  ret void
}

declare dso_local i32 @AcpiNsGetSecondaryObject(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
