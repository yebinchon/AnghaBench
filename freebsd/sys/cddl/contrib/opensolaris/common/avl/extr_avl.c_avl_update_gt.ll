; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/avl/extr_avl.c_avl_update_gt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/avl/extr_avl.c_avl_update_gt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 (i8*, i8*)* }

@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avl_update_gt(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i8* @AVL_PREV(%struct.TYPE_6__* %7, i8* %8)
  store i8* %9, i8** %6, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %13, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 %14(i8* %15, i8* %16)
  %18 = icmp sge i64 %17, 0
  br label %19

19:                                               ; preds = %11, %2
  %20 = phi i1 [ true, %2 ], [ %18, %11 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i8* @AVL_NEXT(%struct.TYPE_6__* %23, i8* %24)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %19
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %30, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i64 %31(i8* %32, i8* %33)
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @AVL_REINSERT(%struct.TYPE_6__* %37, i8* %38)
  %40 = load i32, i32* @B_TRUE, align 4
  store i32 %40, i32* %3, align 4
  br label %43

41:                                               ; preds = %28, %19
  %42 = load i32, i32* @B_FALSE, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %36
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i8* @AVL_PREV(%struct.TYPE_6__*, i8*) #1

declare dso_local i8* @AVL_NEXT(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @AVL_REINSERT(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
