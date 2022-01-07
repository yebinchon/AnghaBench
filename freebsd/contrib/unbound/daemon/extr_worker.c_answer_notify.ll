; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_answer_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_answer_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.query_info = type { i32, i32, i32 }
%struct.edns_data = type { i32*, i32, i64, i32, i32 }
%struct.comm_reply = type { i32, i32 }

@LDNS_RCODE_NOERROR = common dso_local global i32 0, align 4
@LDNS_RCODE_REFUSED = common dso_local global i32 0, align 4
@LDNS_RCODE_SERVFAIL = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@VERB_DETAIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"serial %u \00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"refused NOTIFY %sfor %s from\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"servfail for NOTIFY %sfor %s from\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"received NOTIFY %sfor %s from\00", align 1
@EDNS_ADVERTISED_VERSION = common dso_local global i32 0, align 4
@EDNS_ADVERTISED_SIZE = common dso_local global i32 0, align 4
@EDNS_DO = common dso_local global i32 0, align 4
@LDNS_PACKET_NOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.worker*, %struct.query_info*, %struct.edns_data*, i32*, %struct.comm_reply*)* @answer_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @answer_notify(%struct.worker* %0, %struct.query_info* %1, %struct.edns_data* %2, i32* %3, %struct.comm_reply* %4) #0 {
  %6 = alloca %struct.worker*, align 8
  %7 = alloca %struct.query_info*, align 8
  %8 = alloca %struct.edns_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.comm_reply*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca [380 x i8], align 16
  %16 = alloca [256 x i8], align 16
  %17 = alloca [25 x i8], align 16
  store %struct.worker* %0, %struct.worker** %6, align 8
  store %struct.query_info* %1, %struct.query_info** %7, align 8
  store %struct.edns_data* %2, %struct.edns_data** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.comm_reply* %4, %struct.comm_reply** %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  store i32 %18, i32* %12, align 4
  store i64 0, i64* %13, align 8
  %19 = load %struct.worker*, %struct.worker** %6, align 8
  %20 = getelementptr inbounds %struct.worker, %struct.worker* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %5
  br label %145

25:                                               ; preds = %5
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @auth_zone_parse_notify_serial(i32* %26, i64* %13)
  store i32 %27, i32* %14, align 4
  %28 = load %struct.worker*, %struct.worker** %6, align 8
  %29 = getelementptr inbounds %struct.worker, %struct.worker* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.worker*, %struct.worker** %6, align 8
  %33 = getelementptr inbounds %struct.worker, %struct.worker* %32, i32 0, i32 0
  %34 = load %struct.query_info*, %struct.query_info** %7, align 8
  %35 = getelementptr inbounds %struct.query_info, %struct.query_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.query_info*, %struct.query_info** %7, align 8
  %38 = getelementptr inbounds %struct.query_info, %struct.query_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.query_info*, %struct.query_info** %7, align 8
  %41 = getelementptr inbounds %struct.query_info, %struct.query_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.comm_reply*, %struct.comm_reply** %10, align 8
  %44 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %43, i32 0, i32 1
  %45 = load %struct.comm_reply*, %struct.comm_reply** %10, align 8
  %46 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i64, i64* %13, align 8
  %50 = call i64 @auth_zones_notify(i32 %31, %struct.TYPE_2__* %33, i32 %36, i32 %39, i32 %42, i32* %44, i32 %47, i32 %48, i64 %49, i32* %11)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %25
  %53 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  store i32 %53, i32* %12, align 4
  br label %62

54:                                               ; preds = %25
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @LDNS_RCODE_REFUSED, align 4
  store i32 %58, i32* %12, align 4
  br label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %59, %57
  br label %62

62:                                               ; preds = %61, %52
  %63 = load i64, i64* @verbosity, align 8
  %64 = load i64, i64* @VERB_DETAIL, align 8
  %65 = icmp sge i64 %63, %64
  br i1 %65, label %66, label %113

66:                                               ; preds = %62
  %67 = load %struct.query_info*, %struct.query_info** %7, align 8
  %68 = getelementptr inbounds %struct.query_info, %struct.query_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %71 = call i32 @dname_str(i32 %69, i8* %70)
  %72 = getelementptr inbounds [25 x i8], [25 x i8]* %17, i64 0, i64 0
  store i8 0, i8* %72, align 16
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %66
  %76 = getelementptr inbounds [25 x i8], [25 x i8]* %17, i64 0, i64 0
  %77 = load i64, i64* %13, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %76, i32 25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %75, %66
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @LDNS_RCODE_REFUSED, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = getelementptr inbounds [380 x i8], [380 x i8]* %15, i64 0, i64 0
  %86 = getelementptr inbounds [25 x i8], [25 x i8]* %17, i64 0, i64 0
  %87 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %88 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %85, i32 380, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %86, i8* %87)
  br label %104

