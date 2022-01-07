; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_ip_ratelimit_inc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_ip_ratelimit_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.infra_cache = type { i32 }
%struct.comm_reply = type { i32, i32 }
%struct.sldns_buffer = type { i32 }
%struct.lruhash_entry = type { i32, i32 }
%struct.sockaddr_storage = type { i32 }

@infra_ip_ratelimit = common dso_local global i32 0, align 4
@LDNS_MAX_DOMAINLEN = common dso_local global i32 0, align 4
@LDNS_HEADER_SIZE = common dso_local global i64 0, align 8
@VERB_OPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ip_ratelimit exceeded %s %d %s\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"ip_ratelimit exceeded %s %d (no query name)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @infra_ip_ratelimit_inc(%struct.infra_cache* %0, %struct.comm_reply* %1, i32 %2, %struct.sldns_buffer* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.infra_cache*, align 8
  %7 = alloca %struct.comm_reply*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sldns_buffer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.lruhash_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca [128 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.infra_cache* %0, %struct.infra_cache** %6, align 8
  store %struct.comm_reply* %1, %struct.comm_reply** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.sldns_buffer* %3, %struct.sldns_buffer** %9, align 8
  %17 = load i32, i32* @infra_ip_ratelimit, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %138

20:                                               ; preds = %4
  %21 = load %struct.infra_cache*, %struct.infra_cache** %6, align 8
  %22 = load %struct.comm_reply*, %struct.comm_reply** %7, align 8
  %23 = call %struct.lruhash_entry* @infra_find_ip_ratedata(%struct.infra_cache* %21, %struct.comm_reply* %22, i32 1)
  store %struct.lruhash_entry* %23, %struct.lruhash_entry** %11, align 8
  %24 = load %struct.lruhash_entry*, %struct.lruhash_entry** %11, align 8
  %25 = icmp ne %struct.lruhash_entry* %24, null
  br i1 %25, label %26, label %133

26:                                               ; preds = %20
  %27 = load %struct.lruhash_entry*, %struct.lruhash_entry** %11, align 8
  %28 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @infra_rate_max(i32 %29, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load %struct.lruhash_entry*, %struct.lruhash_entry** %11, align 8
  %33 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32* @infra_rate_find_second(i32 %34, i32 %35)
  store i32* %36, i32** %13, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.lruhash_entry*, %struct.lruhash_entry** %11, align 8
  %41 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @infra_rate_max(i32 %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.lruhash_entry*, %struct.lruhash_entry** %11, align 8
  %46 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %45, i32 0, i32 0
  %47 = call i32 @lock_rw_unlock(i32* %46)
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @infra_ip_ratelimit, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %128

51:                                               ; preds = %26
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @infra_ip_ratelimit, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %128

55:                                               ; preds = %51
  %56 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %57 = add nsw i32 %56, 1
  %58 = add nsw i32 %57, 12
  %59 = add nsw i32 %58, 12
  %60 = zext i32 %59 to i64
  %61 = call i8* @llvm.stacksave()
  store i8* %61, i8** %15, align 8
  %62 = alloca i8, i64 %60, align 16
  store i64 %60, i64* %16, align 8
  %63 = load %struct.comm_reply*, %struct.comm_reply** %7, align 8
  %64 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %63, i32 0, i32 1
  %65 = bitcast i32* %64 to %struct.sockaddr_storage*
  %66 = load %struct.comm_reply*, %struct.comm_reply** %7, align 8
  %67 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %70 = call i32 @addr_to_str(%struct.sockaddr_storage* %65, i32 %68, i8* %69, i32 128)
  %71 = getelementptr inbounds i8, i8* %62, i64 0
  store i8 0, i8* %71, align 16
  %72 = load %struct.sldns_buffer*, %struct.sldns_buffer** %9, align 8
  %73 = call i64 @sldns_buffer_limit(%struct.sldns_buffer* %72)
  %74 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %121

76:                                               ; preds = %55
  %77 = load %struct.sldns_buffer*, %struct.sldns_buffer** %9, align 8
  %78 = call i32 @sldns_buffer_begin(%struct.sldns_buffer* %77)
  %79 = call i64 @LDNS_QDCOUNT(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %121

81:                                               ; preds = %76
  %82 = load %struct.sldns_buffer*, %struct.sldns_buffer** %9, align 8
  %83 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %84 = call i32 @sldns_buffer_at(%struct.sldns_buffer* %82, i64 %83)
  %85 = load %struct.sldns_buffer*, %struct.sldns_buffer** %9, align 8
  %86 = call i64 @sldns_buffer_limit(%struct.sldns_buffer* %85)
  %87 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %88 = sub nsw i64 %86, %87
  %89 = trunc i64 %60 to i32
  %90 = call i32 @sldns_wire2str_rrquestion_buf(i32 %84, i64 %88, i8* %62, i32 %89)
  %91 = call i32 @strlen(i8* %62)
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %81
  %94 = call i32 @strlen(i8* %62)
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %62, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 10
  br i1 %100, label %101, label %106

101:                                              ; preds = %93
  %102 = call i32 @strlen(i8* %62)
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %62, i64 %104
  store i8 0, i8* %105, align 1
  br label %106

106:                                              ; preds = %101, %93, %81
  %107 = call i8* @strchr(i8* %62, i8 signext 9)
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = call i8* @strchr(i8* %62, i8 signext 9)
  store i8 32, i8* %110, align 1
  br label %111

111:                                              ; preds = %109, %106
  %112 = call i8* @strchr(i8* %62, i8 signext 9)
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = call i8* @strchr(i8* %62, i8 signext 9)
  store i8 32, i8* %115, align 1
  br label %116

116:                                              ; preds = %114, %111
  %117 = load i32, i32* @VERB_OPS, align 4
  %118 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %119 = load i32, i32* @infra_ip_ratelimit, align 4
  %120 = call i32 (i32, i8*, i8*, i32, ...) @verbose(i32 %117, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %118, i32 %119, i8* %62)
  br label %126

121:                                              ; preds = %76, %55
  %122 = load i32, i32* @VERB_OPS, align 4
  %123 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %124 = load i32, i32* @infra_ip_ratelimit, align 4
  %125 = call i32 (i32, i8*, i8*, i32, ...) @verbose(i32 %122, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %123, i32 %124)
  br label %126

126:                                              ; preds = %121, %116
  %127 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %127)
  br label %128

128:                                              ; preds = %126, %51, %26
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @infra_ip_ratelimit, align 4
  %131 = icmp sle i32 %129, %130
  %132 = zext i1 %131 to i32
  store i32 %132, i32* %5, align 4
  br label %138

133:                                              ; preds = %20
  %134 = load %struct.infra_cache*, %struct.infra_cache** %6, align 8
  %135 = load %struct.comm_reply*, %struct.comm_reply** %7, align 8
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @infra_ip_create_ratedata(%struct.infra_cache* %134, %struct.comm_reply* %135, i32 %136)
  store i32 1, i32* %5, align 4
  br label %138

138:                                              ; preds = %133, %128, %19
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local %struct.lruhash_entry* @infra_find_ip_ratedata(%struct.infra_cache*, %struct.comm_reply*, i32) #1

declare dso_local i32 @infra_rate_max(i32, i32) #1

declare dso_local i32* @infra_rate_find_second(i32, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @addr_to_str(%struct.sockaddr_storage*, i32, i8*, i32) #1

declare dso_local i64 @sldns_buffer_limit(%struct.sldns_buffer*) #1

declare dso_local i64 @LDNS_QDCOUNT(i32) #1

declare dso_local i32 @sldns_buffer_begin(%struct.sldns_buffer*) #1

declare dso_local i32 @sldns_wire2str_rrquestion_buf(i32, i64, i8*, i32) #1

declare dso_local i32 @sldns_buffer_at(%struct.sldns_buffer*, i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @verbose(i32, i8*, i8*, i32, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @infra_ip_create_ratedata(%struct.infra_cache*, %struct.comm_reply*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
