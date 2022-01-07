; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/edns-subnet/extr_addrtree.c_edge_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/edns-subnet/extr_addrtree.c_edge_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addredge = type { i32, i32, i32*, %struct.addrnode*, %struct.addrnode* }
%struct.addrnode = type { %struct.addredge**, %struct.addredge* }

@KEYWIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.addredge* (%struct.addrnode*, i32*, i32, %struct.addrnode*, i32)* @edge_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.addredge* @edge_create(%struct.addrnode* %0, i32* %1, i32 %2, %struct.addrnode* %3, i32 %4) #0 {
  %6 = alloca %struct.addredge*, align 8
  %7 = alloca %struct.addrnode*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.addrnode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.addredge*, align 8
  store %struct.addrnode* %0, %struct.addrnode** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.addrnode* %3, %struct.addrnode** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = call i64 @malloc(i32 32)
  %15 = inttoptr i64 %14 to %struct.addredge*
  store %struct.addredge* %15, %struct.addredge** %13, align 8
  %16 = load %struct.addredge*, %struct.addredge** %13, align 8
  %17 = icmp ne %struct.addredge* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store %struct.addredge* null, %struct.addredge** %6, align 8
  br label %84

19:                                               ; preds = %5
  %20 = load %struct.addrnode*, %struct.addrnode** %7, align 8
  %21 = load %struct.addredge*, %struct.addredge** %13, align 8
  %22 = getelementptr inbounds %struct.addredge, %struct.addredge* %21, i32 0, i32 4
  store %struct.addrnode* %20, %struct.addrnode** %22, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.addredge*, %struct.addredge** %13, align 8
  %25 = getelementptr inbounds %struct.addredge, %struct.addredge* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.addredge*, %struct.addredge** %13, align 8
  %28 = getelementptr inbounds %struct.addredge, %struct.addredge* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.addrnode*, %struct.addrnode** %10, align 8
  %30 = load %struct.addredge*, %struct.addredge** %13, align 8
  %31 = getelementptr inbounds %struct.addredge, %struct.addredge* %30, i32 0, i32 3
  store %struct.addrnode* %29, %struct.addrnode** %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @KEYWIDTH, align 4
  %34 = sdiv i32 %32, %33
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @KEYWIDTH, align 4
  %37 = srem i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  %41 = add nsw i32 %34, %40
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %12, align 8
  %44 = call i64 @calloc(i64 %43, i32 4)
  %45 = inttoptr i64 %44 to i32*
  %46 = load %struct.addredge*, %struct.addredge** %13, align 8
  %47 = getelementptr inbounds %struct.addredge, %struct.addredge* %46, i32 0, i32 2
  store i32* %45, i32** %47, align 8
  %48 = load %struct.addredge*, %struct.addredge** %13, align 8
  %49 = getelementptr inbounds %struct.addredge, %struct.addredge* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %19
  %53 = load %struct.addredge*, %struct.addredge** %13, align 8
  %54 = call i32 @free(%struct.addredge* %53)
  store %struct.addredge* null, %struct.addredge** %6, align 8
  br label %84

55:                                               ; preds = %19
  %56 = load %struct.addredge*, %struct.addredge** %13, align 8
  %57 = getelementptr inbounds %struct.addredge, %struct.addredge* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = load i64, i64* %12, align 8
  %61 = mul i64 %60, 4
  %62 = call i32 @memcpy(i32* %58, i32* %59, i64 %61)
  %63 = load %struct.addredge*, %struct.addredge** %13, align 8
  %64 = load %struct.addrnode*, %struct.addrnode** %7, align 8
  %65 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %64, i32 0, i32 1
  store %struct.addredge* %63, %struct.addredge** %65, align 8
  %66 = load %struct.addrnode*, %struct.addrnode** %10, align 8
  %67 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %66, i32 0, i32 0
  %68 = load %struct.addredge**, %struct.addredge*** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.addredge*, %struct.addredge** %68, i64 %70
  %72 = load %struct.addredge*, %struct.addredge** %71, align 8
  %73 = icmp eq %struct.addredge* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 @log_assert(i32 %74)
  %76 = load %struct.addredge*, %struct.addredge** %13, align 8
  %77 = load %struct.addrnode*, %struct.addrnode** %10, align 8
  %78 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %77, i32 0, i32 0
  %79 = load %struct.addredge**, %struct.addredge*** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.addredge*, %struct.addredge** %79, i64 %81
  store %struct.addredge* %76, %struct.addredge** %82, align 8
  %83 = load %struct.addredge*, %struct.addredge** %13, align 8
  store %struct.addredge* %83, %struct.addredge** %6, align 8
  br label %84

84:                                               ; preds = %55, %52, %18
  %85 = load %struct.addredge*, %struct.addredge** %6, align 8
  ret %struct.addredge* %85
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i32 @free(%struct.addredge*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @log_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
