; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_state_bound.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_state_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.interface_info = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, i32, i32, %struct.TYPE_12__, %struct.TYPE_11__*, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@state = common dso_local global i32 0, align 4
@S_BOUND = common dso_local global i32 0, align 4
@DHO_DHCP_SERVER_IDENTIFIER = common dso_local global i64 0, align 8
@iaddr_broadcast = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@cur_time = common dso_local global i32 0, align 4
@S_RENEWING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @state_bound(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.interface_info*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.interface_info*
  store %struct.interface_info* %5, %struct.interface_info** %3, align 8
  %6 = load i32, i32* @state, align 4
  %7 = load i32, i32* @S_BOUND, align 4
  %8 = call i32 @ASSERT_STATE(i32 %6, i32 %7)
  %9 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %10 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %11 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %10, i32 0, i32 0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 5
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = call i32 @make_request(%struct.interface_info* %9, %struct.TYPE_11__* %14)
  %16 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %17 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %23 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 7
  store i32 %21, i32* %25, align 4
  %26 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %27 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %26, i32 0, i32 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 5
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = load i64, i64* @DHO_DHCP_SERVER_IDENTIFIER, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %38, label %62

38:                                               ; preds = %1
  %39 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %40 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %46 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 5
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = load i64, i64* @DHO_DHCP_SERVER_IDENTIFIER, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @memcpy(i32 %44, i32 %55, i32 4)
  %57 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %58 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %57, i32 0, i32 0
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  store i32 4, i32* %61, align 8
  br label %68

62:                                               ; preds = %1
  %63 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %64 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %63, i32 0, i32 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 4
  %67 = bitcast %struct.TYPE_12__* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 4 bitcast (%struct.TYPE_12__* @iaddr_broadcast to i8*), i64 8, i1 false)
  br label %68

68:                                               ; preds = %62, %38
  %69 = load i32, i32* @cur_time, align 4
  %70 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %71 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %70, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 3
  store i32 %69, i32* %73, align 4
  %74 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %75 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %82 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %81, i32 0, i32 0
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  store i32 %80, i32* %84, align 8
  %85 = load i32, i32* @S_RENEWING, align 4
  %86 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %87 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %86, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 8
  %90 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %91 = call i32 @send_request(%struct.interface_info* %90)
  ret void
}

declare dso_local i32 @ASSERT_STATE(i32, i32) #1

declare dso_local i32 @make_request(%struct.interface_info*, %struct.TYPE_11__*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @send_request(%struct.interface_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
