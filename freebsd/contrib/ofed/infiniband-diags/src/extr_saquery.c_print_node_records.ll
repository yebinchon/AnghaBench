; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_print_node_records.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_print_node_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa_handle = type { i32 }
%struct.query_params = type { i32 }
%struct.sa_query_result = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__, %struct.TYPE_8__, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32 }

@IB_SA_ATTR_NODERECORD = common dso_local global i32 0, align 4
@node_print_desc = common dso_local global i64 0, align 8
@ALL_DESC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"   LID \22name\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"================\0A\00", align 1
@NAME_OF_LID = common dso_local global i64 0, align 8
@requested_lid = common dso_local global i64 0, align 8
@NAME_OF_GUID = common dso_local global i64 0, align 8
@requested_guid = common dso_local global i64 0, align 8
@node_name_map = common dso_local global i32 0, align 4
@requested_name = common dso_local global i32 0, align 4
@UNIQUE_LID_ONLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sa_handle*, %struct.query_params*)* @print_node_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_node_records(%struct.sa_handle* %0, %struct.query_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sa_handle*, align 8
  %5 = alloca %struct.query_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sa_query_result, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i8*, align 8
  store %struct.sa_handle* %0, %struct.sa_handle** %4, align 8
  store %struct.query_params* %1, %struct.query_params** %5, align 8
  %14 = load %struct.sa_handle*, %struct.sa_handle** %4, align 8
  %15 = load i32, i32* @IB_SA_ATTR_NODERECORD, align 4
  %16 = call i32 @get_all_records(%struct.sa_handle* %14, i32 %15, %struct.sa_query_result* %8)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %130

21:                                               ; preds = %2
  %22 = load i64, i64* @node_print_desc, align 8
  %23 = load i64, i64* @ALL_DESC, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %21
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %124, %28
  %30 = load i32, i32* %6, align 4
  %31 = getelementptr inbounds %struct.sa_query_result, %struct.sa_query_result* %8, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ult i32 %30, %32
  br i1 %33, label %34, label %127

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.sa_query_result, %struct.sa_query_result* %8, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call %struct.TYPE_7__* @sa_get_query_rec(i32 %36, i32 %37)
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %9, align 8
  %39 = load i64, i64* @node_print_desc, align 8
  %40 = load i64, i64* @ALL_DESC, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %44 = call i32 @print_node_desc(%struct.TYPE_7__* %43)
  br label %123

45:                                               ; preds = %34
  %46 = load i64, i64* @node_print_desc, align 8
  %47 = load i64, i64* @NAME_OF_LID, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = load i64, i64* @requested_lid, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @cl_ntoh16(i32 %53)
  %55 = icmp eq i64 %50, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %58 = call i32 @print_node_record(%struct.TYPE_7__* %57)
  br label %59

59:                                               ; preds = %56, %49
  br label %122

60:                                               ; preds = %45
  %61 = load i64, i64* @node_print_desc, align 8
  %62 = load i64, i64* @NAME_OF_GUID, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %60
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  store %struct.TYPE_8__* %66, %struct.TYPE_8__** %10, align 8
  %67 = load i64, i64* @requested_guid, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @cl_ntoh64(i32 %70)
  %72 = icmp eq i64 %67, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %75 = call i32 @print_node_record(%struct.TYPE_7__* %74)
  br label %76

76:                                               ; preds = %73, %64
  br label %121

77:                                               ; preds = %60
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  store %struct.TYPE_8__* %79, %struct.TYPE_8__** %11, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store %struct.TYPE_9__* %81, %struct.TYPE_9__** %12, align 8
  %82 = load i32, i32* @node_name_map, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @cl_ntoh64(i32 %85)
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i8*
  %91 = call i8* @remap_node_name(i32 %82, i64 %86, i8* %90)
  store i8* %91, i8** %13, align 8
  %92 = load i32, i32* @requested_name, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %77
  %95 = load i32, i32* @requested_name, align 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to i8*
  %101 = call i64 @strncmp(i32 %95, i8* %100, i32 8)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %94
  %104 = load i32, i32* @requested_name, align 4
  %105 = load i8*, i8** %13, align 8
  %106 = call i64 @strncmp(i32 %104, i8* %105, i32 8)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %103, %94, %77
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %110 = call i32 @print_node_record(%struct.TYPE_7__* %109)
  %111 = load i64, i64* @node_print_desc, align 8
  %112 = load i64, i64* @UNIQUE_LID_ONLY, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = call i32 @sa_free_result_mad(%struct.sa_query_result* %8)
  %116 = call i32 @exit(i32 0) #3
  unreachable

117:                                              ; preds = %108
  br label %118

118:                                              ; preds = %117, %103
  %119 = load i8*, i8** %13, align 8
  %120 = call i32 @free(i8* %119)
  br label %121

121:                                              ; preds = %118, %76
  br label %122

122:                                              ; preds = %121, %59
  br label %123

123:                                              ; preds = %122, %42
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %6, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %6, align 4
  br label %29

127:                                              ; preds = %29
  %128 = call i32 @sa_free_result_mad(%struct.sa_query_result* %8)
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %127, %19
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @get_all_records(%struct.sa_handle*, i32, %struct.sa_query_result*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local %struct.TYPE_7__* @sa_get_query_rec(i32, i32) #1

declare dso_local i32 @print_node_desc(%struct.TYPE_7__*) #1

declare dso_local i64 @cl_ntoh16(i32) #1

declare dso_local i32 @print_node_record(%struct.TYPE_7__*) #1

declare dso_local i64 @cl_ntoh64(i32) #1

declare dso_local i8* @remap_node_name(i32, i64, i8*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @sa_free_result_mad(%struct.sa_query_result*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
