; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/coresight/extr_coresight.c_coresight_get_ports.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/coresight/extr_coresight.c_coresight_get_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_platform_data = type { i32, i32, i32, i32 }
%struct.endpoint = type { i32, i32, i64, i32, i64 }

@.str = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"port@\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"endpoint\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"remote-endpoint\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@M_CORESIGHT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"slave-mode\00", align 1
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.coresight_platform_data*)* @coresight_get_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coresight_get_ports(i64 %0, %struct.coresight_platform_data* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.coresight_platform_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.endpoint*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.coresight_platform_data* %1, %struct.coresight_platform_data** %4, align 8
  %13 = load i64, i64* %3, align 8
  %14 = call i64 @ofw_bus_find_child(i64 %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* %5, align 8
  br label %21

19:                                               ; preds = %2
  %20 = load i64, i64* %3, align 8
  store i64 %20, i64* %5, align 8
  br label %21

21:                                               ; preds = %19, %17
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @OF_child(i64 %22)
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %104, %21
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %107

27:                                               ; preds = %24
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @OF_getprop_alloc(i64 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %104

33:                                               ; preds = %27
  %34 = load i8*, i8** %9, align 8
  %35 = call i64 @strcasecmp(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %9, align 8
  %39 = call i64 @strncasecmp(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %103

41:                                               ; preds = %37, %33
  store i32 -1, i32* %7, align 4
  %42 = load i64, i64* %6, align 8
  %43 = bitcast i32* %7 to i8*
  %44 = bitcast i8* %43 to i64*
  %45 = call i32 @OF_getencprop(i64 %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64* %44, i32 4)
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @ofw_bus_find_child(i64 %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %11, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %102

50:                                               ; preds = %41
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @OF_getencprop(i64 %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i64* %8, i32 8)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %104

56:                                               ; preds = %50
  %57 = load i32, i32* @M_CORESIGHT, align 4
  %58 = load i32, i32* @M_WAITOK, align 4
  %59 = load i32, i32* @M_ZERO, align 4
  %60 = or i32 %58, %59
  %61 = call %struct.endpoint* @malloc(i32 32, i32 %57, i32 %60)
  store %struct.endpoint* %61, %struct.endpoint** %12, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load %struct.endpoint*, %struct.endpoint** %12, align 8
  %64 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %63, i32 0, i32 4
  store i64 %62, i64* %64, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @OF_node_from_xref(i64 %65)
  %67 = load %struct.endpoint*, %struct.endpoint** %12, align 8
  %68 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load i64, i64* %3, align 8
  %70 = load %struct.endpoint*, %struct.endpoint** %12, align 8
  %71 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.endpoint*, %struct.endpoint** %12, align 8
  %74 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i64, i64* %11, align 8
  %76 = call i64 @OF_getproplen(i64 %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %77 = icmp sge i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %56
  %79 = load %struct.coresight_platform_data*, %struct.coresight_platform_data** %4, align 8
  %80 = getelementptr inbounds %struct.coresight_platform_data, %struct.coresight_platform_data* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = load %struct.endpoint*, %struct.endpoint** %12, align 8
  %84 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %83, i32 0, i32 1
  store i32 1, i32* %84, align 4
  br label %90

85:                                               ; preds = %56
  %86 = load %struct.coresight_platform_data*, %struct.coresight_platform_data** %4, align 8
  %87 = getelementptr inbounds %struct.coresight_platform_data, %struct.coresight_platform_data* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %85, %78
  %91 = load %struct.coresight_platform_data*, %struct.coresight_platform_data** %4, align 8
  %92 = getelementptr inbounds %struct.coresight_platform_data, %struct.coresight_platform_data* %91, i32 0, i32 0
  %93 = call i32 @mtx_lock(i32* %92)
  %94 = load %struct.coresight_platform_data*, %struct.coresight_platform_data** %4, align 8
  %95 = getelementptr inbounds %struct.coresight_platform_data, %struct.coresight_platform_data* %94, i32 0, i32 1
  %96 = load %struct.endpoint*, %struct.endpoint** %12, align 8
  %97 = load i32, i32* @link, align 4
  %98 = call i32 @TAILQ_INSERT_TAIL(i32* %95, %struct.endpoint* %96, i32 %97)
  %99 = load %struct.coresight_platform_data*, %struct.coresight_platform_data** %4, align 8
  %100 = getelementptr inbounds %struct.coresight_platform_data, %struct.coresight_platform_data* %99, i32 0, i32 0
  %101 = call i32 @mtx_unlock(i32* %100)
  br label %102

102:                                              ; preds = %90, %41
  br label %103

103:                                              ; preds = %102, %37
  br label %104

104:                                              ; preds = %103, %54, %32
  %105 = load i64, i64* %6, align 8
  %106 = call i64 @OF_peer(i64 %105)
  store i64 %106, i64* %6, align 8
  br label %24

107:                                              ; preds = %24
  ret i32 0
}

declare dso_local i64 @ofw_bus_find_child(i64, i8*) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32 @OF_getprop_alloc(i64, i8*, i8**) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @OF_getencprop(i64, i8*, i64*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local %struct.endpoint* @malloc(i32, i32, i32) #1

declare dso_local i32 @OF_node_from_xref(i64) #1

declare dso_local i64 @OF_getproplen(i64, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.endpoint*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @OF_peer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
