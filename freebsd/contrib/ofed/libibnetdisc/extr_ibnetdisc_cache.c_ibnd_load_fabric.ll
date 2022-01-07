; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_ibnetdisc_cache.c_ibnd_load_fabric.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_ibnetdisc_cache.c_ibnd_load_fabric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"file parameter NULL\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"open: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"OOM: fabric_cache\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"OOM: fabric\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Cache invalid: cannot find from node\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ibnd_load_fabric(i8* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %10, align 8
  store i32 -1, i32* %11, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @IBND_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %127

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* @O_RDONLY, align 4
  %20 = call i32 @open(i8* %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 @strerror(i32 %23)
  %25 = call i32 (i8*, ...) @IBND_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  store i32* null, i32** %3, align 8
  br label %127

26:                                               ; preds = %17
  %27 = call i64 @malloc(i32 16)
  %28 = inttoptr i64 %27 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %8, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %30 = icmp ne %struct.TYPE_16__* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = call i32 (i8*, ...) @IBND_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %119

33:                                               ; preds = %26
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %35 = call i32 @memset(%struct.TYPE_16__* %34, i8 signext 0, i32 16)
  %36 = call %struct.TYPE_17__* (...) @allocate_fabric_internal()
  store %struct.TYPE_17__* %36, %struct.TYPE_17__** %9, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %38 = icmp ne %struct.TYPE_17__* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = call i32 (i8*, ...) @IBND_DEBUG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %119

41:                                               ; preds = %33
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  store %struct.TYPE_17__* %42, %struct.TYPE_17__** %44, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %47 = call i64 @_load_header_info(i32 %45, %struct.TYPE_16__* %46, i32* %6, i32* %7)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %119

50:                                               ; preds = %41
  store i32 0, i32* %12, align 4
  br label %51

51:                                               ; preds = %62, %50
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %58 = call i64 @_load_node(i32 %56, %struct.TYPE_16__* %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %119

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %12, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %51

65:                                               ; preds = %51
  store i32 0, i32* %12, align 4
  br label %66

66:                                               ; preds = %77, %65
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %66
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %73 = call i64 @_load_port(i32 %71, %struct.TYPE_16__* %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %119

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %12, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %12, align 4
  br label %66

80:                                               ; preds = %66
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call %struct.TYPE_15__* @_find_node(%struct.TYPE_16__* %81, i32 %84)
  store %struct.TYPE_15__* %85, %struct.TYPE_15__** %10, align 8
  %86 = icmp ne %struct.TYPE_15__* %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %80
  %88 = call i32 (i8*, ...) @IBND_DEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %119

89:                                               ; preds = %80
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 4
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %97 = call i64 @_rebuild_nodes(%struct.TYPE_16__* %96)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  br label %119

100:                                              ; preds = %89
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %102 = call i64 @_rebuild_ports(%struct.TYPE_16__* %101)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %119

105:                                              ; preds = %100
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = call i64 @group_nodes(%struct.TYPE_18__* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %119

111:                                              ; preds = %105
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %113 = call i32 @_destroy_ibnd_fabric_cache(%struct.TYPE_16__* %112)
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @close(i32 %114)
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = bitcast %struct.TYPE_18__* %117 to i32*
  store i32* %118, i32** %3, align 8
  br label %127

119:                                              ; preds = %110, %104, %99, %87, %75, %60, %49, %39, %31
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %121 = bitcast %struct.TYPE_17__* %120 to i32*
  %122 = call i32 @ibnd_destroy_fabric(i32* %121)
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %124 = call i32 @_destroy_ibnd_fabric_cache(%struct.TYPE_16__* %123)
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @close(i32 %125)
  store i32* null, i32** %3, align 8
  br label %127

127:                                              ; preds = %119, %111, %22, %15
  %128 = load i32*, i32** %3, align 8
  ret i32* %128
}

declare dso_local i32 @IBND_DEBUG(i8*, ...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i8 signext, i32) #1

declare dso_local %struct.TYPE_17__* @allocate_fabric_internal(...) #1

declare dso_local i64 @_load_header_info(i32, %struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i64 @_load_node(i32, %struct.TYPE_16__*) #1

declare dso_local i64 @_load_port(i32, %struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_15__* @_find_node(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @_rebuild_nodes(%struct.TYPE_16__*) #1

declare dso_local i64 @_rebuild_ports(%struct.TYPE_16__*) #1

declare dso_local i64 @group_nodes(%struct.TYPE_18__*) #1

declare dso_local i32 @_destroy_ibnd_fabric_cache(%struct.TYPE_16__*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ibnd_destroy_fabric(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
