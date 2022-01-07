; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_tcp_req_info_handle_read_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_tcp_req_info_handle_read_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_req_info = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"tcp channel read side closed %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_req_info_handle_read_close(%struct.tcp_req_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcp_req_info*, align 8
  store %struct.tcp_req_info* %0, %struct.tcp_req_info** %3, align 8
  %4 = load i32, i32* @VERB_ALGO, align 4
  %5 = load %struct.tcp_req_info*, %struct.tcp_req_info** %3, align 8
  %6 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %5, i32 0, i32 3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @verbose(i32 %4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.tcp_req_info*, %struct.tcp_req_info** %3, align 8
  %12 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.tcp_req_info*, %struct.tcp_req_info** %3, align 8
  %16 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.tcp_req_info*, %struct.tcp_req_info** %3, align 8
  %21 = call i32 @tcp_req_pickup_next_result(%struct.tcp_req_info* %20)
  %22 = load %struct.tcp_req_info*, %struct.tcp_req_info** %3, align 8
  %23 = call i32 @tcp_req_info_setup_listen(%struct.tcp_req_info* %22)
  store i32 1, i32* %2, align 4
  br label %40

24:                                               ; preds = %1
  %25 = load %struct.tcp_req_info*, %struct.tcp_req_info** %3, align 8
  %26 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.tcp_req_info*, %struct.tcp_req_info** %3, align 8
  %31 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %40

35:                                               ; preds = %29, %24
  %36 = load %struct.tcp_req_info*, %struct.tcp_req_info** %3, align 8
  %37 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %36, i32 0, i32 2
  store i32 1, i32* %37, align 8
  %38 = load %struct.tcp_req_info*, %struct.tcp_req_info** %3, align 8
  %39 = call i32 @tcp_req_info_setup_listen(%struct.tcp_req_info* %38)
  store i32 1, i32* %2, align 4
  br label %40

40:                                               ; preds = %35, %34, %19
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @verbose(i32, i8*, i32) #1

declare dso_local i32 @tcp_req_pickup_next_result(%struct.tcp_req_info*) #1

declare dso_local i32 @tcp_req_info_setup_listen(%struct.tcp_req_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
