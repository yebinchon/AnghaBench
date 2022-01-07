; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn.c_osm_prtn_make_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn.c_osm_prtn_make_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Unable to create partition '%s' (0x%04x)\0A\00", align 1
@OSM_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"Duplicated partition definition: '%s' (0x%04x) prev name '%s'.  Will use it\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @osm_prtn_make_new(i32* %0, %struct.TYPE_11__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %10, align 8
  %12 = call i32 @cl_hton16(i32 -32769)
  %13 = load i32, i32* %9, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %4
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call %struct.TYPE_12__* @osm_prtn_find_by_name(%struct.TYPE_11__* %21, i8* %22)
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %10, align 8
  %24 = icmp ne %struct.TYPE_12__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %5, align 8
  br label %74

27:                                               ; preds = %20, %17
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %29 = call i32 @generate_pkey(%struct.TYPE_11__* %28)
  store i32 %29, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %5, align 8
  br label %74

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %4
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call %struct.TYPE_12__* @osm_prtn_new(i8* %34, i32 %35)
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %10, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %38 = icmp ne %struct.TYPE_12__* %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %33
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* @OSM_LOG_ERROR, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @cl_ntoh16(i32 %43)
  %45 = call i32 (i32*, i32, i8*, i8*, i32, ...) @OSM_LOG(i32* %40, i32 %41, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %42, i32 %44)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %5, align 8
  br label %74

46:                                               ; preds = %33
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = call i64 @cl_qmap_insert(i32* %48, i32 %51, i32* %53)
  %55 = inttoptr i64 %54 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %11, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %58 = icmp ne %struct.TYPE_12__* %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %46
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @cl_ntoh16(i32 %63)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i32*, i32, i8*, i8*, i32, ...) @OSM_LOG(i32* %60, i32 %61, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i8* %62, i32 %64, i32 %67)
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %70 = call i32 @osm_prtn_delete(%struct.TYPE_11__* %69, %struct.TYPE_12__** %10)
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %71, %struct.TYPE_12__** %10, align 8
  br label %72

72:                                               ; preds = %59, %46
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %73, %struct.TYPE_12__** %5, align 8
  br label %74

74:                                               ; preds = %72, %39, %31, %25
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  ret %struct.TYPE_12__* %75
}

declare dso_local i32 @cl_hton16(i32) #1

declare dso_local %struct.TYPE_12__* @osm_prtn_find_by_name(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @generate_pkey(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_12__* @osm_prtn_new(i8*, i32) #1

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, i8*, i32, ...) #1

declare dso_local i32 @cl_ntoh16(i32) #1

declare dso_local i64 @cl_qmap_insert(i32*, i32, i32*) #1

declare dso_local i32 @osm_prtn_delete(%struct.TYPE_11__*, %struct.TYPE_12__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
