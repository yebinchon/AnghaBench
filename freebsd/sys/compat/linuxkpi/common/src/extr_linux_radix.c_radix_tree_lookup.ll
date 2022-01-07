; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_radix.c_radix_tree_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_radix.c_radix_tree_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_tree_root = type { i32, %struct.radix_tree_node* }
%struct.radix_tree_node = type { %struct.radix_tree_node** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @radix_tree_lookup(%struct.radix_tree_root* %0, i64 %1) #0 {
  %3 = alloca %struct.radix_tree_root*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.radix_tree_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.radix_tree_root* %0, %struct.radix_tree_root** %3, align 8
  store i64 %1, i64* %4, align 8
  store i8* null, i8** %6, align 8
  %8 = load %struct.radix_tree_root*, %struct.radix_tree_root** %3, align 8
  %9 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %8, i32 0, i32 1
  %10 = load %struct.radix_tree_node*, %struct.radix_tree_node** %9, align 8
  store %struct.radix_tree_node* %10, %struct.radix_tree_node** %5, align 8
  %11 = load %struct.radix_tree_root*, %struct.radix_tree_root** %3, align 8
  %12 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %7, align 4
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.radix_tree_root*, %struct.radix_tree_root** %3, align 8
  %17 = call i64 @radix_max(%struct.radix_tree_root* %16)
  %18 = icmp ugt i64 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %52

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %29, %20
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.radix_tree_node*, %struct.radix_tree_node** %5, align 8
  %26 = icmp ne %struct.radix_tree_node* %25, null
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i1 [ false, %21 ], [ %26, %24 ]
  br i1 %28, label %29, label %39

29:                                               ; preds = %27
  %30 = load %struct.radix_tree_node*, %struct.radix_tree_node** %5, align 8
  %31 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %30, i32 0, i32 0
  %32 = load %struct.radix_tree_node**, %struct.radix_tree_node*** %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %7, align 4
  %36 = call i64 @radix_pos(i64 %33, i32 %34)
  %37 = getelementptr inbounds %struct.radix_tree_node*, %struct.radix_tree_node** %32, i64 %36
  %38 = load %struct.radix_tree_node*, %struct.radix_tree_node** %37, align 8
  store %struct.radix_tree_node* %38, %struct.radix_tree_node** %5, align 8
  br label %21

39:                                               ; preds = %27
  %40 = load %struct.radix_tree_node*, %struct.radix_tree_node** %5, align 8
  %41 = icmp ne %struct.radix_tree_node* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load %struct.radix_tree_node*, %struct.radix_tree_node** %5, align 8
  %44 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %43, i32 0, i32 0
  %45 = load %struct.radix_tree_node**, %struct.radix_tree_node*** %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = call i64 @radix_pos(i64 %46, i32 0)
  %48 = getelementptr inbounds %struct.radix_tree_node*, %struct.radix_tree_node** %45, i64 %47
  %49 = load %struct.radix_tree_node*, %struct.radix_tree_node** %48, align 8
  %50 = bitcast %struct.radix_tree_node* %49 to i8*
  store i8* %50, i8** %6, align 8
  br label %51

51:                                               ; preds = %42, %39
  br label %52

52:                                               ; preds = %51, %19
  %53 = load i8*, i8** %6, align 8
  ret i8* %53
}

declare dso_local i64 @radix_max(%struct.radix_tree_root*) #1

declare dso_local i64 @radix_pos(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
