; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_xfer_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_xfer_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { i64, i32, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.auth_xfer* }
%struct.auth_zones = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.auth_xfer* @auth_xfer_find(%struct.auth_zones* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.auth_zones*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.auth_xfer, align 8
  store %struct.auth_zones* %0, %struct.auth_zones** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.auth_xfer* %9, %struct.auth_xfer** %11, align 8
  %12 = load i32, i32* %8, align 4
  %13 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %9, i32 0, i32 3
  store i32 %12, i32* %13, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %9, i32 0, i32 2
  store i32* %14, i32** %15, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %9, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @dname_count_labels(i32* %18)
  %20 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %9, i32 0, i32 1
  store i32 %19, i32* %20, align 8
  %21 = load %struct.auth_zones*, %struct.auth_zones** %5, align 8
  %22 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %21, i32 0, i32 0
  %23 = call i64 @rbtree_search(i32* %22, %struct.auth_xfer* %9)
  %24 = inttoptr i64 %23 to %struct.auth_xfer*
  ret %struct.auth_xfer* %24
}

declare dso_local i32 @dname_count_labels(i32*) #1

declare dso_local i64 @rbtree_search(i32*, %struct.auth_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
