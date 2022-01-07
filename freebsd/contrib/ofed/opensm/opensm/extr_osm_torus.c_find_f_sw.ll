; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_find_f_sw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_find_f_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f_switch = type { i64 }
%struct.fabric = type { i32, %struct.f_switch** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.f_switch* (%struct.fabric*, i64)* @find_f_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.f_switch* @find_f_sw(%struct.fabric* %0, i64 %1) #0 {
  %3 = alloca %struct.f_switch*, align 8
  %4 = alloca %struct.fabric*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.f_switch*, align 8
  store %struct.fabric* %0, %struct.fabric** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.fabric*, %struct.fabric** %4, align 8
  %9 = getelementptr inbounds %struct.fabric, %struct.fabric* %8, i32 0, i32 1
  %10 = load %struct.f_switch**, %struct.f_switch*** %9, align 8
  %11 = icmp ne %struct.f_switch** %10, null
  br i1 %11, label %12, label %39

12:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %35, %12
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.fabric*, %struct.fabric** %4, align 8
  %16 = getelementptr inbounds %struct.fabric, %struct.fabric* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %13
  %20 = load %struct.fabric*, %struct.fabric** %4, align 8
  %21 = getelementptr inbounds %struct.fabric, %struct.fabric* %20, i32 0, i32 1
  %22 = load %struct.f_switch**, %struct.f_switch*** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.f_switch*, %struct.f_switch** %22, i64 %24
  %26 = load %struct.f_switch*, %struct.f_switch** %25, align 8
  store %struct.f_switch* %26, %struct.f_switch** %7, align 8
  %27 = load %struct.f_switch*, %struct.f_switch** %7, align 8
  %28 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %19
  %33 = load %struct.f_switch*, %struct.f_switch** %7, align 8
  store %struct.f_switch* %33, %struct.f_switch** %3, align 8
  br label %40

34:                                               ; preds = %19
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %6, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %13

38:                                               ; preds = %13
  br label %39

39:                                               ; preds = %38, %2
  store %struct.f_switch* null, %struct.f_switch** %3, align 8
  br label %40

40:                                               ; preds = %39, %32
  %41 = load %struct.f_switch*, %struct.f_switch** %3, align 8
  ret %struct.f_switch* %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
