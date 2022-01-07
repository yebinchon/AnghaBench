; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_deny_refuse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_deny_refuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i32 }
%struct.worker = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.comm_reply = type { i32, i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"refused query from\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"refuse\00", align 1
@LDNS_HEADER_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] zeroinitializer, align 1
@LDNS_RCODE_REFUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comm_point*, i32, i32, i32, %struct.worker*, %struct.comm_reply*)* @deny_refuse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deny_refuse(%struct.comm_point* %0, i32 %1, i32 %2, i32 %3, %struct.worker* %4, %struct.comm_reply* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.comm_point*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.worker*, align 8
  %13 = alloca %struct.comm_reply*, align 8
  store %struct.comm_point* %0, %struct.comm_point** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.worker* %4, %struct.worker** %12, align 8
  store %struct.comm_reply* %5, %struct.comm_reply** %13, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %6
  %18 = load %struct.comm_reply*, %struct.comm_reply** %13, align 8
  %19 = call i32 @comm_point_drop_reply(%struct.comm_reply* %18)
  %20 = load %struct.worker*, %struct.worker** %12, align 8
  %21 = getelementptr inbounds %struct.worker, %struct.worker* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load %struct.worker*, %struct.worker** %12, align 8
  %27 = getelementptr inbounds %struct.worker, %struct.worker* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  br label %31

31:                                               ; preds = %25, %17
  store i32 0, i32* %7, align 4
  br label %102

32:                                               ; preds = %6
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %100

36:                                               ; preds = %32
  %37 = load i32, i32* @VERB_ALGO, align 4
  %38 = load %struct.comm_reply*, %struct.comm_reply** %13, align 8
  %39 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %38, i32 0, i32 1
  %40 = load %struct.comm_reply*, %struct.comm_reply** %13, align 8
  %41 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @log_addr(i32 %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %39, i32 %42)
  %44 = load i32, i32* @VERB_ALGO, align 4
  %45 = load %struct.comm_point*, %struct.comm_point** %8, align 8
  %46 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @log_buf(i32 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.worker*, %struct.worker** %12, align 8
  %50 = getelementptr inbounds %struct.worker, %struct.worker* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %36
  %55 = load %struct.worker*, %struct.worker** %12, align 8
  %56 = getelementptr inbounds %struct.worker, %struct.worker* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %54, %36
  %61 = load %struct.comm_point*, %struct.comm_point** %8, align 8
  %62 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.worker*, %struct.worker** %12, align 8
  %65 = call i32 @worker_check_request(i32 %63, %struct.worker* %64)
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load %struct.comm_reply*, %struct.comm_reply** %13, align 8
  %69 = call i32 @comm_point_drop_reply(%struct.comm_reply* %68)
  store i32 0, i32* %7, align 4
  br label %102

70:                                               ; preds = %60
  %71 = load %struct.comm_point*, %struct.comm_point** %8, align 8
  %72 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @LDNS_HEADER_SIZE, align 4
  %75 = call i32 @sldns_buffer_set_limit(i32 %73, i32 %74)
  %76 = load %struct.comm_point*, %struct.comm_point** %8, align 8
  %77 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @sldns_buffer_write_at(i32 %78, i32 4, i32* bitcast ([9 x i8]* @.str.2 to i32*), i32 8)
  %80 = load %struct.comm_point*, %struct.comm_point** %8, align 8
  %81 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @sldns_buffer_begin(i32 %82)
  %84 = call i32 @LDNS_QR_SET(i32 %83)
  %85 = load %struct.comm_point*, %struct.comm_point** %8, align 8
  %86 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @sldns_buffer_begin(i32 %87)
  %89 = load i32, i32* @LDNS_RCODE_REFUSED, align 4
  %90 = call i32 @LDNS_RCODE_SET(i32 %88, i32 %89)
  %91 = load %struct.comm_point*, %struct.comm_point** %8, align 8
  %92 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @LDNS_HEADER_SIZE, align 4
  %95 = call i32 @sldns_buffer_set_position(i32 %93, i32 %94)
  %96 = load %struct.comm_point*, %struct.comm_point** %8, align 8
  %97 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @sldns_buffer_flip(i32 %98)
  store i32 1, i32* %7, align 4
  br label %102

100:                                              ; preds = %32
  br label %101

101:                                              ; preds = %100
  store i32 -1, i32* %7, align 4
  br label %102

102:                                              ; preds = %101, %70, %67, %31
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i32 @comm_point_drop_reply(%struct.comm_reply*) #1

declare dso_local i32 @log_addr(i32, i8*, i32*, i32) #1

declare dso_local i32 @log_buf(i32, i8*, i32) #1

declare dso_local i32 @worker_check_request(i32, %struct.worker*) #1

declare dso_local i32 @sldns_buffer_set_limit(i32, i32) #1

declare dso_local i32 @sldns_buffer_write_at(i32, i32, i32*, i32) #1

declare dso_local i32 @LDNS_QR_SET(i32) #1

declare dso_local i32 @sldns_buffer_begin(i32) #1

declare dso_local i32 @LDNS_RCODE_SET(i32, i32) #1

declare dso_local i32 @sldns_buffer_set_position(i32, i32) #1

declare dso_local i32 @sldns_buffer_flip(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
