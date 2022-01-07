; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/edns-subnet/extr_addrtree.c_lru_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/edns-subnet/extr_addrtree.c_lru_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrtree = type { i64, i64, %struct.addrnode* }
%struct.addrnode = type { %struct.TYPE_2__*, i32, i32** }
%struct.TYPE_2__ = type { %struct.addrnode* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.addrtree*)* @lru_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lru_cleanup(%struct.addrtree* %0) #0 {
  %2 = alloca %struct.addrtree*, align 8
  %3 = alloca %struct.addrnode*, align 8
  %4 = alloca %struct.addrnode*, align 8
  %5 = alloca i32, align 4
  store %struct.addrtree* %0, %struct.addrtree** %2, align 8
  %6 = load %struct.addrtree*, %struct.addrtree** %2, align 8
  %7 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %95

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %94, %50, %11
  %13 = load %struct.addrtree*, %struct.addrtree** %2, align 8
  %14 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.addrtree*, %struct.addrtree** %2, align 8
  %17 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %15, %18
  br i1 %19, label %20, label %95

20:                                               ; preds = %12
  %21 = load %struct.addrtree*, %struct.addrtree** %2, align 8
  %22 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %21, i32 0, i32 2
  %23 = load %struct.addrnode*, %struct.addrnode** %22, align 8
  store %struct.addrnode* %23, %struct.addrnode** %3, align 8
  %24 = load %struct.addrnode*, %struct.addrnode** %3, align 8
  %25 = icmp ne %struct.addrnode* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %95

27:                                               ; preds = %20
  %28 = load %struct.addrnode*, %struct.addrnode** %3, align 8
  %29 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %28, i32 0, i32 2
  %30 = load i32**, i32*** %29, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = load %struct.addrnode*, %struct.addrnode** %3, align 8
  %36 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %35, i32 0, i32 2
  %37 = load i32**, i32*** %36, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i64 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  %41 = zext i1 %40 to i32
  %42 = add nsw i32 %34, %41
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %50, label %45

45:                                               ; preds = %27
  %46 = load %struct.addrnode*, %struct.addrnode** %3, align 8
  %47 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = icmp ne %struct.TYPE_2__* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %45, %27
  %51 = load %struct.addrtree*, %struct.addrtree** %2, align 8
  %52 = load %struct.addrnode*, %struct.addrnode** %3, align 8
  %53 = call i32 @lru_update(%struct.addrtree* %51, %struct.addrnode* %52)
  br label %12

54:                                               ; preds = %45
  %55 = load %struct.addrnode*, %struct.addrnode** %3, align 8
  %56 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.addrnode*, %struct.addrnode** %58, align 8
  store %struct.addrnode* %59, %struct.addrnode** %4, align 8
  %60 = load %struct.addrtree*, %struct.addrtree** %2, align 8
  %61 = load %struct.addrnode*, %struct.addrnode** %3, align 8
  %62 = call i32 @purge_node(%struct.addrtree* %60, %struct.addrnode* %61)
  %63 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %64 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %63, i32 0, i32 2
  %65 = load i32**, i32*** %64, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  %69 = zext i1 %68 to i32
  %70 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %71 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %70, i32 0, i32 2
  %72 = load i32**, i32*** %71, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i64 1
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  %76 = zext i1 %75 to i32
  %77 = add nsw i32 %69, %76
  store i32 %77, i32* %5, align 4
  %78 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %79 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %54
  %83 = load i32, i32* %5, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %87 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = icmp ne %struct.TYPE_2__* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load %struct.addrtree*, %struct.addrtree** %2, align 8
  %92 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %93 = call i32 @purge_node(%struct.addrtree* %91, %struct.addrnode* %92)
  br label %94

94:                                               ; preds = %90, %85, %82, %54
  br label %12

95:                                               ; preds = %10, %26, %12
  ret void
}

declare dso_local i32 @lru_update(%struct.addrtree*, %struct.addrnode*) #1

declare dso_local i32 @purge_node(%struct.addrtree*, %struct.addrnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
