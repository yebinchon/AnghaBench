; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_server_data = type { i64, i64, i64, %struct.radius_server_data*, %struct.radius_server_data*, %struct.radius_server_data*, %struct.radius_server_data*, %struct.radius_server_data*, %struct.radius_server_data*, %struct.radius_server_data*, %struct.radius_server_data*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radius_server_deinit(%struct.radius_server_data* %0) #0 {
  %2 = alloca %struct.radius_server_data*, align 8
  store %struct.radius_server_data* %0, %struct.radius_server_data** %2, align 8
  %3 = load %struct.radius_server_data*, %struct.radius_server_data** %2, align 8
  %4 = icmp eq %struct.radius_server_data* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %72

6:                                                ; preds = %1
  %7 = load %struct.radius_server_data*, %struct.radius_server_data** %2, align 8
  %8 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sge i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = load %struct.radius_server_data*, %struct.radius_server_data** %2, align 8
  %13 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @eloop_unregister_read_sock(i64 %14)
  %16 = load %struct.radius_server_data*, %struct.radius_server_data** %2, align 8
  %17 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @close(i64 %18)
  br label %20

20:                                               ; preds = %11, %6
  %21 = load %struct.radius_server_data*, %struct.radius_server_data** %2, align 8
  %22 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.radius_server_data*, %struct.radius_server_data** %2, align 8
  %27 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @eloop_unregister_read_sock(i64 %28)
  %30 = load %struct.radius_server_data*, %struct.radius_server_data** %2, align 8
  %31 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @close(i64 %32)
  br label %34

34:                                               ; preds = %25, %20
  %35 = load %struct.radius_server_data*, %struct.radius_server_data** %2, align 8
  %36 = load %struct.radius_server_data*, %struct.radius_server_data** %2, align 8
  %37 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %36, i32 0, i32 11
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @radius_server_free_clients(%struct.radius_server_data* %35, i32 %38)
  %40 = load %struct.radius_server_data*, %struct.radius_server_data** %2, align 8
  %41 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %40, i32 0, i32 10
  %42 = load %struct.radius_server_data*, %struct.radius_server_data** %41, align 8
  %43 = call i32 @os_free(%struct.radius_server_data* %42)
  %44 = load %struct.radius_server_data*, %struct.radius_server_data** %2, align 8
  %45 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %44, i32 0, i32 9
  %46 = load %struct.radius_server_data*, %struct.radius_server_data** %45, align 8
  %47 = call i32 @os_free(%struct.radius_server_data* %46)
  %48 = load %struct.radius_server_data*, %struct.radius_server_data** %2, align 8
  %49 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %48, i32 0, i32 8
  %50 = load %struct.radius_server_data*, %struct.radius_server_data** %49, align 8
  %51 = call i32 @os_free(%struct.radius_server_data* %50)
  %52 = load %struct.radius_server_data*, %struct.radius_server_data** %2, align 8
  %53 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %52, i32 0, i32 7
  %54 = load %struct.radius_server_data*, %struct.radius_server_data** %53, align 8
  %55 = call i32 @os_free(%struct.radius_server_data* %54)
  %56 = load %struct.radius_server_data*, %struct.radius_server_data** %2, align 8
  %57 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %56, i32 0, i32 5
  %58 = load %struct.radius_server_data*, %struct.radius_server_data** %57, align 8
  %59 = call i32 @os_free(%struct.radius_server_data* %58)
  %60 = load %struct.radius_server_data*, %struct.radius_server_data** %2, align 8
  %61 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %60, i32 0, i32 4
  %62 = load %struct.radius_server_data*, %struct.radius_server_data** %61, align 8
  %63 = call i32 @os_free(%struct.radius_server_data* %62)
  %64 = load %struct.radius_server_data*, %struct.radius_server_data** %2, align 8
  %65 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %64, i32 0, i32 3
  %66 = load %struct.radius_server_data*, %struct.radius_server_data** %65, align 8
  %67 = call i32 @os_free(%struct.radius_server_data* %66)
  %68 = load %struct.radius_server_data*, %struct.radius_server_data** %2, align 8
  %69 = call i32 @radius_server_erp_flush(%struct.radius_server_data* %68)
  %70 = load %struct.radius_server_data*, %struct.radius_server_data** %2, align 8
  %71 = call i32 @os_free(%struct.radius_server_data* %70)
  br label %72

72:                                               ; preds = %34, %5
  ret void
}

declare dso_local i32 @eloop_unregister_read_sock(i64) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @radius_server_free_clients(%struct.radius_server_data*, i32) #1

declare dso_local i32 @os_free(%struct.radius_server_data*) #1

declare dso_local i32 @radius_server_erp_flush(%struct.radius_server_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
