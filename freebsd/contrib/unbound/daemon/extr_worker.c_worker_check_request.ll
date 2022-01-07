; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_worker_check_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_worker_check_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@LDNS_HEADER_SIZE = common dso_local global i64 0, align 8
@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"request too short, discarded\00", align 1
@NORMAL_UDP_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"request too large, discarded\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"request has QR bit on, discarded\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"request bad, has TC bit on\00", align 1
@LDNS_RCODE_FORMERR = common dso_local global i32 0, align 4
@LDNS_PACKET_QUERY = common dso_local global i64 0, align 8
@LDNS_PACKET_NOTIFY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"request unknown opcode %d\00", align 1
@LDNS_RCODE_NOTIMPL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"request wrong nr qd=%d\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"request wrong nr an=%d\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"request wrong nr ns=%d\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"request wrong nr ar=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.worker*)* @worker_check_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @worker_check_request(i32* %0, %struct.worker* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.worker*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.worker* %1, %struct.worker** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i64 @sldns_buffer_limit(i32* %6)
  %8 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @VERB_QUERY, align 4
  %12 = call i32 (i32, i8*, ...) @verbose(i32 %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %141

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @sldns_buffer_limit(i32* %14)
  %16 = load i64, i64* @NORMAL_UDP_SIZE, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = load %struct.worker*, %struct.worker** %5, align 8
  %20 = getelementptr inbounds %struct.worker, %struct.worker* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* @VERB_QUERY, align 4
  %29 = call i32 (i32, i8*, ...) @verbose(i32 %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %141

30:                                               ; preds = %18, %13
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @sldns_buffer_begin(i32* %31)
  %33 = call i64 @LDNS_QR_WIRE(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @VERB_QUERY, align 4
  %37 = call i32 (i32, i8*, ...) @verbose(i32 %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %141

38:                                               ; preds = %30
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @sldns_buffer_begin(i32* %39)
  %41 = call i64 @LDNS_TC_WIRE(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @sldns_buffer_begin(i32* %44)
  %46 = call i32 @LDNS_TC_CLR(i32 %45)
  %47 = load i32, i32* @VERB_QUERY, align 4
  %48 = call i32 (i32, i8*, ...) @verbose(i32 %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.worker*, %struct.worker** %5, align 8
  %50 = load i32, i32* @LDNS_RCODE_FORMERR, align 4
  %51 = call i32 @worker_err_ratelimit(%struct.worker* %49, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %141

52:                                               ; preds = %38
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @sldns_buffer_begin(i32* %53)
  %55 = call i64 @LDNS_OPCODE_WIRE(i32 %54)
  %56 = load i64, i64* @LDNS_PACKET_QUERY, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %52
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @sldns_buffer_begin(i32* %59)
  %61 = call i64 @LDNS_OPCODE_WIRE(i32 %60)
  %62 = load i64, i64* @LDNS_PACKET_NOTIFY, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load i32, i32* @VERB_QUERY, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @sldns_buffer_begin(i32* %66)
  %68 = call i64 @LDNS_OPCODE_WIRE(i32 %67)
  %69 = call i32 (i32, i8*, ...) @verbose(i32 %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %68)
  %70 = load %struct.worker*, %struct.worker** %5, align 8
  %71 = load i32, i32* @LDNS_RCODE_NOTIMPL, align 4
  %72 = call i32 @worker_err_ratelimit(%struct.worker* %70, i32 %71)
  store i32 %72, i32* %3, align 4
  br label %141

73:                                               ; preds = %58, %52
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @sldns_buffer_begin(i32* %74)
  %76 = call i32 @LDNS_QDCOUNT(i32 %75)
  %77 = icmp ne i32 %76, 1
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load i32, i32* @VERB_QUERY, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @sldns_buffer_begin(i32* %80)
  %82 = call i32 @LDNS_QDCOUNT(i32 %81)
  %83 = call i32 (i32, i8*, ...) @verbose(i32 %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  %84 = load %struct.worker*, %struct.worker** %5, align 8
  %85 = load i32, i32* @LDNS_RCODE_FORMERR, align 4
  %86 = call i32 @worker_err_ratelimit(%struct.worker* %84, i32 %85)
  store i32 %86, i32* %3, align 4
  br label %141

87:                                               ; preds = %73
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @sldns_buffer_begin(i32* %88)
  %90 = call i32 @LDNS_ANCOUNT(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %112

92:                                               ; preds = %87
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @sldns_buffer_begin(i32* %93)
  %95 = call i32 @LDNS_ANCOUNT(i32 %94)
  %96 = icmp ne i32 %95, 1
  br i1 %96, label %103, label %97

97:                                               ; preds = %92
  %98 = load i32*, i32** %4, align 8
  %99 = call i32 @sldns_buffer_begin(i32* %98)
  %100 = call i64 @LDNS_OPCODE_WIRE(i32 %99)
  %101 = load i64, i64* @LDNS_PACKET_NOTIFY, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %97, %92
  %104 = load i32, i32* @VERB_QUERY, align 4
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @sldns_buffer_begin(i32* %105)
  %107 = call i32 @LDNS_ANCOUNT(i32 %106)
  %108 = call i32 (i32, i8*, ...) @verbose(i32 %104, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %107)
  %109 = load %struct.worker*, %struct.worker** %5, align 8
  %110 = load i32, i32* @LDNS_RCODE_FORMERR, align 4
  %111 = call i32 @worker_err_ratelimit(%struct.worker* %109, i32 %110)
  store i32 %111, i32* %3, align 4
  br label %141

112:                                              ; preds = %97, %87
  %113 = load i32*, i32** %4, align 8
  %114 = call i32 @sldns_buffer_begin(i32* %113)
  %115 = call i32 @LDNS_NSCOUNT(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %112
  %118 = load i32, i32* @VERB_QUERY, align 4
  %119 = load i32*, i32** %4, align 8
  %120 = call i32 @sldns_buffer_begin(i32* %119)
  %121 = call i32 @LDNS_NSCOUNT(i32 %120)
  %122 = call i32 (i32, i8*, ...) @verbose(i32 %118, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %121)
  %123 = load %struct.worker*, %struct.worker** %5, align 8
  %124 = load i32, i32* @LDNS_RCODE_FORMERR, align 4
  %125 = call i32 @worker_err_ratelimit(%struct.worker* %123, i32 %124)
  store i32 %125, i32* %3, align 4
  br label %141

126:                                              ; preds = %112
  %127 = load i32*, i32** %4, align 8
  %128 = call i32 @sldns_buffer_begin(i32* %127)
  %129 = call i32 @LDNS_ARCOUNT(i32 %128)
  %130 = icmp sgt i32 %129, 1
  br i1 %130, label %131, label %140

131:                                              ; preds = %126
  %132 = load i32, i32* @VERB_QUERY, align 4
  %133 = load i32*, i32** %4, align 8
  %134 = call i32 @sldns_buffer_begin(i32* %133)
  %135 = call i32 @LDNS_ARCOUNT(i32 %134)
  %136 = call i32 (i32, i8*, ...) @verbose(i32 %132, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %135)
  %137 = load %struct.worker*, %struct.worker** %5, align 8
  %138 = load i32, i32* @LDNS_RCODE_FORMERR, align 4
  %139 = call i32 @worker_err_ratelimit(%struct.worker* %137, i32 %138)
  store i32 %139, i32* %3, align 4
  br label %141

140:                                              ; preds = %126
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %140, %131, %117, %103, %78, %64, %43, %35, %27, %10
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i64 @sldns_buffer_limit(i32*) #1

declare dso_local i32 @verbose(i32, i8*, ...) #1

declare dso_local i64 @LDNS_QR_WIRE(i32) #1

declare dso_local i32 @sldns_buffer_begin(i32*) #1

declare dso_local i64 @LDNS_TC_WIRE(i32) #1

declare dso_local i32 @LDNS_TC_CLR(i32) #1

declare dso_local i32 @worker_err_ratelimit(%struct.worker*, i32) #1

declare dso_local i64 @LDNS_OPCODE_WIRE(i32) #1

declare dso_local i32 @LDNS_QDCOUNT(i32) #1

declare dso_local i32 @LDNS_ANCOUNT(i32) #1

declare dso_local i32 @LDNS_NSCOUNT(i32) #1

declare dso_local i32 @LDNS_ARCOUNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
