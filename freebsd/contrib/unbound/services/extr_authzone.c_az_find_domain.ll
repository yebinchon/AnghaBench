; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_find_domain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_find_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.auth_zone* }
%struct.query_info = type { i32, i32 }
%struct.auth_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.auth_zone*, %struct.query_info*, i32*, %struct.auth_data**)* @az_find_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @az_find_domain(%struct.auth_zone* %0, %struct.query_info* %1, i32* %2, %struct.auth_data** %3) #0 {
  %5 = alloca %struct.auth_zone*, align 8
  %6 = alloca %struct.query_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.auth_data**, align 8
  %9 = alloca %struct.auth_zone, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %5, align 8
  store %struct.query_info* %1, %struct.query_info** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.auth_data** %3, %struct.auth_data*** %8, align 8
  %10 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.auth_zone* %9, %struct.auth_zone** %11, align 8
  %12 = load %struct.query_info*, %struct.query_info** %6, align 8
  %13 = getelementptr inbounds %struct.query_info, %struct.query_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %9, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load %struct.query_info*, %struct.query_info** %6, align 8
  %17 = getelementptr inbounds %struct.query_info, %struct.query_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %9, i32 0, i32 3
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %9, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dname_count_labels(i32 %21)
  %23 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %9, i32 0, i32 2
  store i32 %22, i32* %23, align 8
  %24 = load %struct.auth_zone*, %struct.auth_zone** %5, align 8
  %25 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %24, i32 0, i32 0
  %26 = load %struct.auth_data**, %struct.auth_data*** %8, align 8
  %27 = bitcast %struct.auth_data** %26 to i32**
  %28 = call i32 @rbtree_find_less_equal(i32* %25, %struct.auth_zone* %9, i32** %27)
  %29 = load i32*, i32** %7, align 8
  store i32 %28, i32* %29, align 4
  ret void
}

declare dso_local i32 @dname_count_labels(i32) #1

declare dso_local i32 @rbtree_find_less_equal(i32*, %struct.auth_zone*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
