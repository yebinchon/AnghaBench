; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_rbtree.c_traverse_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_rbtree.c_traverse_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_6__* }

@LDNS_RBTREE_NULL = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (void (%struct.TYPE_6__*, i8*)*, i8*, %struct.TYPE_6__*)* @traverse_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @traverse_post(void (%struct.TYPE_6__*, i8*)* %0, i8* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca void (%struct.TYPE_6__*, i8*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store void (%struct.TYPE_6__*, i8*)* %0, void (%struct.TYPE_6__*, i8*)** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = icmp ne %struct.TYPE_6__* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @LDNS_RBTREE_NULL, align 8
  %12 = icmp eq %struct.TYPE_6__* %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %3
  br label %28

14:                                               ; preds = %9
  %15 = load void (%struct.TYPE_6__*, i8*)*, void (%struct.TYPE_6__*, i8*)** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  call void @traverse_post(void (%struct.TYPE_6__*, i8*)* %15, i8* %16, %struct.TYPE_6__* %19)
  %20 = load void (%struct.TYPE_6__*, i8*)*, void (%struct.TYPE_6__*, i8*)** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  call void @traverse_post(void (%struct.TYPE_6__*, i8*)* %20, i8* %21, %struct.TYPE_6__* %24)
  %25 = load void (%struct.TYPE_6__*, i8*)*, void (%struct.TYPE_6__*, i8*)** %4, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = load i8*, i8** %5, align 8
  call void %25(%struct.TYPE_6__* %26, i8* %27)
  br label %28

28:                                               ; preds = %14, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
