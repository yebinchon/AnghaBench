; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/edns-subnet/extr_addrtree.c_clean_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/edns-subnet/extr_addrtree.c_clean_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrtree = type { i32, i32 (i32, i32*)*, i64 (i32*)*, i32 }
%struct.addrnode = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.addrtree*, %struct.addrnode*)* @clean_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clean_node(%struct.addrtree* %0, %struct.addrnode* %1) #0 {
  %3 = alloca %struct.addrtree*, align 8
  %4 = alloca %struct.addrnode*, align 8
  store %struct.addrtree* %0, %struct.addrtree** %3, align 8
  store %struct.addrnode* %1, %struct.addrnode** %4, align 8
  %5 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %6 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %36

10:                                               ; preds = %2
  %11 = load %struct.addrtree*, %struct.addrtree** %3, align 8
  %12 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %11, i32 0, i32 2
  %13 = load i64 (i32*)*, i64 (i32*)** %12, align 8
  %14 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %15 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i64 %13(i32* %16)
  %18 = load %struct.addrtree*, %struct.addrtree** %3, align 8
  %19 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = sub nsw i64 %21, %17
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %19, align 8
  %24 = load %struct.addrtree*, %struct.addrtree** %3, align 8
  %25 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %24, i32 0, i32 1
  %26 = load i32 (i32, i32*)*, i32 (i32, i32*)** %25, align 8
  %27 = load %struct.addrtree*, %struct.addrtree** %3, align 8
  %28 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %31 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 %26(i32 %29, i32* %32)
  %34 = load %struct.addrnode*, %struct.addrnode** %4, align 8
  %35 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %10, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
