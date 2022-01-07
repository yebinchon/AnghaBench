; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-mgmt-port.c_cvmx_mgmt_port_link_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-mgmt-port.c_cvmx_mgmt_port_link_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@cvmx_mgmt_port_state_ptr = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"WARNING: Invalid port %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_mgmt_port_link_get(%struct.TYPE_9__* noalias sret %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  store i32 %1, i32* %3, align 4
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cvmx_mgmt_port_state_ptr, align 8
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i64 %8
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 (...) @__cvmx_mgmt_port_num_ports()
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = bitcast %struct.TYPE_9__* %0 to i8*
  %18 = bitcast %struct.TYPE_9__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 24, i1 false)
  br label %37

19:                                               ; preds = %2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  call void @__cvmx_helper_board_link_get(%struct.TYPE_9__* sret %0, i32 %27)
  br label %37

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  store i32 100, i32* %34, align 8
  %35 = bitcast %struct.TYPE_9__* %0 to i8*
  %36 = bitcast %struct.TYPE_9__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 24, i1 false)
  br label %37

37:                                               ; preds = %28, %24, %14
  ret void
}

declare dso_local i32 @__cvmx_mgmt_port_num_ports(...) #1

declare dso_local i32 @cvmx_dprintf(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__cvmx_helper_board_link_get(%struct.TYPE_9__* sret, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
