; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_kwset.c_treefails.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_kwset.c_treefails.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i64, %struct.trie*, %struct.tree*, %struct.tree* }
%struct.trie = type { %struct.trie*, %struct.tree* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree*, %struct.trie*, %struct.trie*)* @treefails to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @treefails(%struct.tree* %0, %struct.trie* %1, %struct.trie* %2) #0 {
  %4 = alloca %struct.tree*, align 8
  %5 = alloca %struct.trie*, align 8
  %6 = alloca %struct.trie*, align 8
  %7 = alloca %struct.tree*, align 8
  store %struct.tree* %0, %struct.tree** %4, align 8
  store %struct.trie* %1, %struct.trie** %5, align 8
  store %struct.trie* %2, %struct.trie** %6, align 8
  %8 = load %struct.tree*, %struct.tree** %4, align 8
  %9 = icmp ne %struct.tree* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %80

11:                                               ; preds = %3
  %12 = load %struct.tree*, %struct.tree** %4, align 8
  %13 = getelementptr inbounds %struct.tree, %struct.tree* %12, i32 0, i32 3
  %14 = load %struct.tree*, %struct.tree** %13, align 8
  %15 = load %struct.trie*, %struct.trie** %5, align 8
  %16 = load %struct.trie*, %struct.trie** %6, align 8
  call void @treefails(%struct.tree* %14, %struct.trie* %15, %struct.trie* %16)
  %17 = load %struct.tree*, %struct.tree** %4, align 8
  %18 = getelementptr inbounds %struct.tree, %struct.tree* %17, i32 0, i32 2
  %19 = load %struct.tree*, %struct.tree** %18, align 8
  %20 = load %struct.trie*, %struct.trie** %5, align 8
  %21 = load %struct.trie*, %struct.trie** %6, align 8
  call void @treefails(%struct.tree* %19, %struct.trie* %20, %struct.trie* %21)
  br label %22

22:                                               ; preds = %70, %11
  %23 = load %struct.trie*, %struct.trie** %5, align 8
  %24 = icmp ne %struct.trie* %23, null
  br i1 %24, label %25, label %74

25:                                               ; preds = %22
  %26 = load %struct.trie*, %struct.trie** %5, align 8
  %27 = getelementptr inbounds %struct.trie, %struct.trie* %26, i32 0, i32 1
  %28 = load %struct.tree*, %struct.tree** %27, align 8
  store %struct.tree* %28, %struct.tree** %7, align 8
  br label %29

29:                                               ; preds = %58, %25
  %30 = load %struct.tree*, %struct.tree** %7, align 8
  %31 = icmp ne %struct.tree* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load %struct.tree*, %struct.tree** %4, align 8
  %34 = getelementptr inbounds %struct.tree, %struct.tree* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.tree*, %struct.tree** %7, align 8
  %37 = getelementptr inbounds %struct.tree, %struct.tree* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br label %40

40:                                               ; preds = %32, %29
  %41 = phi i1 [ false, %29 ], [ %39, %32 ]
  br i1 %41, label %42, label %59

42:                                               ; preds = %40
  %43 = load %struct.tree*, %struct.tree** %4, align 8
  %44 = getelementptr inbounds %struct.tree, %struct.tree* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.tree*, %struct.tree** %7, align 8
  %47 = getelementptr inbounds %struct.tree, %struct.tree* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load %struct.tree*, %struct.tree** %7, align 8
  %52 = getelementptr inbounds %struct.tree, %struct.tree* %51, i32 0, i32 3
  %53 = load %struct.tree*, %struct.tree** %52, align 8
  store %struct.tree* %53, %struct.tree** %7, align 8
  br label %58

54:                                               ; preds = %42
  %55 = load %struct.tree*, %struct.tree** %7, align 8
  %56 = getelementptr inbounds %struct.tree, %struct.tree* %55, i32 0, i32 2
  %57 = load %struct.tree*, %struct.tree** %56, align 8
  store %struct.tree* %57, %struct.tree** %7, align 8
  br label %58

58:                                               ; preds = %54, %50
  br label %29

59:                                               ; preds = %40
  %60 = load %struct.tree*, %struct.tree** %7, align 8
  %61 = icmp ne %struct.tree* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load %struct.tree*, %struct.tree** %7, align 8
  %64 = getelementptr inbounds %struct.tree, %struct.tree* %63, i32 0, i32 1
  %65 = load %struct.trie*, %struct.trie** %64, align 8
  %66 = load %struct.tree*, %struct.tree** %4, align 8
  %67 = getelementptr inbounds %struct.tree, %struct.tree* %66, i32 0, i32 1
  %68 = load %struct.trie*, %struct.trie** %67, align 8
  %69 = getelementptr inbounds %struct.trie, %struct.trie* %68, i32 0, i32 0
  store %struct.trie* %65, %struct.trie** %69, align 8
  br label %80

70:                                               ; preds = %59
  %71 = load %struct.trie*, %struct.trie** %5, align 8
  %72 = getelementptr inbounds %struct.trie, %struct.trie* %71, i32 0, i32 0
  %73 = load %struct.trie*, %struct.trie** %72, align 8
  store %struct.trie* %73, %struct.trie** %5, align 8
  br label %22

74:                                               ; preds = %22
  %75 = load %struct.trie*, %struct.trie** %6, align 8
  %76 = load %struct.tree*, %struct.tree** %4, align 8
  %77 = getelementptr inbounds %struct.tree, %struct.tree* %76, i32 0, i32 1
  %78 = load %struct.trie*, %struct.trie** %77, align 8
  %79 = getelementptr inbounds %struct.trie, %struct.trie* %78, i32 0, i32 0
  store %struct.trie* %75, %struct.trie** %79, align 8
  br label %80

80:                                               ; preds = %74, %62, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
