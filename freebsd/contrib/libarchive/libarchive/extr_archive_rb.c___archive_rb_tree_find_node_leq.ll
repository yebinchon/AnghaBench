; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_rb.c___archive_rb_tree_find_node_leq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_rb.c___archive_rb_tree_find_node_leq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_rb_node = type { %struct.archive_rb_node** }
%struct.archive_rb_tree = type { %struct.archive_rb_node*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.archive_rb_node*, i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.archive_rb_node* @__archive_rb_tree_find_node_leq(%struct.archive_rb_tree* %0, i8* %1) #0 {
  %3 = alloca %struct.archive_rb_node*, align 8
  %4 = alloca %struct.archive_rb_tree*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32 (%struct.archive_rb_node*, i8*)*, align 8
  %7 = alloca %struct.archive_rb_node*, align 8
  %8 = alloca %struct.archive_rb_node*, align 8
  %9 = alloca i32, align 4
  store %struct.archive_rb_tree* %0, %struct.archive_rb_tree** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.archive_rb_tree*, %struct.archive_rb_tree** %4, align 8
  %11 = getelementptr inbounds %struct.archive_rb_tree, %struct.archive_rb_tree* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.archive_rb_node*, i8*)*, i32 (%struct.archive_rb_node*, i8*)** %13, align 8
  store i32 (%struct.archive_rb_node*, i8*)* %14, i32 (%struct.archive_rb_node*, i8*)** %6, align 8
  %15 = load %struct.archive_rb_tree*, %struct.archive_rb_tree** %4, align 8
  %16 = getelementptr inbounds %struct.archive_rb_tree, %struct.archive_rb_tree* %15, i32 0, i32 0
  %17 = load %struct.archive_rb_node*, %struct.archive_rb_node** %16, align 8
  store %struct.archive_rb_node* %17, %struct.archive_rb_node** %7, align 8
  store %struct.archive_rb_node* null, %struct.archive_rb_node** %8, align 8
  br label %18

18:                                               ; preds = %37, %2
  %19 = load %struct.archive_rb_node*, %struct.archive_rb_node** %7, align 8
  %20 = call i32 @RB_SENTINEL_P(%struct.archive_rb_node* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %47

23:                                               ; preds = %18
  %24 = load i32 (%struct.archive_rb_node*, i8*)*, i32 (%struct.archive_rb_node*, i8*)** %6, align 8
  %25 = load %struct.archive_rb_node*, %struct.archive_rb_node** %7, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 %24(%struct.archive_rb_node* %25, i8* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load %struct.archive_rb_node*, %struct.archive_rb_node** %7, align 8
  store %struct.archive_rb_node* %31, %struct.archive_rb_node** %3, align 8
  br label %49

32:                                               ; preds = %23
  %33 = load i32, i32* %9, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load %struct.archive_rb_node*, %struct.archive_rb_node** %7, align 8
  store %struct.archive_rb_node* %36, %struct.archive_rb_node** %8, align 8
  br label %37

37:                                               ; preds = %35, %32
  %38 = load %struct.archive_rb_node*, %struct.archive_rb_node** %7, align 8
  %39 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %38, i32 0, i32 0
  %40 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = icmp sgt i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %40, i64 %44
  %46 = load %struct.archive_rb_node*, %struct.archive_rb_node** %45, align 8
  store %struct.archive_rb_node* %46, %struct.archive_rb_node** %7, align 8
  br label %18

47:                                               ; preds = %18
  %48 = load %struct.archive_rb_node*, %struct.archive_rb_node** %8, align 8
  store %struct.archive_rb_node* %48, %struct.archive_rb_node** %3, align 8
  br label %49

49:                                               ; preds = %47, %30
  %50 = load %struct.archive_rb_node*, %struct.archive_rb_node** %3, align 8
  ret %struct.archive_rb_node* %50
}

declare dso_local i32 @RB_SENTINEL_P(%struct.archive_rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
