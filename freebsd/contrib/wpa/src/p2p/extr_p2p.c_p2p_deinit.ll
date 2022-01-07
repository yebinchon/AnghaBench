; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { %struct.TYPE_4__, i32, %struct.p2p_data*, %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.p2p_data* }
%struct.TYPE_3__ = type { %struct.p2p_data*, %struct.p2p_data*, %struct.p2p_data*, %struct.p2p_data*, %struct.p2p_data*, %struct.p2p_data* }

@p2p_scan_timeout = common dso_local global i32 0, align 4
@p2p_go_neg_start = common dso_local global i32 0, align 4
@p2p_go_neg_wait_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_deinit(%struct.p2p_data* %0) #0 {
  %2 = alloca %struct.p2p_data*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %2, align 8
  %3 = load i32, i32* @p2p_scan_timeout, align 4
  %4 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %5 = call i32 @eloop_cancel_timeout(i32 %3, %struct.p2p_data* %4, i32* null)
  %6 = load i32, i32* @p2p_go_neg_start, align 4
  %7 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %8 = call i32 @eloop_cancel_timeout(i32 %6, %struct.p2p_data* %7, i32* null)
  %9 = load i32, i32* @p2p_go_neg_wait_timeout, align 4
  %10 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %11 = call i32 @eloop_cancel_timeout(i32 %9, %struct.p2p_data* %10, i32* null)
  %12 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %13 = call i32 @p2p_flush(%struct.p2p_data* %12)
  %14 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %15 = call i32 @p2p_free_req_dev_types(%struct.p2p_data* %14)
  %16 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %17 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %16, i32 0, i32 3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 5
  %20 = load %struct.p2p_data*, %struct.p2p_data** %19, align 8
  %21 = call i32 @os_free(%struct.p2p_data* %20)
  %22 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %23 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %22, i32 0, i32 3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 4
  %26 = load %struct.p2p_data*, %struct.p2p_data** %25, align 8
  %27 = call i32 @os_free(%struct.p2p_data* %26)
  %28 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %29 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %28, i32 0, i32 3
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = load %struct.p2p_data*, %struct.p2p_data** %31, align 8
  %33 = call i32 @os_free(%struct.p2p_data* %32)
  %34 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %35 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %34, i32 0, i32 3
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load %struct.p2p_data*, %struct.p2p_data** %37, align 8
  %39 = call i32 @os_free(%struct.p2p_data* %38)
  %40 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %41 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %40, i32 0, i32 3
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load %struct.p2p_data*, %struct.p2p_data** %43, align 8
  %45 = call i32 @os_free(%struct.p2p_data* %44)
  %46 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %47 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %46, i32 0, i32 3
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load %struct.p2p_data*, %struct.p2p_data** %49, align 8
  %51 = call i32 @os_free(%struct.p2p_data* %50)
  %52 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %53 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %52, i32 0, i32 2
  %54 = load %struct.p2p_data*, %struct.p2p_data** %53, align 8
  %55 = call i32 @os_free(%struct.p2p_data* %54)
  %56 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %57 = call i32 @p2ps_prov_free(%struct.p2p_data* %56)
  %58 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %59 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @wpabuf_free(i32 %60)
  %62 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %63 = call i32 @p2p_remove_wps_vendor_extensions(%struct.p2p_data* %62)
  %64 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %65 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.p2p_data*, %struct.p2p_data** %66, align 8
  %68 = call i32 @os_free(%struct.p2p_data* %67)
  %69 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %70 = call i32 @p2p_service_flush_asp(%struct.p2p_data* %69)
  %71 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %72 = call i32 @os_free(%struct.p2p_data* %71)
  ret void
}

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.p2p_data*, i32*) #1

declare dso_local i32 @p2p_flush(%struct.p2p_data*) #1

declare dso_local i32 @p2p_free_req_dev_types(%struct.p2p_data*) #1

declare dso_local i32 @os_free(%struct.p2p_data*) #1

declare dso_local i32 @p2ps_prov_free(%struct.p2p_data*) #1

declare dso_local i32 @wpabuf_free(i32) #1

declare dso_local i32 @p2p_remove_wps_vendor_extensions(%struct.p2p_data*) #1

declare dso_local i32 @p2p_service_flush_asp(%struct.p2p_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
