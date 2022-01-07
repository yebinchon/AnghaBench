; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_das.c_radius_das_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_das.c_radius_das_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_das_data = type { i64, %struct.radius_das_data* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radius_das_deinit(%struct.radius_das_data* %0) #0 {
  %2 = alloca %struct.radius_das_data*, align 8
  store %struct.radius_das_data* %0, %struct.radius_das_data** %2, align 8
  %3 = load %struct.radius_das_data*, %struct.radius_das_data** %2, align 8
  %4 = icmp eq %struct.radius_das_data* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %27

6:                                                ; preds = %1
  %7 = load %struct.radius_das_data*, %struct.radius_das_data** %2, align 8
  %8 = getelementptr inbounds %struct.radius_das_data, %struct.radius_das_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sge i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = load %struct.radius_das_data*, %struct.radius_das_data** %2, align 8
  %13 = getelementptr inbounds %struct.radius_das_data, %struct.radius_das_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @eloop_unregister_read_sock(i64 %14)
  %16 = load %struct.radius_das_data*, %struct.radius_das_data** %2, align 8
  %17 = getelementptr inbounds %struct.radius_das_data, %struct.radius_das_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @close(i64 %18)
  br label %20

20:                                               ; preds = %11, %6
  %21 = load %struct.radius_das_data*, %struct.radius_das_data** %2, align 8
  %22 = getelementptr inbounds %struct.radius_das_data, %struct.radius_das_data* %21, i32 0, i32 1
  %23 = load %struct.radius_das_data*, %struct.radius_das_data** %22, align 8
  %24 = call i32 @os_free(%struct.radius_das_data* %23)
  %25 = load %struct.radius_das_data*, %struct.radius_das_data** %2, align 8
  %26 = call i32 @os_free(%struct.radius_das_data* %25)
  br label %27

27:                                               ; preds = %20, %5
  ret void
}

declare dso_local i32 @eloop_unregister_read_sock(i64) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @os_free(%struct.radius_das_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
