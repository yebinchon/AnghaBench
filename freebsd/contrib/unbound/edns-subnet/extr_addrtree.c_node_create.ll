; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/edns-subnet/extr_addrtree.c_node_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/edns-subnet/extr_addrtree.c_node_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrnode = type { i32*, i32*, i32*, i32**, i32, i32, i8* }
%struct.addrtree = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.addrnode* (%struct.addrtree*, i8*, i32, i32)* @node_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.addrnode* @node_create(%struct.addrtree* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.addrnode*, align 8
  %6 = alloca %struct.addrtree*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.addrnode*, align 8
  store %struct.addrtree* %0, %struct.addrtree** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = call i64 @malloc(i32 48)
  %12 = inttoptr i64 %11 to %struct.addrnode*
  store %struct.addrnode* %12, %struct.addrnode** %10, align 8
  %13 = load %struct.addrnode*, %struct.addrnode** %10, align 8
  %14 = icmp ne %struct.addrnode* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store %struct.addrnode* null, %struct.addrnode** %5, align 8
  br label %45

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.addrnode*, %struct.addrnode** %10, align 8
  %19 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %18, i32 0, i32 6
  store i8* %17, i8** %19, align 8
  %20 = load %struct.addrtree*, %struct.addrtree** %6, align 8
  %21 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.addrnode*, %struct.addrnode** %10, align 8
  %26 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.addrnode*, %struct.addrnode** %10, align 8
  %29 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load %struct.addrnode*, %struct.addrnode** %10, align 8
  %31 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %30, i32 0, i32 3
  %32 = load i32**, i32*** %31, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 0
  store i32* null, i32** %33, align 8
  %34 = load %struct.addrnode*, %struct.addrnode** %10, align 8
  %35 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %34, i32 0, i32 3
  %36 = load i32**, i32*** %35, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 1
  store i32* null, i32** %37, align 8
  %38 = load %struct.addrnode*, %struct.addrnode** %10, align 8
  %39 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  %40 = load %struct.addrnode*, %struct.addrnode** %10, align 8
  %41 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = load %struct.addrnode*, %struct.addrnode** %10, align 8
  %43 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  %44 = load %struct.addrnode*, %struct.addrnode** %10, align 8
  store %struct.addrnode* %44, %struct.addrnode** %5, align 8
  br label %45

45:                                               ; preds = %16, %15
  %46 = load %struct.addrnode*, %struct.addrnode** %5, align 8
  ret %struct.addrnode* %46
}

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
