; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_kwset.c_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_kwset.c_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { %struct.trie*, %struct.tree*, %struct.tree* }
%struct.trie = type { %struct.trie* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree*, %struct.trie**)* @enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enqueue(%struct.tree* %0, %struct.trie** %1) #0 {
  %3 = alloca %struct.tree*, align 8
  %4 = alloca %struct.trie**, align 8
  store %struct.tree* %0, %struct.tree** %3, align 8
  store %struct.trie** %1, %struct.trie*** %4, align 8
  %5 = load %struct.tree*, %struct.tree** %3, align 8
  %6 = icmp ne %struct.tree* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %24

8:                                                ; preds = %2
  %9 = load %struct.tree*, %struct.tree** %3, align 8
  %10 = getelementptr inbounds %struct.tree, %struct.tree* %9, i32 0, i32 2
  %11 = load %struct.tree*, %struct.tree** %10, align 8
  %12 = load %struct.trie**, %struct.trie*** %4, align 8
  call void @enqueue(%struct.tree* %11, %struct.trie** %12)
  %13 = load %struct.tree*, %struct.tree** %3, align 8
  %14 = getelementptr inbounds %struct.tree, %struct.tree* %13, i32 0, i32 1
  %15 = load %struct.tree*, %struct.tree** %14, align 8
  %16 = load %struct.trie**, %struct.trie*** %4, align 8
  call void @enqueue(%struct.tree* %15, %struct.trie** %16)
  %17 = load %struct.tree*, %struct.tree** %3, align 8
  %18 = getelementptr inbounds %struct.tree, %struct.tree* %17, i32 0, i32 0
  %19 = load %struct.trie*, %struct.trie** %18, align 8
  %20 = load %struct.trie**, %struct.trie*** %4, align 8
  %21 = load %struct.trie*, %struct.trie** %20, align 8
  %22 = getelementptr inbounds %struct.trie, %struct.trie* %21, i32 0, i32 0
  store %struct.trie* %19, %struct.trie** %22, align 8
  %23 = load %struct.trie**, %struct.trie*** %4, align 8
  store %struct.trie* %19, %struct.trie** %23, align 8
  br label %24

24:                                               ; preds = %8, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
