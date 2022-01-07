; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_tcp_svc_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_tcp_svc_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rs_svc = type { i32, %struct.TYPE_2__**, i32*, i64* }
%struct.TYPE_2__ = type { i64 }
%struct.rs_svc_msg = type { i32 }
%struct.pollfd = type { i64, i32, i32 }

@tcp_svc_timeouts = common dso_local global i64* null, align 8
@POLLIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @tcp_svc_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tcp_svc_run(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rs_svc*, align 8
  %5 = alloca %struct.rs_svc_msg, align 4
  %6 = alloca %struct.pollfd, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.rs_svc*
  store %struct.rs_svc* %13, %struct.rs_svc** %4, align 8
  %14 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %15 = call i32 @rs_svc_grow_sets(%struct.rs_svc* %14, i32 16)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %1
  %19 = load i32, i32* %10, align 4
  %20 = getelementptr inbounds %struct.rs_svc_msg, %struct.rs_svc_msg* %5, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %22 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @write_all(i32 %25, %struct.rs_svc_msg* %5, i32 4)
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %2, align 8
  br label %121

30:                                               ; preds = %1
  %31 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %32 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %31, i32 0, i32 3
  %33 = load i64*, i64** %32, align 8
  store i64* %33, i64** @tcp_svc_timeouts, align 8
  %34 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %35 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %6, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @POLLIN, align 4
  %41 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %6, i32 0, i32 1
  store i32 %40, i32* %41, align 8
  store i32 -1, i32* %11, align 4
  br label %42

42:                                               ; preds = %115, %30
  %43 = load i32, i32* %11, align 4
  %44 = mul nsw i32 %43, 1000
  %45 = call i32 @poll(%struct.pollfd* %6, i32 1, i32 %44)
  %46 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %6, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %51 = call i32 @tcp_svc_process_sock(%struct.rs_svc* %50)
  br label %52

52:                                               ; preds = %49, %42
  %53 = call i64 (...) @rs_get_time()
  store i64 %53, i64* %7, align 8
  store i64 -1, i64* %8, align 8
  store i32 1, i32* %9, align 4
  br label %54

54:                                               ; preds = %107, %52
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %57 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sle i32 %55, %58
  br i1 %59, label %60, label %110

60:                                               ; preds = %54
  %61 = load i64*, i64** @tcp_svc_timeouts, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp sle i64 %65, %66
  br i1 %67, label %68, label %92

68:                                               ; preds = %60
  %69 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %70 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %71, i64 %73
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = call i32 @tcp_svc_send_keepalive(%struct.TYPE_2__* %75)
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %79 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %80, i64 %82
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %77, %86
  %88 = load i64*, i64** @tcp_svc_timeouts, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  store i64 %87, i64* %91, align 8
  br label %92

92:                                               ; preds = %68, %60
  %93 = load i64*, i64** @tcp_svc_timeouts, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %8, align 8
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %92
  %101 = load i64*, i64** @tcp_svc_timeouts, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %8, align 8
  br label %106

106:                                              ; preds = %100, %92
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %9, align 4
  br label %54

110:                                              ; preds = %54
  %111 = load i64, i64* %8, align 8
  %112 = load i64, i64* %7, align 8
  %113 = sub nsw i64 %111, %112
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %11, align 4
  br label %115

115:                                              ; preds = %110
  %116 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %117 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp sge i32 %118, 1
  br i1 %119, label %42, label %120

120:                                              ; preds = %115
  store i8* null, i8** %2, align 8
  br label %121

121:                                              ; preds = %120, %18
  %122 = load i8*, i8** %2, align 8
  ret i8* %122
}

declare dso_local i32 @rs_svc_grow_sets(%struct.rs_svc*, i32) #1

declare dso_local i32 @write_all(i32, %struct.rs_svc_msg*, i32) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @tcp_svc_process_sock(%struct.rs_svc*) #1

declare dso_local i64 @rs_get_time(...) #1

declare dso_local i32 @tcp_svc_send_keepalive(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
