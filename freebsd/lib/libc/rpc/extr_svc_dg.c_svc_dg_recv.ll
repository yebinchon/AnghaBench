; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_dg.c_svc_dg_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_dg.c_svc_dg_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_12__, %struct.sockaddr_in }
%struct.TYPE_12__ = type { i32, i64 }
%struct.sockaddr_in = type { i32 }
%struct.rpc_msg = type { i32 }
%struct.svc_dg_data = type { i32*, i32, %struct.TYPE_11__, i32, %struct.TYPE_13__ }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.sockaddr_storage = type { i64 }
%struct.sockaddr = type { i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@XDR_DECODE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.rpc_msg*)* @svc_dg_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_dg_recv(%struct.TYPE_14__* %0, %struct.rpc_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.rpc_msg*, align 8
  %6 = alloca %struct.svc_dg_data*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sockaddr_storage, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.rpc_msg* %1, %struct.rpc_msg** %5, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = call %struct.svc_dg_data* @su_data(%struct.TYPE_14__* %13)
  store %struct.svc_dg_data* %14, %struct.svc_dg_data** %6, align 8
  %15 = load %struct.svc_dg_data*, %struct.svc_dg_data** %6, align 8
  %16 = getelementptr inbounds %struct.svc_dg_data, %struct.svc_dg_data* %15, i32 0, i32 4
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %7, align 8
  br label %17

17:                                               ; preds = %43, %2
  store i32 8, i32* %10, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = call i32 @rpc_buffer(%struct.TYPE_14__* %21)
  %23 = load %struct.svc_dg_data*, %struct.svc_dg_data** %6, align 8
  %24 = getelementptr inbounds %struct.svc_dg_data, %struct.svc_dg_data* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = bitcast %struct.sockaddr_storage* %9 to i8*
  %27 = bitcast i8* %26 to %struct.sockaddr*
  %28 = load %struct.svc_dg_data*, %struct.svc_dg_data** %6, align 8
  %29 = getelementptr inbounds %struct.svc_dg_data, %struct.svc_dg_data* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.sockaddr*
  %33 = load %struct.svc_dg_data*, %struct.svc_dg_data** %6, align 8
  %34 = getelementptr inbounds %struct.svc_dg_data, %struct.svc_dg_data* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = call i32 @svc_dg_recvfrom(i32 %20, i32 %22, i32 %25, %struct.sockaddr* %27, i32* %10, %struct.sockaddr* %32, i32* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %44

39:                                               ; preds = %17
  %40 = load i64, i64* @errno, align 8
  %41 = load i64, i64* @EINTR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %17

44:                                               ; preds = %39, %17
  %45 = load i32, i32* %12, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 16
  br i1 %49, label %50, label %52

50:                                               ; preds = %47, %44
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %3, align 4
  br label %132

52:                                               ; preds = %47
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %85

59:                                               ; preds = %52
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @mem_free(i64 %69, i32 %73)
  br label %75

75:                                               ; preds = %65, %59
  %76 = load i32, i32* %10, align 4
  %77 = call i64 @mem_alloc(i32 %76)
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  store i64 %77, i64* %80, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  br label %85

85:                                               ; preds = %75, %52
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @memcpy(i64 %89, %struct.sockaddr_storage* %9, i32 %90)
  %92 = load i32, i32* @XDR_DECODE, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %96 = call i32 @XDR_SETPOS(%struct.TYPE_13__* %95, i32 0)
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %98 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %99 = call i32 @xdr_callmsg(%struct.TYPE_13__* %97, %struct.rpc_msg* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %85
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %3, align 4
  br label %132

103:                                              ; preds = %85
  %104 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %105 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.svc_dg_data*, %struct.svc_dg_data** %6, align 8
  %108 = getelementptr inbounds %struct.svc_dg_data, %struct.svc_dg_data* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 8
  %109 = load %struct.svc_dg_data*, %struct.svc_dg_data** %6, align 8
  %110 = getelementptr inbounds %struct.svc_dg_data, %struct.svc_dg_data* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %130

113:                                              ; preds = %103
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %115 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %116 = call i64 @cache_get(%struct.TYPE_14__* %114, %struct.rpc_msg* %115, i8** %8, i64* %11)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %113
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i8*, i8** %8, align 8
  %123 = load i64, i64* %11, align 8
  %124 = bitcast %struct.sockaddr_storage* %9 to i8*
  %125 = bitcast i8* %124 to %struct.sockaddr*
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @_sendto(i32 %121, i8* %122, i64 %123, i32 0, %struct.sockaddr* %125, i32 %126)
  %128 = load i32, i32* @FALSE, align 4
  store i32 %128, i32* %3, align 4
  br label %132

129:                                              ; preds = %113
  br label %130

130:                                              ; preds = %129, %103
  %131 = load i32, i32* @TRUE, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %130, %118, %101, %50
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local %struct.svc_dg_data* @su_data(%struct.TYPE_14__*) #1

declare dso_local i32 @svc_dg_recvfrom(i32, i32, i32, %struct.sockaddr*, i32*, %struct.sockaddr*, i32*) #1

declare dso_local i32 @rpc_buffer(%struct.TYPE_14__*) #1

declare dso_local i32 @mem_free(i64, i32) #1

declare dso_local i64 @mem_alloc(i32) #1

declare dso_local i32 @memcpy(i64, %struct.sockaddr_storage*, i32) #1

declare dso_local i32 @XDR_SETPOS(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @xdr_callmsg(%struct.TYPE_13__*, %struct.rpc_msg*) #1

declare dso_local i64 @cache_get(%struct.TYPE_14__*, %struct.rpc_msg*, i8**, i64*) #1

declare dso_local i32 @_sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
