; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_tcp_req_info_setup_listen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_tcp_req_info_setup_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_req_info = type { i64, i64, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }

@TCP_MAX_REQ_SIMULTANEOUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_req_info*)* @tcp_req_info_setup_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_req_info_setup_listen(%struct.tcp_req_info* %0) #0 {
  %2 = alloca %struct.tcp_req_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tcp_req_info* %0, %struct.tcp_req_info** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %6 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %5, i32 0, i32 3
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %99

12:                                               ; preds = %1
  %13 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %14 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %12
  %21 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %22 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %25 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = load i64, i64* @TCP_MAX_REQ_SIMULTANEOUS, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  %31 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %32 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 1, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %30, %20
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %36
  %40 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %41 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %40, i32 0, i32 3
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32 0, i32* %43, align 8
  %44 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %45 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %44, i32 0, i32 3
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = call i32 @comm_point_stop_listening(%struct.TYPE_4__* %46)
  %48 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %49 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %48, i32 0, i32 3
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %52 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %51, i32 0, i32 3
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @comm_point_start_listening(%struct.TYPE_4__* %50, i32 -1, i32 %55)
  br label %99

57:                                               ; preds = %36
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %57
  %61 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %62 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %61, i32 0, i32 3
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i32 1, i32* %64, align 8
  %65 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %66 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %65, i32 0, i32 3
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = call i32 @comm_point_stop_listening(%struct.TYPE_4__* %67)
  %69 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %70 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %69, i32 0, i32 3
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %73 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %72, i32 0, i32 3
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @comm_point_start_listening(%struct.TYPE_4__* %71, i32 -1, i32 %76)
  %78 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %79 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %78, i32 0, i32 2
  store i32 1, i32* %79, align 8
  br label %98

80:                                               ; preds = %57
  %81 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %82 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %81, i32 0, i32 3
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = call i32 @comm_point_stop_listening(%struct.TYPE_4__* %83)
  %85 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %86 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %85, i32 0, i32 3
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %89 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %88, i32 0, i32 3
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @comm_point_start_listening(%struct.TYPE_4__* %87, i32 -1, i32 %92)
  %94 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %95 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %94, i32 0, i32 3
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = call i32 @comm_point_listen_for_rw(%struct.TYPE_4__* %96, i32 0, i32 0)
  br label %98

98:                                               ; preds = %80, %60
  br label %99

99:                                               ; preds = %11, %98, %39
  ret void
}

declare dso_local i32 @comm_point_stop_listening(%struct.TYPE_4__*) #1

declare dso_local i32 @comm_point_start_listening(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @comm_point_listen_for_rw(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
