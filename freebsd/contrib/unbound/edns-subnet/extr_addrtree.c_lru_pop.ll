; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/edns-subnet/extr_addrtree.c_lru_pop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/edns-subnet/extr_addrtree.c_lru_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrtree = type { %struct.addrnode*, %struct.addrnode* }
%struct.addrnode = type { %struct.addrnode*, %struct.addrnode* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.addrtree*, %struct.addrnode*)* @lru_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lru_pop(%struct.addrtree* %0, %struct.addrnode* %1) #0 {
  %3 = alloca %struct.addrtree*, align 8
  %4 = alloca %struct.addrnode*, align 8
  store %struct.addrtree* %0, %struct.addrtree** %3, align 8
  store %struct.addrnode* %1, %struct.addrnode** %4, align 8
  %5 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %6 = load %struct.addrtree*, %struct.addrtree** %3, align 8
  %7 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %6, i32 0, i32 1
  %8 = load %struct.addrnode*, %struct.addrnode** %7, align 8
  %9 = icmp eq %struct.addrnode* %5, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %2
  %11 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %12 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %11, i32 0, i32 1
  %13 = load %struct.addrnode*, %struct.addrnode** %12, align 8
  %14 = icmp ne %struct.addrnode* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load %struct.addrtree*, %struct.addrtree** %3, align 8
  %17 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %16, i32 0, i32 1
  store %struct.addrnode* null, %struct.addrnode** %17, align 8
  %18 = load %struct.addrtree*, %struct.addrtree** %3, align 8
  %19 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %18, i32 0, i32 0
  store %struct.addrnode* null, %struct.addrnode** %19, align 8
  br label %30

20:                                               ; preds = %10
  %21 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %22 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %21, i32 0, i32 1
  %23 = load %struct.addrnode*, %struct.addrnode** %22, align 8
  %24 = load %struct.addrtree*, %struct.addrtree** %3, align 8
  %25 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %24, i32 0, i32 1
  store %struct.addrnode* %23, %struct.addrnode** %25, align 8
  %26 = load %struct.addrtree*, %struct.addrtree** %3, align 8
  %27 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %26, i32 0, i32 1
  %28 = load %struct.addrnode*, %struct.addrnode** %27, align 8
  %29 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %28, i32 0, i32 0
  store %struct.addrnode* null, %struct.addrnode** %29, align 8
  br label %30

30:                                               ; preds = %20, %15
  br label %63

31:                                               ; preds = %2
  %32 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %33 = load %struct.addrtree*, %struct.addrtree** %3, align 8
  %34 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %33, i32 0, i32 0
  %35 = load %struct.addrnode*, %struct.addrnode** %34, align 8
  %36 = icmp eq %struct.addrnode* %32, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %39 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %38, i32 0, i32 0
  %40 = load %struct.addrnode*, %struct.addrnode** %39, align 8
  %41 = load %struct.addrtree*, %struct.addrtree** %3, align 8
  %42 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %41, i32 0, i32 0
  store %struct.addrnode* %40, %struct.addrnode** %42, align 8
  %43 = load %struct.addrtree*, %struct.addrtree** %3, align 8
  %44 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %43, i32 0, i32 0
  %45 = load %struct.addrnode*, %struct.addrnode** %44, align 8
  %46 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %45, i32 0, i32 1
  store %struct.addrnode* null, %struct.addrnode** %46, align 8
  br label %62

47:                                               ; preds = %31
  %48 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %49 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %48, i32 0, i32 1
  %50 = load %struct.addrnode*, %struct.addrnode** %49, align 8
  %51 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %52 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %51, i32 0, i32 0
  %53 = load %struct.addrnode*, %struct.addrnode** %52, align 8
  %54 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %53, i32 0, i32 1
  store %struct.addrnode* %50, %struct.addrnode** %54, align 8
  %55 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %56 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %55, i32 0, i32 0
  %57 = load %struct.addrnode*, %struct.addrnode** %56, align 8
  %58 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %59 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %58, i32 0, i32 1
  %60 = load %struct.addrnode*, %struct.addrnode** %59, align 8
  %61 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %60, i32 0, i32 0
  store %struct.addrnode* %57, %struct.addrnode** %61, align 8
  br label %62

62:                                               ; preds = %47, %37
  br label %63

63:                                               ; preds = %62, %30
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
