; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/edns-subnet/extr_addrtree.c_purge_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/edns-subnet/extr_addrtree.c_purge_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrtree = type { i32, i32 }
%struct.addrnode = type { i32, %struct.addrnode*, %struct.TYPE_2__*, %struct.addrnode**, %struct.addrnode* }
%struct.TYPE_2__ = type { %struct.addrnode** }
%struct.addredge = type { i32, %struct.addredge*, %struct.TYPE_2__*, %struct.addredge**, %struct.addredge* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.addrtree*, %struct.addrnode*)* @purge_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @purge_node(%struct.addrtree* %0, %struct.addrnode* %1) #0 {
  %3 = alloca %struct.addrtree*, align 8
  %4 = alloca %struct.addrnode*, align 8
  %5 = alloca %struct.addredge*, align 8
  %6 = alloca %struct.addredge*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.addrtree* %0, %struct.addrtree** %3, align 8
  store %struct.addrnode* %1, %struct.addrnode** %4, align 8
  store %struct.addredge* null, %struct.addredge** %6, align 8
  %9 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %10 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %9, i32 0, i32 3
  %11 = load %struct.addrnode**, %struct.addrnode*** %10, align 8
  %12 = getelementptr inbounds %struct.addrnode*, %struct.addrnode** %11, i64 0
  %13 = load %struct.addrnode*, %struct.addrnode** %12, align 8
  %14 = icmp ne %struct.addrnode* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %17 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %16, i32 0, i32 3
  %18 = load %struct.addrnode**, %struct.addrnode*** %17, align 8
  %19 = getelementptr inbounds %struct.addrnode*, %struct.addrnode** %18, i64 1
  %20 = load %struct.addrnode*, %struct.addrnode** %19, align 8
  %21 = icmp ne %struct.addrnode* %20, null
  br label %22

22:                                               ; preds = %15, %2
  %23 = phi i1 [ false, %2 ], [ %21, %15 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %8, align 4
  %25 = load %struct.addrtree*, %struct.addrtree** %3, align 8
  %26 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %27 = call i32 @clean_node(%struct.addrtree* %25, %struct.addrnode* %26)
  %28 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %29 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %28, i32 0, i32 4
  %30 = load %struct.addrnode*, %struct.addrnode** %29, align 8
  %31 = bitcast %struct.addrnode* %30 to %struct.addredge*
  store %struct.addredge* %31, %struct.addredge** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %22
  %35 = load %struct.addredge*, %struct.addredge** %5, align 8
  %36 = icmp ne %struct.addredge* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34, %22
  br label %105

38:                                               ; preds = %34
  %39 = load %struct.addrtree*, %struct.addrtree** %3, align 8
  %40 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 4
  %43 = load %struct.addredge*, %struct.addredge** %5, align 8
  %44 = getelementptr inbounds %struct.addredge, %struct.addredge* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %7, align 4
  %46 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %47 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %46, i32 0, i32 3
  %48 = load %struct.addrnode**, %struct.addrnode*** %47, align 8
  %49 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %50 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %49, i32 0, i32 3
  %51 = load %struct.addrnode**, %struct.addrnode*** %50, align 8
  %52 = getelementptr inbounds %struct.addrnode*, %struct.addrnode** %51, i64 0
  %53 = load %struct.addrnode*, %struct.addrnode** %52, align 8
  %54 = icmp ne %struct.addrnode* %53, null
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.addrnode*, %struct.addrnode** %48, i64 %57
  %59 = load %struct.addrnode*, %struct.addrnode** %58, align 8
  %60 = bitcast %struct.addrnode* %59 to %struct.addredge*
  store %struct.addredge* %60, %struct.addredge** %6, align 8
  %61 = load %struct.addredge*, %struct.addredge** %6, align 8
  %62 = icmp ne %struct.addredge* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %38
  %64 = load %struct.addredge*, %struct.addredge** %5, align 8
  %65 = getelementptr inbounds %struct.addredge, %struct.addredge* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load %struct.addredge*, %struct.addredge** %6, align 8
  %68 = getelementptr inbounds %struct.addredge, %struct.addredge* %67, i32 0, i32 2
  store %struct.TYPE_2__* %66, %struct.TYPE_2__** %68, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.addredge*, %struct.addredge** %6, align 8
  %71 = getelementptr inbounds %struct.addredge, %struct.addredge* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %63, %38
  %73 = load %struct.addredge*, %struct.addredge** %6, align 8
  %74 = bitcast %struct.addredge* %73 to %struct.addrnode*
  %75 = load %struct.addredge*, %struct.addredge** %5, align 8
  %76 = getelementptr inbounds %struct.addredge, %struct.addredge* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load %struct.addrnode**, %struct.addrnode*** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.addrnode*, %struct.addrnode** %79, i64 %81
  store %struct.addrnode* %74, %struct.addrnode** %82, align 8
  %83 = load %struct.addrtree*, %struct.addrtree** %3, align 8
  %84 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %85 = call i64 @node_size(%struct.addrtree* %83, %struct.addrnode* %84)
  %86 = load %struct.addrtree*, %struct.addrtree** %3, align 8
  %87 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = sub nsw i64 %89, %85
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %87, align 4
  %92 = load %struct.addredge*, %struct.addredge** %5, align 8
  %93 = getelementptr inbounds %struct.addredge, %struct.addredge* %92, i32 0, i32 1
  %94 = load %struct.addredge*, %struct.addredge** %93, align 8
  %95 = bitcast %struct.addredge* %94 to %struct.addrnode*
  %96 = call i32 @free(%struct.addrnode* %95)
  %97 = load %struct.addredge*, %struct.addredge** %5, align 8
  %98 = bitcast %struct.addredge* %97 to %struct.addrnode*
  %99 = call i32 @free(%struct.addrnode* %98)
  %100 = load %struct.addrtree*, %struct.addrtree** %3, align 8
  %101 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %102 = call i32 @lru_pop(%struct.addrtree* %100, %struct.addrnode* %101)
  %103 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %104 = call i32 @free(%struct.addrnode* %103)
  br label %105

105:                                              ; preds = %72, %37
  ret void
}

declare dso_local i32 @clean_node(%struct.addrtree*, %struct.addrnode*) #1

declare dso_local i64 @node_size(%struct.addrtree*, %struct.addrnode*) #1

declare dso_local i32 @free(%struct.addrnode*) #1

declare dso_local i32 @lru_pop(%struct.addrtree*, %struct.addrnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
