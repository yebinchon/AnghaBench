; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_edns.c_apply_edns_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_edns.c_apply_edns_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edns_data = type { i32 }
%struct.config_file = type { i64 }
%struct.comm_point = type { i32 }
%struct.regional = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apply_edns_options(%struct.edns_data* %0, %struct.edns_data* %1, %struct.config_file* %2, %struct.comm_point* %3, %struct.regional* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.edns_data*, align 8
  %8 = alloca %struct.edns_data*, align 8
  %9 = alloca %struct.config_file*, align 8
  %10 = alloca %struct.comm_point*, align 8
  %11 = alloca %struct.regional*, align 8
  store %struct.edns_data* %0, %struct.edns_data** %7, align 8
  store %struct.edns_data* %1, %struct.edns_data** %8, align 8
  store %struct.config_file* %2, %struct.config_file** %9, align 8
  store %struct.comm_point* %3, %struct.comm_point** %10, align 8
  store %struct.regional* %4, %struct.regional** %11, align 8
  %12 = load %struct.config_file*, %struct.config_file** %9, align 8
  %13 = getelementptr inbounds %struct.config_file, %struct.config_file* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %5
  %17 = load %struct.edns_data*, %struct.edns_data** %7, align 8
  %18 = load %struct.edns_data*, %struct.edns_data** %8, align 8
  %19 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  %20 = load %struct.regional*, %struct.regional** %11, align 8
  %21 = call i32 @edns_keepalive(%struct.edns_data* %17, %struct.edns_data* %18, %struct.comm_point* %19, %struct.regional* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %25

24:                                               ; preds = %16, %5
  store i32 1, i32* %6, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i32, i32* %6, align 4
  ret i32 %26
}

declare dso_local i32 @edns_keepalive(%struct.edns_data*, %struct.edns_data*, %struct.comm_point*, %struct.regional*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
