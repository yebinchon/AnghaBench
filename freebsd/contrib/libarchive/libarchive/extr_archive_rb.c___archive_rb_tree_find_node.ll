; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_rb.c___archive_rb_tree_find_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_rb.c___archive_rb_tree_find_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_rb_node = type { %struct.archive_rb_node** }
%struct.archive_rb_tree = type { %struct.archive_rb_node*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.archive_rb_node*, i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.archive_rb_node* @__archive_rb_tree_find_node(%struct.archive_rb_tree* %0, i8* %1) #0 {
  %3 = alloca %struct.archive_rb_node*, align 8
  %4 = alloca %struct.archive_rb_tree*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32 (%struct.archive_rb_node*, i8*)*, align 8
  %7 = alloca %struct.archive_rb_node*, align 8
  %8 = alloca i32, align 4
  store %struct.archive_rb_tree* %0, %struct.archive_rb_tree** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.archive_rb_tree*, %struct.archive_rb_tree** %4, align 8
  %10 = getelementptr inbounds %struct.archive_rb_tree, %struct.archive_rb_tree* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.archive_rb_node*, i8*)*, i32 (%struct.archive_rb_node*, i8*)** %12, align 8
  store i32 (%struct.archive_rb_node*, i8*)* %13, i32 (%struct.archive_rb_node*, i8*)** %6, align 8
  %14 = load %struct.archive_rb_tree*, %struct.archive_rb_tree** %4, align 8
  %15 = getelementptr inbounds %struct.archive_rb_tree, %struct.archive_rb_tree* %14, i32 0, i32 0
  %16 = load %struct.archive_rb_node*, %struct.archive_rb_node** %15, align 8
  store %struct.archive_rb_node* %16, %struct.archive_rb_node** %7, align 8
  br label %17

17:                                               ; preds = %31, %2
  %18 = load %struct.archive_rb_node*, %struct.archive_rb_node** %7, align 8
  %19 = call i32 @RB_SENTINEL_P(%struct.archive_rb_node* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %41

22:                                               ; preds = %17
  %23 = load i32 (%struct.archive_rb_node*, i8*)*, i32 (%struct.archive_rb_node*, i8*)** %6, align 8
  %24 = load %struct.archive_rb_node*, %struct.archive_rb_node** %7, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 %23(%struct.archive_rb_node* %24, i8* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load %struct.archive_rb_node*, %struct.archive_rb_node** %7, align 8
  store %struct.archive_rb_node* %30, %struct.archive_rb_node** %3, align 8
  br label %42

31:                                               ; preds = %22
  %32 = load %struct.archive_rb_node*, %struct.archive_rb_node** %7, align 8
  %33 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %32, i32 0, i32 0
  %34 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = icmp sgt i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %34, i64 %38
  %40 = load %struct.archive_rb_node*, %struct.archive_rb_node** %39, align 8
  store %struct.archive_rb_node* %40, %struct.archive_rb_node** %7, align 8
  br label %17

41:                                               ; preds = %17
  store %struct.archive_rb_node* null, %struct.archive_rb_node** %3, align 8
  br label %42

42:                                               ; preds = %41, %29
  %43 = load %struct.archive_rb_node*, %struct.archive_rb_node** %3, align 8
  ret %struct.archive_rb_node* %43
}

declare dso_local i32 @RB_SENTINEL_P(%struct.archive_rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
