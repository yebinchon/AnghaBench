; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_iblinkinfo.c_diff_node_iter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_iblinkinfo.c_diff_node_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i32, i32 }
%struct.iter_diff_data = type { i8*, i32, i8*, i32 }

@.str = private unnamed_addr constant [24 x i8] c"DEBUG: fabric1_node %p\0A\00", align 1
@DIFF_FLAG_PORT_CONNECTION = common dso_local global i32 0, align 4
@DIFF_FLAG_PORT_STATE = common dso_local global i32 0, align 4
@DIFF_FLAG_LID = common dso_local global i32 0, align 4
@DIFF_FLAG_NODE_DESCRIPTION = common dso_local global i32 0, align 4
@IB_NODE_SWITCH = common dso_local global i64 0, align 8
@IB_SMP_DATA_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"%snumports = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @diff_node_iter(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iter_diff_data*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.iter_diff_data*
  store %struct.iter_diff_data* %9, %struct.iter_diff_data** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = call i32 @DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %10)
  %12 = load %struct.iter_diff_data*, %struct.iter_diff_data** %5, align 8
  %13 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_9__* @ibnd_find_node_guid(i32 %14, i32 %17)
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %6, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = icmp ne %struct.TYPE_9__* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = load %struct.iter_diff_data*, %struct.iter_diff_data** %5, align 8
  %24 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @print_node(%struct.TYPE_9__* %22, i8* %25)
  br label %122

27:                                               ; preds = %2
  %28 = load %struct.iter_diff_data*, %struct.iter_diff_data** %5, align 8
  %29 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @DIFF_FLAG_PORT_CONNECTION, align 4
  %32 = load i32, i32* @DIFF_FLAG_PORT_STATE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @DIFF_FLAG_LID, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @DIFF_FLAG_NODE_DESCRIPTION, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %30, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %121

40:                                               ; preds = %27
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @IB_NODE_SWITCH, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %40
  %47 = load %struct.iter_diff_data*, %struct.iter_diff_data** %5, align 8
  %48 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @DIFF_FLAG_LID, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %78, label %61

61:                                               ; preds = %53, %46, %40
  %62 = load %struct.iter_diff_data*, %struct.iter_diff_data** %5, align 8
  %63 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @DIFF_FLAG_NODE_DESCRIPTION, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %61
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @IB_SMP_DATA_SIZE, align 4
  %76 = call i64 @memcmp(i32 %71, i32 %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %68, %53
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = load %struct.iter_diff_data*, %struct.iter_diff_data** %5, align 8
  %81 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @print_node_header(%struct.TYPE_9__* %79, i32* null, i8* %82)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %85 = load %struct.iter_diff_data*, %struct.iter_diff_data** %5, align 8
  %86 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @print_node_header(%struct.TYPE_9__* %84, i32* null, i8* %87)
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %78, %68, %61
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %94, %97
  br i1 %98, label %99, label %116

99:                                               ; preds = %91
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %101 = call i32 @print_node_header(%struct.TYPE_9__* %100, i32* %7, i8* null)
  %102 = load %struct.iter_diff_data*, %struct.iter_diff_data** %5, align 8
  %103 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %104, i64 %107)
  %109 = load %struct.iter_diff_data*, %struct.iter_diff_data** %5, align 8
  %110 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %111, i64 %114)
  br label %122

116:                                              ; preds = %91
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %119 = load %struct.iter_diff_data*, %struct.iter_diff_data** %5, align 8
  %120 = call i32 @diff_node_ports(%struct.TYPE_9__* %117, %struct.TYPE_9__* %118, i32* %7, %struct.iter_diff_data* %119)
  br label %121

121:                                              ; preds = %116, %27
  br label %122

122:                                              ; preds = %99, %121, %21
  ret void
}

declare dso_local i32 @DEBUG(i8*, %struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @ibnd_find_node_guid(i32, i32) #1

declare dso_local i32 @print_node(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @print_node_header(%struct.TYPE_9__*, i32*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i64) #1

declare dso_local i32 @diff_node_ports(%struct.TYPE_9__*, %struct.TYPE_9__*, i32*, %struct.iter_diff_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
