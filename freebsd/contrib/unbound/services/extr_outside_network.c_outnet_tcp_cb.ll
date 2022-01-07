; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_outnet_tcp_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_outnet_tcp_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i32 }
%struct.comm_reply = type { i32 }
%struct.pending_tcp = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (%struct.comm_point*, i32, i32, %struct.comm_reply*)*, i32, i32, %struct.outside_network* }
%struct.outside_network = type { i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"outnettcp cb\00", align 1
@NETEVENT_NOERROR = common dso_local global i32 0, align 4
@VERB_QUERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"outnettcp got tcp error %d\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"outnettcp: bad ID in reply, from:\00", align 1
@NETEVENT_CLOSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @outnet_tcp_cb(%struct.comm_point* %0, i8* %1, i32 %2, %struct.comm_reply* %3) #0 {
  %5 = alloca %struct.comm_point*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.comm_reply*, align 8
  %9 = alloca %struct.pending_tcp*, align 8
  %10 = alloca %struct.outside_network*, align 8
  store %struct.comm_point* %0, %struct.comm_point** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.comm_reply* %3, %struct.comm_reply** %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.pending_tcp*
  store %struct.pending_tcp* %12, %struct.pending_tcp** %9, align 8
  %13 = load %struct.pending_tcp*, %struct.pending_tcp** %9, align 8
  %14 = getelementptr inbounds %struct.pending_tcp, %struct.pending_tcp* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 4
  %17 = load %struct.outside_network*, %struct.outside_network** %16, align 8
  store %struct.outside_network* %17, %struct.outside_network** %10, align 8
  %18 = load i32, i32* @VERB_ALGO, align 4
  %19 = call i32 (i32, i8*, ...) @verbose(i32 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @NETEVENT_NOERROR, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i32, i32* @VERB_QUERY, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (i32, i8*, ...) @verbose(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %58

27:                                               ; preds = %4
  %28 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %29 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sldns_buffer_limit(i32 %30)
  %32 = sext i32 %31 to i64
  %33 = icmp ult i64 %32, 4
  br i1 %33, label %44, label %34

34:                                               ; preds = %27
  %35 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %36 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @sldns_buffer_begin(i32 %37)
  %39 = call i64 @LDNS_ID_WIRE(i32 %38)
  %40 = load %struct.pending_tcp*, %struct.pending_tcp** %9, align 8
  %41 = getelementptr inbounds %struct.pending_tcp, %struct.pending_tcp* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %34, %27
  %45 = load i32, i32* @VERB_QUERY, align 4
  %46 = load %struct.pending_tcp*, %struct.pending_tcp** %9, align 8
  %47 = getelementptr inbounds %struct.pending_tcp, %struct.pending_tcp* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load %struct.pending_tcp*, %struct.pending_tcp** %9, align 8
  %51 = getelementptr inbounds %struct.pending_tcp, %struct.pending_tcp* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @log_addr(i32 %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32* %49, i32 %54)
  %56 = load i32, i32* @NETEVENT_CLOSED, align 4
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %44, %34
  br label %58

58:                                               ; preds = %57, %23
  %59 = load %struct.pending_tcp*, %struct.pending_tcp** %9, align 8
  %60 = getelementptr inbounds %struct.pending_tcp, %struct.pending_tcp* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32 (%struct.comm_point*, i32, i32, %struct.comm_reply*)*, i32 (%struct.comm_point*, i32, i32, %struct.comm_reply*)** %62, align 8
  %64 = call i32 @fptr_whitelist_pending_tcp(i32 (%struct.comm_point*, i32, i32, %struct.comm_reply*)* %63)
  %65 = call i32 @fptr_ok(i32 %64)
  %66 = load %struct.pending_tcp*, %struct.pending_tcp** %9, align 8
  %67 = getelementptr inbounds %struct.pending_tcp, %struct.pending_tcp* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32 (%struct.comm_point*, i32, i32, %struct.comm_reply*)*, i32 (%struct.comm_point*, i32, i32, %struct.comm_reply*)** %69, align 8
  %71 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %72 = load %struct.pending_tcp*, %struct.pending_tcp** %9, align 8
  %73 = getelementptr inbounds %struct.pending_tcp, %struct.pending_tcp* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.comm_reply*, %struct.comm_reply** %8, align 8
  %79 = call i32 %70(%struct.comm_point* %71, i32 %76, i32 %77, %struct.comm_reply* %78)
  %80 = load %struct.outside_network*, %struct.outside_network** %10, align 8
  %81 = load %struct.pending_tcp*, %struct.pending_tcp** %9, align 8
  %82 = call i32 @decommission_pending_tcp(%struct.outside_network* %80, %struct.pending_tcp* %81)
  ret i32 0
}

declare dso_local i32 @verbose(i32, i8*, ...) #1

declare dso_local i32 @sldns_buffer_limit(i32) #1

declare dso_local i64 @LDNS_ID_WIRE(i32) #1

declare dso_local i32 @sldns_buffer_begin(i32) #1

declare dso_local i32 @log_addr(i32, i8*, i32*, i32) #1

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_pending_tcp(i32 (%struct.comm_point*, i32, i32, %struct.comm_reply*)*) #1

declare dso_local i32 @decommission_pending_tcp(%struct.outside_network*, %struct.pending_tcp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
