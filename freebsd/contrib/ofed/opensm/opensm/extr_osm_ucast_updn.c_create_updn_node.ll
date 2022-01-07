; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_updn.c_create_updn_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_updn.c_create_updn_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.updn_node = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.updn_node* (%struct.TYPE_3__*)* @create_updn_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.updn_node* @create_updn_node(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.updn_node*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.updn_node*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = call %struct.updn_node* @malloc(i32 16)
  store %struct.updn_node* %5, %struct.updn_node** %4, align 8
  %6 = load %struct.updn_node*, %struct.updn_node** %4, align 8
  %7 = icmp ne %struct.updn_node* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.updn_node* null, %struct.updn_node** %2, align 8
  br label %25

9:                                                ; preds = %1
  %10 = load %struct.updn_node*, %struct.updn_node** %4, align 8
  %11 = call i32 @memset(%struct.updn_node* %10, i32 0, i32 16)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = load %struct.updn_node*, %struct.updn_node** %4, align 8
  %14 = getelementptr inbounds %struct.updn_node, %struct.updn_node* %13, i32 0, i32 2
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %14, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @osm_node_get_node_guid(i32 %17)
  %19 = call i32 @cl_ntoh64(i32 %18)
  %20 = load %struct.updn_node*, %struct.updn_node** %4, align 8
  %21 = getelementptr inbounds %struct.updn_node, %struct.updn_node* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.updn_node*, %struct.updn_node** %4, align 8
  %23 = getelementptr inbounds %struct.updn_node, %struct.updn_node* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 8
  %24 = load %struct.updn_node*, %struct.updn_node** %4, align 8
  store %struct.updn_node* %24, %struct.updn_node** %2, align 8
  br label %25

25:                                               ; preds = %9, %8
  %26 = load %struct.updn_node*, %struct.updn_node** %2, align 8
  ret %struct.updn_node* %26
}

declare dso_local %struct.updn_node* @malloc(i32) #1

declare dso_local i32 @memset(%struct.updn_node*, i32, i32) #1

declare dso_local i32 @cl_ntoh64(i32) #1

declare dso_local i32 @osm_node_get_node_guid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
