; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_ratelimit_inc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_ratelimit_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.infra_cache = type { i32 }
%struct.query_info = type { i32, i32, i32* }
%struct.comm_reply = type { i32, i32 }
%struct.lruhash_entry = type { i32, i32 }
%struct.sockaddr_storage = type { i32 }

@infra_dp_ratelimit = common dso_local global i32 0, align 4
@VERB_OPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"ratelimit exceeded %s %d query %s %s %s from %s\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"ratelimit exceeded %s %d query %s %s %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @infra_ratelimit_inc(%struct.infra_cache* %0, i32* %1, i64 %2, i32 %3, %struct.query_info* %4, %struct.comm_reply* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.infra_cache*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.query_info*, align 8
  %13 = alloca %struct.comm_reply*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.lruhash_entry*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca [257 x i8], align 16
  %20 = alloca [257 x i8], align 16
  %21 = alloca [12 x i8], align 1
  %22 = alloca [12 x i8], align 1
  %23 = alloca [128 x i8], align 16
  store %struct.infra_cache* %0, %struct.infra_cache** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.query_info* %4, %struct.query_info** %12, align 8
  store %struct.comm_reply* %5, %struct.comm_reply** %13, align 8
  %24 = load i32, i32* @infra_dp_ratelimit, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %133

27:                                               ; preds = %6
  %28 = load %struct.infra_cache*, %struct.infra_cache** %8, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @infra_find_ratelimit(%struct.infra_cache* %28, i32* %29, i64 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32 1, i32* %7, align 4
  br label %133

35:                                               ; preds = %27
  %36 = load %struct.infra_cache*, %struct.infra_cache** %8, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call %struct.lruhash_entry* @infra_find_ratedata(%struct.infra_cache* %36, i32* %37, i64 %38, i32 1)
  store %struct.lruhash_entry* %39, %struct.lruhash_entry** %16, align 8
  %40 = load %struct.lruhash_entry*, %struct.lruhash_entry** %16, align 8
  %41 = icmp ne %struct.lruhash_entry* %40, null
  br i1 %41, label %42, label %124

42:                                               ; preds = %35
  %43 = load %struct.lruhash_entry*, %struct.lruhash_entry** %16, align 8
  %44 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @infra_rate_max(i32 %45, i32 %46)
  store i32 %47, i32* %17, align 4
  %48 = load %struct.lruhash_entry*, %struct.lruhash_entry** %16, align 8
  %49 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32* @infra_rate_find_second(i32 %50, i32 %51)
  store i32* %52, i32** %18, align 8
  %53 = load i32*, i32** %18, align 8
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.lruhash_entry*, %struct.lruhash_entry** %16, align 8
  %57 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @infra_rate_max(i32 %58, i32 %59)
  store i32 %60, i32* %15, align 4
  %61 = load %struct.lruhash_entry*, %struct.lruhash_entry** %16, align 8
  %62 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %61, i32 0, i32 0
  %63 = call i32 @lock_rw_unlock(i32* %62)
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %119

67:                                               ; preds = %42
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %119

71:                                               ; preds = %67
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds [257 x i8], [257 x i8]* %19, i64 0, i64 0
  %74 = call i32 @dname_str(i32* %72, i8* %73)
  %75 = load %struct.query_info*, %struct.query_info** %12, align 8
  %76 = getelementptr inbounds %struct.query_info, %struct.query_info* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds [257 x i8], [257 x i8]* %20, i64 0, i64 0
  %79 = call i32 @dname_str(i32* %77, i8* %78)
  %80 = load %struct.query_info*, %struct.query_info** %12, align 8
  %81 = getelementptr inbounds %struct.query_info, %struct.query_info* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds [12 x i8], [12 x i8]* %21, i64 0, i64 0
  %84 = call i32 @sldns_wire2str_type_buf(i32 %82, i8* %83, i32 12)
  %85 = load %struct.query_info*, %struct.query_info** %12, align 8
  %86 = getelementptr inbounds %struct.query_info, %struct.query_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %89 = call i32 @sldns_wire2str_class_buf(i32 %87, i8* %88, i32 12)
  %90 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  store i8 0, i8* %90, align 16
  %91 = load %struct.comm_reply*, %struct.comm_reply** %13, align 8
  %92 = icmp ne %struct.comm_reply* %91, null
  br i1 %92, label %93, label %110

93:                                               ; preds = %71
  %94 = load %struct.comm_reply*, %struct.comm_reply** %13, align 8
  %95 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %94, i32 0, i32 1
  %96 = bitcast i32* %95 to %struct.sockaddr_storage*
  %97 = load %struct.comm_reply*, %struct.comm_reply** %13, align 8
  %98 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %101 = call i32 @addr_to_str(%struct.sockaddr_storage* %96, i32 %99, i8* %100, i32 128)
  %102 = load i32, i32* @VERB_OPS, align 4
  %103 = getelementptr inbounds [257 x i8], [257 x i8]* %19, i64 0, i64 0
  %104 = load i32, i32* %14, align 4
  %105 = getelementptr inbounds [257 x i8], [257 x i8]* %20, i64 0, i64 0
  %106 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %107 = getelementptr inbounds [12 x i8], [12 x i8]* %21, i64 0, i64 0
  %108 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %109 = call i32 (i32, i8*, i8*, i32, i8*, i8*, i8*, ...) @verbose(i32 %102, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %103, i32 %104, i8* %105, i8* %106, i8* %107, i8* %108)
  br label %118

110:                                              ; preds = %71
  %111 = load i32, i32* @VERB_OPS, align 4
  %112 = getelementptr inbounds [257 x i8], [257 x i8]* %19, i64 0, i64 0
  %113 = load i32, i32* %14, align 4
  %114 = getelementptr inbounds [257 x i8], [257 x i8]* %20, i64 0, i64 0
  %115 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %116 = getelementptr inbounds [12 x i8], [12 x i8]* %21, i64 0, i64 0
  %117 = call i32 (i32, i8*, i8*, i32, i8*, i8*, i8*, ...) @verbose(i32 %111, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %112, i32 %113, i8* %114, i8* %115, i8* %116)
  br label %118

118:                                              ; preds = %110, %93
  br label %119

119:                                              ; preds = %118, %67, %42
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %14, align 4
  %122 = icmp slt i32 %120, %121
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %7, align 4
  br label %133

124:                                              ; preds = %35
  %125 = load %struct.infra_cache*, %struct.infra_cache** %8, align 8
  %126 = load i32*, i32** %9, align 8
  %127 = load i64, i64* %10, align 8
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @infra_create_ratedata(%struct.infra_cache* %125, i32* %126, i64 %127, i32 %128)
  %130 = load i32, i32* %14, align 4
  %131 = icmp slt i32 1, %130
  %132 = zext i1 %131 to i32
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %124, %119, %34, %26
  %134 = load i32, i32* %7, align 4
  ret i32 %134
}

declare dso_local i32 @infra_find_ratelimit(%struct.infra_cache*, i32*, i64) #1

declare dso_local %struct.lruhash_entry* @infra_find_ratedata(%struct.infra_cache*, i32*, i64, i32) #1

declare dso_local i32 @infra_rate_max(i32, i32) #1

declare dso_local i32* @infra_rate_find_second(i32, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @dname_str(i32*, i8*) #1

declare dso_local i32 @sldns_wire2str_type_buf(i32, i8*, i32) #1

declare dso_local i32 @sldns_wire2str_class_buf(i32, i8*, i32) #1

declare dso_local i32 @addr_to_str(%struct.sockaddr_storage*, i32, i8*, i32) #1

declare dso_local i32 @verbose(i32, i8*, i8*, i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @infra_create_ratedata(%struct.infra_cache*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