89:                                               ; preds = %80
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = getelementptr inbounds [380 x i8], [380 x i8]* %15, i64 0, i64 0
  %95 = getelementptr inbounds [25 x i8], [25 x i8]* %17, i64 0, i64 0
  %96 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %97 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %94, i32 380, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %95, i8* %96)
  br label %103

98:                                               ; preds = %89
  %99 = getelementptr inbounds [380 x i8], [380 x i8]* %15, i64 0, i64 0
  %100 = getelementptr inbounds [25 x i8], [25 x i8]* %17, i64 0, i64 0
  %101 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %102 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %99, i32 380, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %100, i8* %101)
  br label %103

103:                                              ; preds = %98, %93
  br label %104

104:                                              ; preds = %103, %84
  %105 = load i64, i64* @VERB_DETAIL, align 8
  %106 = getelementptr inbounds [380 x i8], [380 x i8]* %15, i64 0, i64 0
  %107 = load %struct.comm_reply*, %struct.comm_reply** %10, align 8
  %108 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %107, i32 0, i32 1
  %109 = load %struct.comm_reply*, %struct.comm_reply** %10, align 8
  %110 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @log_addr(i64 %105, i8* %106, i32* %108, i32 %111)
  br label %113

113:                                              ; preds = %104, %62
  %114 = load i32, i32* @EDNS_ADVERTISED_VERSION, align 4
  %115 = load %struct.edns_data*, %struct.edns_data** %8, align 8
  %116 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %115, i32 0, i32 4
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* @EDNS_ADVERTISED_SIZE, align 4
  %118 = load %struct.edns_data*, %struct.edns_data** %8, align 8
  %119 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 8
  %120 = load %struct.edns_data*, %struct.edns_data** %8, align 8
  %121 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %120, i32 0, i32 2
  store i64 0, i64* %121, align 8
  %122 = load i32, i32* @EDNS_DO, align 4
  %123 = load %struct.edns_data*, %struct.edns_data** %8, align 8
  %124 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = and i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load %struct.edns_data*, %struct.edns_data** %8, align 8
  %128 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %127, i32 0, i32 0
  store i32* null, i32** %128, align 8
  %129 = load i32*, i32** %9, align 8
  %130 = load i32, i32* %12, align 4
  %131 = load %struct.query_info*, %struct.query_info** %7, align 8
  %132 = load i32*, i32** %9, align 8
  %133 = call i64 @sldns_buffer_begin(i32* %132)
  %134 = inttoptr i64 %133 to i8*
  %135 = bitcast i8* %134 to i32*
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %9, align 8
  %138 = call i32 @sldns_buffer_read_u16_at(i32* %137, i32 2)
  %139 = load %struct.edns_data*, %struct.edns_data** %8, align 8
  %140 = call i32 @error_encode(i32* %129, i32 %130, %struct.query_info* %131, i32 %136, i32 %138, %struct.edns_data* %139)
  %141 = load i32*, i32** %9, align 8
  %142 = call i64 @sldns_buffer_begin(i32* %141)
  %143 = load i32, i32* @LDNS_PACKET_NOTIFY, align 4
  %144 = call i32 @LDNS_OPCODE_SET(i64 %142, i32 %143)
  br label %145

145:                                              ; preds = %113, %24
  ret void
}

declare dso_local i32 @auth_zone_parse_notify_serial(i32*, i64*) #1

declare dso_local i64 @auth_zones_notify(i32, %struct.TYPE_2__*, i32, i32, i32, i32*, i32, i32, i64, i32*) #1

declare dso_local i32 @dname_str(i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @log_addr(i64, i8*, i32*, i32) #1

declare dso_local i32 @error_encode(i32*, i32, %struct.query_info*, i32, i32, %struct.edns_data*) #1

declare dso_local i64 @sldns_buffer_begin(i32*) #1

declare dso_local i32 @sldns_buffer_read_u16_at(i32*, i32) #1

declare dso_local i32 @LDNS_OPCODE_SET(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
