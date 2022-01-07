; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/edns-subnet/extr_addrtree.c_addrtree_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/edns-subnet/extr_addrtree.c_addrtree_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrtree = type { i32, %struct.addrtree*, %struct.addrtree*, %struct.addrtree*, %struct.addrtree*, %struct.addrtree* }
%struct.addrnode = type { i32, %struct.addrnode*, %struct.addrnode*, %struct.addrnode*, %struct.addrnode*, %struct.addrnode* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addrtree_delete(%struct.addrtree* %0) #0 {
  %2 = alloca %struct.addrtree*, align 8
  %3 = alloca %struct.addrnode*, align 8
  store %struct.addrtree* %0, %struct.addrtree** %2, align 8
  %4 = load %struct.addrtree*, %struct.addrtree** %2, align 8
  %5 = icmp ne %struct.addrtree* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %74

7:                                                ; preds = %1
  %8 = load %struct.addrtree*, %struct.addrtree** %2, align 8
  %9 = load %struct.addrtree*, %struct.addrtree** %2, align 8
  %10 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %9, i32 0, i32 5
  %11 = load %struct.addrtree*, %struct.addrtree** %10, align 8
  %12 = call i32 @clean_node(%struct.addrtree* %8, %struct.addrtree* %11)
  %13 = load %struct.addrtree*, %struct.addrtree** %2, align 8
  %14 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %13, i32 0, i32 5
  %15 = load %struct.addrtree*, %struct.addrtree** %14, align 8
  %16 = call i32 @free(%struct.addrtree* %15)
  %17 = load %struct.addrtree*, %struct.addrtree** %2, align 8
  %18 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = sub i64 %20, 48
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %18, align 8
  br label %23

23:                                               ; preds = %29, %7
  %24 = load %struct.addrtree*, %struct.addrtree** %2, align 8
  %25 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %24, i32 0, i32 4
  %26 = load %struct.addrtree*, %struct.addrtree** %25, align 8
  %27 = bitcast %struct.addrtree* %26 to %struct.addrnode*
  store %struct.addrnode* %27, %struct.addrnode** %3, align 8
  %28 = icmp ne %struct.addrnode* %27, null
  br i1 %28, label %29, label %65

29:                                               ; preds = %23
  %30 = load %struct.addrnode*, %struct.addrnode** %3, align 8
  %31 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %30, i32 0, i32 3
  %32 = load %struct.addrnode*, %struct.addrnode** %31, align 8
  %33 = bitcast %struct.addrnode* %32 to %struct.addrtree*
  %34 = load %struct.addrtree*, %struct.addrtree** %2, align 8
  %35 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %34, i32 0, i32 4
  store %struct.addrtree* %33, %struct.addrtree** %35, align 8
  %36 = load %struct.addrtree*, %struct.addrtree** %2, align 8
  %37 = load %struct.addrnode*, %struct.addrnode** %3, align 8
  %38 = bitcast %struct.addrnode* %37 to %struct.addrtree*
  %39 = call i32 @clean_node(%struct.addrtree* %36, %struct.addrtree* %38)
  %40 = load %struct.addrtree*, %struct.addrtree** %2, align 8
  %41 = load %struct.addrnode*, %struct.addrnode** %3, align 8
  %42 = bitcast %struct.addrnode* %41 to %struct.addrtree*
  %43 = call i64 @node_size(%struct.addrtree* %40, %struct.addrtree* %42)
  %44 = load %struct.addrtree*, %struct.addrtree** %2, align 8
  %45 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %47, %43
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 8
  %50 = load %struct.addrnode*, %struct.addrnode** %3, align 8
  %51 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %50, i32 0, i32 1
  %52 = load %struct.addrnode*, %struct.addrnode** %51, align 8
  %53 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %52, i32 0, i32 2
  %54 = load %struct.addrnode*, %struct.addrnode** %53, align 8
  %55 = bitcast %struct.addrnode* %54 to %struct.addrtree*
  %56 = call i32 @free(%struct.addrtree* %55)
  %57 = load %struct.addrnode*, %struct.addrnode** %3, align 8
  %58 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %57, i32 0, i32 1
  %59 = load %struct.addrnode*, %struct.addrnode** %58, align 8
  %60 = bitcast %struct.addrnode* %59 to %struct.addrtree*
  %61 = call i32 @free(%struct.addrtree* %60)
  %62 = load %struct.addrnode*, %struct.addrnode** %3, align 8
  %63 = bitcast %struct.addrnode* %62 to %struct.addrtree*
  %64 = call i32 @free(%struct.addrtree* %63)
  br label %23

65:                                               ; preds = %23
  %66 = load %struct.addrtree*, %struct.addrtree** %2, align 8
  %67 = call i32 @addrtree_size(%struct.addrtree* %66)
  %68 = sext i32 %67 to i64
  %69 = icmp eq i64 48, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @log_assert(i32 %70)
  %72 = load %struct.addrtree*, %struct.addrtree** %2, align 8
  %73 = call i32 @free(%struct.addrtree* %72)
  br label %74

74:                                               ; preds = %65, %6
  ret void
}

declare dso_local i32 @clean_node(%struct.addrtree*, %struct.addrtree*) #1

declare dso_local i32 @free(%struct.addrtree*) #1

declare dso_local i64 @node_size(%struct.addrtree*, %struct.addrtree*) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @addrtree_size(%struct.addrtree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
