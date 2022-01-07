; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_tcp_callback_reader.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_tcp_callback_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i64, i32, i32, i32, i64 (%struct.comm_point*, i32, i32, i32*)*, i64, i64, i64, i64, i32 }

@comm_tcp = common dso_local global i64 0, align 8
@comm_local = common dso_local global i64 0, align 8
@NETEVENT_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comm_point*)* @tcp_callback_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_callback_reader(%struct.comm_point* %0) #0 {
  %2 = alloca %struct.comm_point*, align 8
  store %struct.comm_point* %0, %struct.comm_point** %2, align 8
  %3 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %4 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @comm_tcp, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %10 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @comm_local, align 8
  %13 = icmp eq i64 %11, %12
  br label %14

14:                                               ; preds = %8, %1
  %15 = phi i1 [ true, %1 ], [ %13, %8 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @log_assert(i32 %16)
  %18 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %19 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @sldns_buffer_flip(i32 %20)
  %22 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %23 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %22, i32 0, i32 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %14
  %27 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %28 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %27, i32 0, i32 7
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %26, %14
  %30 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %31 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %30, i32 0, i32 6
  store i64 0, i64* %31, align 8
  %32 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %33 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %38 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @tcp_req_info_handle_readdone(i64 %39)
  br label %75

41:                                               ; preds = %29
  %42 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %43 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @comm_tcp, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %49 = call i32 @comm_point_stop_listening(%struct.comm_point* %48)
  br label %50

50:                                               ; preds = %47, %41
  %51 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %52 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %51, i32 0, i32 4
  %53 = load i64 (%struct.comm_point*, i32, i32, i32*)*, i64 (%struct.comm_point*, i32, i32, i32*)** %52, align 8
  %54 = call i32 @fptr_whitelist_comm_point(i64 (%struct.comm_point*, i32, i32, i32*)* %53)
  %55 = call i32 @fptr_ok(i32 %54)
  %56 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %57 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %56, i32 0, i32 4
  %58 = load i64 (%struct.comm_point*, i32, i32, i32*)*, i64 (%struct.comm_point*, i32, i32, i32*)** %57, align 8
  %59 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %60 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %61 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @NETEVENT_NOERROR, align 4
  %64 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %65 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %64, i32 0, i32 2
  %66 = call i64 %58(%struct.comm_point* %59, i32 %62, i32 %63, i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %50
  %69 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %70 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %71 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @comm_point_start_listening(%struct.comm_point* %69, i32 -1, i32 %72)
  br label %74

74:                                               ; preds = %68, %50
  br label %75

75:                                               ; preds = %74, %36
  ret void
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @sldns_buffer_flip(i32) #1

declare dso_local i32 @tcp_req_info_handle_readdone(i64) #1

declare dso_local i32 @comm_point_stop_listening(%struct.comm_point*) #1

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_comm_point(i64 (%struct.comm_point*, i32, i32, i32*)*) #1

declare dso_local i32 @comm_point_start_listening(%struct.comm_point*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
