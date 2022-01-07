; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_dg.c_cache_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_dg.c_cache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i64, i32 }
%struct.rpc_msg = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_11__ = type { i64, i64, i64, i64, i8*, i64, %struct.TYPE_9__, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i64, i32 }
%struct.svc_dg_data = type { i64, i64 }
%struct.cl_cache = type { i32, i32, i32, %struct.TYPE_11__** }

@dupreq_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.rpc_msg*, i8**, i64*)* @cache_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_get(%struct.TYPE_12__* %0, %struct.rpc_msg* %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.rpc_msg*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.svc_dg_data*, align 8
  %13 = alloca %struct.cl_cache*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store %struct.rpc_msg* %1, %struct.rpc_msg** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %15 = call %struct.svc_dg_data* @su_data(%struct.TYPE_12__* %14)
  store %struct.svc_dg_data* %15, %struct.svc_dg_data** %12, align 8
  %16 = load %struct.svc_dg_data*, %struct.svc_dg_data** %12, align 8
  %17 = getelementptr inbounds %struct.svc_dg_data, %struct.svc_dg_data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.cl_cache*
  store %struct.cl_cache* %19, %struct.cl_cache** %13, align 8
  %20 = call i32 @mutex_lock(i32* @dupreq_lock)
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = load %struct.svc_dg_data*, %struct.svc_dg_data** %12, align 8
  %23 = getelementptr inbounds %struct.svc_dg_data, %struct.svc_dg_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @CACHE_LOC(%struct.TYPE_12__* %21, i64 %24)
  store i64 %25, i64* %10, align 8
  %26 = load %struct.cl_cache*, %struct.cl_cache** %13, align 8
  %27 = getelementptr inbounds %struct.cl_cache, %struct.cl_cache* %26, i32 0, i32 3
  %28 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %27, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %28, i64 %29
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %11, align 8
  br label %32

32:                                               ; preds = %106, %4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %34 = icmp ne %struct.TYPE_11__* %33, null
  br i1 %34, label %35, label %110

35:                                               ; preds = %32
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.svc_dg_data*, %struct.svc_dg_data** %12, align 8
  %40 = getelementptr inbounds %struct.svc_dg_data, %struct.svc_dg_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %105

43:                                               ; preds = %35
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.rpc_msg*, %struct.rpc_msg** %7, align 8
  %48 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %46, %50
  br i1 %51, label %52, label %105

52:                                               ; preds = %43
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.rpc_msg*, %struct.rpc_msg** %7, align 8
  %57 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %55, %59
  br i1 %60, label %61, label %105

61:                                               ; preds = %52
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.rpc_msg*, %struct.rpc_msg** %7, align 8
  %66 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %64, %68
  br i1 %69, label %70, label %105

70:                                               ; preds = %61
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %74, %78
  br i1 %79, label %80, label %105

80:                                               ; preds = %70
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 6
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @memcmp(i32 %84, i32 %88, i64 %92)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %80
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 4
  %98 = load i8*, i8** %97, align 8
  %99 = load i8**, i8*** %8, align 8
  store i8* %98, i8** %99, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = load i64*, i64** %9, align 8
  store i64 %102, i64* %103, align 8
  %104 = call i32 @mutex_unlock(i32* @dupreq_lock)
  store i32 1, i32* %5, align 4
  br label %133

105:                                              ; preds = %80, %70, %61, %52, %43, %35
  br label %106

106:                                              ; preds = %105
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 7
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  store %struct.TYPE_11__* %109, %struct.TYPE_11__** %11, align 8
  br label %32

110:                                              ; preds = %32
  %111 = load %struct.rpc_msg*, %struct.rpc_msg** %7, align 8
  %112 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  %116 = load %struct.cl_cache*, %struct.cl_cache** %13, align 8
  %117 = getelementptr inbounds %struct.cl_cache, %struct.cl_cache* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.rpc_msg*, %struct.rpc_msg** %7, align 8
  %119 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = load %struct.cl_cache*, %struct.cl_cache** %13, align 8
  %124 = getelementptr inbounds %struct.cl_cache, %struct.cl_cache* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load %struct.rpc_msg*, %struct.rpc_msg** %7, align 8
  %126 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i32
  %130 = load %struct.cl_cache*, %struct.cl_cache** %13, align 8
  %131 = getelementptr inbounds %struct.cl_cache, %struct.cl_cache* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  %132 = call i32 @mutex_unlock(i32* @dupreq_lock)
  store i32 0, i32* %5, align 4
  br label %133

133:                                              ; preds = %110, %95
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local %struct.svc_dg_data* @su_data(%struct.TYPE_12__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @CACHE_LOC(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
