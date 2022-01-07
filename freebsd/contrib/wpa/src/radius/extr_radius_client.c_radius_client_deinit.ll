; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_client_data = type { %struct.radius_client_data*, %struct.radius_client_data* }

@radius_retry_primary_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radius_client_deinit(%struct.radius_client_data* %0) #0 {
  %2 = alloca %struct.radius_client_data*, align 8
  store %struct.radius_client_data* %0, %struct.radius_client_data** %2, align 8
  %3 = load %struct.radius_client_data*, %struct.radius_client_data** %2, align 8
  %4 = icmp ne %struct.radius_client_data* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %26

6:                                                ; preds = %1
  %7 = load %struct.radius_client_data*, %struct.radius_client_data** %2, align 8
  %8 = call i32 @radius_close_auth_sockets(%struct.radius_client_data* %7)
  %9 = load %struct.radius_client_data*, %struct.radius_client_data** %2, align 8
  %10 = call i32 @radius_close_acct_sockets(%struct.radius_client_data* %9)
  %11 = load i32, i32* @radius_retry_primary_timer, align 4
  %12 = load %struct.radius_client_data*, %struct.radius_client_data** %2, align 8
  %13 = call i32 @eloop_cancel_timeout(i32 %11, %struct.radius_client_data* %12, i32* null)
  %14 = load %struct.radius_client_data*, %struct.radius_client_data** %2, align 8
  %15 = call i32 @radius_client_flush(%struct.radius_client_data* %14, i32 0)
  %16 = load %struct.radius_client_data*, %struct.radius_client_data** %2, align 8
  %17 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %16, i32 0, i32 1
  %18 = load %struct.radius_client_data*, %struct.radius_client_data** %17, align 8
  %19 = call i32 @os_free(%struct.radius_client_data* %18)
  %20 = load %struct.radius_client_data*, %struct.radius_client_data** %2, align 8
  %21 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %20, i32 0, i32 0
  %22 = load %struct.radius_client_data*, %struct.radius_client_data** %21, align 8
  %23 = call i32 @os_free(%struct.radius_client_data* %22)
  %24 = load %struct.radius_client_data*, %struct.radius_client_data** %2, align 8
  %25 = call i32 @os_free(%struct.radius_client_data* %24)
  br label %26

26:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @radius_close_auth_sockets(%struct.radius_client_data*) #1

declare dso_local i32 @radius_close_acct_sockets(%struct.radius_client_data*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.radius_client_data*, i32*) #1

declare dso_local i32 @radius_client_flush(%struct.radius_client_data*, i32) #1

declare dso_local i32 @os_free(%struct.radius_client_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
