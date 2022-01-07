; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_find_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_find_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_data = type { i32 }
%struct.auth_zone = type { i64, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.auth_zone* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.auth_data* (%struct.auth_zone*, i32*, i64)* @az_find_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.auth_data* @az_find_name(%struct.auth_zone* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.auth_zone*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.auth_zone, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.auth_zone* %7, %struct.auth_zone** %9, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %7, i32 0, i32 3
  store i32* %10, i32** %11, align 8
  %12 = load i64, i64* %6, align 8
  %13 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %7, i32 0, i32 0
  store i64 %12, i64* %13, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @dname_count_labels(i32* %14)
  %16 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %7, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %18 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %17, i32 0, i32 1
  %19 = call i64 @rbtree_search(i32* %18, %struct.auth_zone* %7)
  %20 = inttoptr i64 %19 to %struct.auth_data*
  ret %struct.auth_data* %20
}

declare dso_local i32 @dname_count_labels(i32*) #1

declare dso_local i64 @rbtree_search(i32*, %struct.auth_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
