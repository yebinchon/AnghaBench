; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i32, i64, %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"could not event_del on close\00", align 1
@comm_tcp = common dso_local global i64 0, align 8
@comm_http = common dso_local global i64 0, align 8
@UB_EV_READ = common dso_local global i32 0, align 4
@UB_EV_WRITE = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"close fd %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comm_point_close(%struct.comm_point* %0) #0 {
  %2 = alloca %struct.comm_point*, align 8
  store %struct.comm_point* %0, %struct.comm_point** %2, align 8
  %3 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %4 = icmp ne %struct.comm_point* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %86

6:                                                ; preds = %1
  %7 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %8 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %13 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @ub_event_del(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = call i32 @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %11
  br label %22

22:                                               ; preds = %21, %6
  %23 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %24 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @tcl_close_connection(i32 %25)
  %27 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %28 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %33 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @tcp_req_info_clear(i64 %34)
  br label %36

36:                                               ; preds = %31, %22
  %37 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %38 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, -1
  br i1 %40, label %41, label %83

41:                                               ; preds = %36
  %42 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %43 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %83, label %46

46:                                               ; preds = %41
  %47 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %48 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @comm_tcp, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %54 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @comm_http, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %52, %46
  %59 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %60 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @UB_EV_READ, align 4
  %65 = call i32 @ub_winsock_tcp_wouldblock(i32 %63, i32 %64)
  %66 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %67 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @UB_EV_WRITE, align 4
  %72 = call i32 @ub_winsock_tcp_wouldblock(i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %58, %52
  %74 = load i32, i32* @VERB_ALGO, align 4
  %75 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %76 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @verbose(i32 %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %80 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @close(i32 %81)
  br label %83

83:                                               ; preds = %73, %41, %36
  %84 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %85 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %84, i32 0, i32 0
  store i32 -1, i32* %85, align 8
  br label %86

86:                                               ; preds = %83, %5
  ret void
}

declare dso_local i64 @ub_event_del(i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @tcl_close_connection(i32) #1

declare dso_local i32 @tcp_req_info_clear(i64) #1

declare dso_local i32 @ub_winsock_tcp_wouldblock(i32, i32) #1

declare dso_local i32 @verbose(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
