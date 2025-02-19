; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_opensm.c_load_plugins.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_opensm.c_load_plugins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c", \09\0A\00", align 1
@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@FILE_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"ERR 1000: cannot load plugin '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*)* @load_plugins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_plugins(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @strdup(i8* %9)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i8* @strtok_r(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %8)
  store i8* %12, i8** %7, align 8
  br label %13

13:                                               ; preds = %42, %2
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i8*, i8** %7, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi i1 [ false, %13 ], [ %20, %16 ]
  br i1 %22, label %23, label %44

23:                                               ; preds = %21
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call %struct.TYPE_7__* @osm_epi_construct(%struct.TYPE_6__* %24, i8* %25)
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %5, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %23
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* @OSM_LOG_ERROR, align 4
  %33 = load i32, i32* @FILE_ID, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @osm_log_v2(i32* %31, i32 %32, i32 %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  br label %42

36:                                               ; preds = %23
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = call i32 @cl_qlist_insert_tail(i32* %38, i32* %40)
  br label %42

42:                                               ; preds = %36, %29
  %43 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %8)
  store i8* %43, i8** %7, align 8
  br label %13

44:                                               ; preds = %21
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @free(i8* %45)
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local %struct.TYPE_7__* @osm_epi_construct(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @osm_log_v2(i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @cl_qlist_insert_tail(i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
