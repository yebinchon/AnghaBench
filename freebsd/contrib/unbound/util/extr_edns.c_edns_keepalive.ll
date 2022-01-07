; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_edns.c_edns_keepalive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_edns.c_edns_keepalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edns_data = type { i32 }
%struct.comm_point = type { i64, i32, i32 }
%struct.regional = type { i32 }

@comm_udp = common dso_local global i64 0, align 8
@LDNS_EDNS_KEEPALIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edns_data*, %struct.edns_data*, %struct.comm_point*, %struct.regional*)* @edns_keepalive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edns_keepalive(%struct.edns_data* %0, %struct.edns_data* %1, %struct.comm_point* %2, %struct.regional* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.edns_data*, align 8
  %7 = alloca %struct.edns_data*, align 8
  %8 = alloca %struct.comm_point*, align 8
  %9 = alloca %struct.regional*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x i64], align 16
  store %struct.edns_data* %0, %struct.edns_data** %6, align 8
  store %struct.edns_data* %1, %struct.edns_data** %7, align 8
  store %struct.comm_point* %2, %struct.comm_point** %8, align 8
  store %struct.regional* %3, %struct.regional** %9, align 8
  %12 = load %struct.comm_point*, %struct.comm_point** %8, align 8
  %13 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @comm_udp, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %56

18:                                               ; preds = %4
  %19 = load %struct.comm_point*, %struct.comm_point** %8, align 8
  %20 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = load %struct.edns_data*, %struct.edns_data** %7, align 8
  %25 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @LDNS_EDNS_KEEPALIVE, align 4
  %28 = call i64 @edns_opt_list_find(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %23, %18
  %31 = load %struct.comm_point*, %struct.comm_point** %8, align 8
  %32 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %33, 100
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = ashr i32 %35, 8
  %37 = and i32 %36, 255
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  store i64 %38, i64* %39, align 16
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %40, 255
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  store i64 %42, i64* %43, align 8
  %44 = load %struct.edns_data*, %struct.edns_data** %6, align 8
  %45 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %44, i32 0, i32 0
  %46 = load i32, i32* @LDNS_EDNS_KEEPALIVE, align 4
  %47 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %48 = load %struct.regional*, %struct.regional** %9, align 8
  %49 = call i32 @edns_opt_list_append(i32* %45, i32 %46, i32 16, i64* %47, %struct.regional* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %56

52:                                               ; preds = %30
  %53 = load %struct.comm_point*, %struct.comm_point** %8, align 8
  %54 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %53, i32 0, i32 1
  store i32 1, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %23
  store i32 1, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %51, %17
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i64 @edns_opt_list_find(i32, i32) #1

declare dso_local i32 @edns_opt_list_append(i32*, i32, i32, i64*, %struct.regional*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
