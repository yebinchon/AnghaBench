; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_dg.c_svc_dg_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_dg.c_svc_dg_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, %struct.svc_dg_data* }
%struct.svc_dg_data = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, %struct.svc_dg_data* }
%struct.TYPE_11__ = type { i32, %struct.svc_dg_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @svc_dg_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_dg_destroy(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.svc_dg_data*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %4 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %5 = call %struct.svc_dg_data* @su_data(%struct.TYPE_13__* %4)
  store %struct.svc_dg_data* %5, %struct.svc_dg_data** %3, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %7 = call i32 @xprt_unregister(%struct.TYPE_13__* %6)
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @_close(i32 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.svc_dg_data*, %struct.svc_dg_data** %3, align 8
  %19 = getelementptr inbounds %struct.svc_dg_data, %struct.svc_dg_data* %18, i32 0, i32 2
  %20 = call i32 @XDR_DESTROY(i32* %19)
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %22 = call %struct.svc_dg_data* @rpc_buffer(%struct.TYPE_13__* %21)
  %23 = load %struct.svc_dg_data*, %struct.svc_dg_data** %3, align 8
  %24 = getelementptr inbounds %struct.svc_dg_data, %struct.svc_dg_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @mem_free(%struct.svc_dg_data* %22, i32 %25)
  %27 = load %struct.svc_dg_data*, %struct.svc_dg_data** %3, align 8
  %28 = getelementptr inbounds %struct.svc_dg_data, %struct.svc_dg_data* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load %struct.svc_dg_data*, %struct.svc_dg_data** %29, align 8
  %31 = icmp ne %struct.svc_dg_data* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %17
  %33 = load %struct.svc_dg_data*, %struct.svc_dg_data** %3, align 8
  %34 = getelementptr inbounds %struct.svc_dg_data, %struct.svc_dg_data* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load %struct.svc_dg_data*, %struct.svc_dg_data** %35, align 8
  %37 = load %struct.svc_dg_data*, %struct.svc_dg_data** %3, align 8
  %38 = getelementptr inbounds %struct.svc_dg_data, %struct.svc_dg_data* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @mem_free(%struct.svc_dg_data* %36, i32 %40)
  br label %42

42:                                               ; preds = %32, %17
  %43 = load %struct.svc_dg_data*, %struct.svc_dg_data** %3, align 8
  %44 = call i32 @mem_free(%struct.svc_dg_data* %43, i32 32)
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load %struct.svc_dg_data*, %struct.svc_dg_data** %47, align 8
  %49 = icmp ne %struct.svc_dg_data* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %42
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load %struct.svc_dg_data*, %struct.svc_dg_data** %53, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @mem_free(%struct.svc_dg_data* %54, i32 %58)
  br label %60

60:                                               ; preds = %50, %42
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load %struct.svc_dg_data*, %struct.svc_dg_data** %63, align 8
  %65 = icmp ne %struct.svc_dg_data* %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load %struct.svc_dg_data*, %struct.svc_dg_data** %69, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @mem_free(%struct.svc_dg_data* %70, i32 %74)
  br label %76

76:                                               ; preds = %66, %60
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @free(i32 %79)
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %82 = call i32 @svc_xprt_free(%struct.TYPE_13__* %81)
  ret void
}

declare dso_local %struct.svc_dg_data* @su_data(%struct.TYPE_13__*) #1

declare dso_local i32 @xprt_unregister(%struct.TYPE_13__*) #1

declare dso_local i32 @_close(i32) #1

declare dso_local i32 @XDR_DESTROY(i32*) #1

declare dso_local i32 @mem_free(%struct.svc_dg_data*, i32) #1

declare dso_local %struct.svc_dg_data* @rpc_buffer(%struct.TYPE_13__*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @svc_xprt_free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
