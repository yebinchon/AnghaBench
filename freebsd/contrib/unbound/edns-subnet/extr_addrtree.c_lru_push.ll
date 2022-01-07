; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/edns-subnet/extr_addrtree.c_lru_push.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/edns-subnet/extr_addrtree.c_lru_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrtree = type { %struct.addrnode*, %struct.addrnode* }
%struct.addrnode = type { %struct.addrnode*, %struct.addrnode* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.addrtree*, %struct.addrnode*)* @lru_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lru_push(%struct.addrtree* %0, %struct.addrnode* %1) #0 {
  %3 = alloca %struct.addrtree*, align 8
  %4 = alloca %struct.addrnode*, align 8
  store %struct.addrtree* %0, %struct.addrtree** %3, align 8
  store %struct.addrnode* %1, %struct.addrnode** %4, align 8
  %5 = load %struct.addrtree*, %struct.addrtree** %3, align 8
  %6 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %5, i32 0, i32 1
  %7 = load %struct.addrnode*, %struct.addrnode** %6, align 8
  %8 = icmp ne %struct.addrnode* %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %11 = load %struct.addrtree*, %struct.addrtree** %3, align 8
  %12 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %11, i32 0, i32 1
  store %struct.addrnode* %10, %struct.addrnode** %12, align 8
  %13 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %14 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %13, i32 0, i32 1
  store %struct.addrnode* null, %struct.addrnode** %14, align 8
  br label %26

15:                                               ; preds = %2
  %16 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %17 = load %struct.addrtree*, %struct.addrtree** %3, align 8
  %18 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %17, i32 0, i32 0
  %19 = load %struct.addrnode*, %struct.addrnode** %18, align 8
  %20 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %19, i32 0, i32 0
  store %struct.addrnode* %16, %struct.addrnode** %20, align 8
  %21 = load %struct.addrtree*, %struct.addrtree** %3, align 8
  %22 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %21, i32 0, i32 0
  %23 = load %struct.addrnode*, %struct.addrnode** %22, align 8
  %24 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %25 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %24, i32 0, i32 1
  store %struct.addrnode* %23, %struct.addrnode** %25, align 8
  br label %26

26:                                               ; preds = %15, %9
  %27 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %28 = load %struct.addrtree*, %struct.addrtree** %3, align 8
  %29 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %28, i32 0, i32 0
  store %struct.addrnode* %27, %struct.addrnode** %29, align 8
  %30 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %31 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %30, i32 0, i32 0
  store %struct.addrnode* null, %struct.addrnode** %31, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
