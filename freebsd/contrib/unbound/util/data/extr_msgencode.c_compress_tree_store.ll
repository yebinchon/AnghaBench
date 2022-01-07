; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgencode.c_compress_tree_store.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgencode.c_compress_tree_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regional = type { i32 }
%struct.compress_tree_node = type { i32, %struct.compress_tree_node*, %struct.compress_tree_node* }

@PTR_MAX_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i64, %struct.regional*, %struct.compress_tree_node*, %struct.compress_tree_node**)* @compress_tree_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compress_tree_store(i64* %0, i32 %1, i64 %2, %struct.regional* %3, %struct.compress_tree_node* %4, %struct.compress_tree_node** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.regional*, align 8
  %12 = alloca %struct.compress_tree_node*, align 8
  %13 = alloca %struct.compress_tree_node**, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.compress_tree_node*, align 8
  %16 = alloca %struct.compress_tree_node*, align 8
  %17 = alloca i32, align 4
  store i64* %0, i64** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store %struct.regional* %3, %struct.regional** %11, align 8
  store %struct.compress_tree_node* %4, %struct.compress_tree_node** %12, align 8
  store %struct.compress_tree_node** %5, %struct.compress_tree_node*** %13, align 8
  store %struct.compress_tree_node* null, %struct.compress_tree_node** %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.compress_tree_node*, %struct.compress_tree_node** %12, align 8
  %21 = icmp ne %struct.compress_tree_node* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %6
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.compress_tree_node*, %struct.compress_tree_node** %12, align 8
  %25 = getelementptr inbounds %struct.compress_tree_node, %struct.compress_tree_node* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %23, %26
  store i32 %27, i32* %17, align 4
  br label %28

28:                                               ; preds = %22, %6
  %29 = load i32, i32* %17, align 4
  %30 = icmp sge i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @log_assert(i32 %31)
  br label %33

33:                                               ; preds = %60, %28
  %34 = load i32, i32* %17, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %17, align 4
  %36 = icmp ne i32 %34, 0
  br i1 %36, label %37, label %74

37:                                               ; preds = %33
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @PTR_MAX_OFFSET, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 1, i32* %7, align 4
  br label %84

42:                                               ; preds = %37
  %43 = load i64*, i64** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i64, i64* %10, align 8
  %46 = load %struct.regional*, %struct.regional** %11, align 8
  %47 = call %struct.compress_tree_node* @compress_tree_newnode(i64* %43, i32 %44, i64 %45, %struct.regional* %46)
  store %struct.compress_tree_node* %47, %struct.compress_tree_node** %15, align 8
  %48 = icmp ne %struct.compress_tree_node* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %84

50:                                               ; preds = %42
  %51 = load %struct.compress_tree_node*, %struct.compress_tree_node** %16, align 8
  %52 = icmp ne %struct.compress_tree_node* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load %struct.compress_tree_node*, %struct.compress_tree_node** %16, align 8
  %55 = load %struct.compress_tree_node*, %struct.compress_tree_node** %15, align 8
  %56 = getelementptr inbounds %struct.compress_tree_node, %struct.compress_tree_node* %55, i32 0, i32 2
  store %struct.compress_tree_node* %54, %struct.compress_tree_node** %56, align 8
  %57 = load %struct.compress_tree_node*, %struct.compress_tree_node** %15, align 8
  %58 = load %struct.compress_tree_node*, %struct.compress_tree_node** %16, align 8
  %59 = getelementptr inbounds %struct.compress_tree_node, %struct.compress_tree_node* %58, i32 0, i32 1
  store %struct.compress_tree_node* %57, %struct.compress_tree_node** %59, align 8
  br label %60

60:                                               ; preds = %53, %50
  %61 = load i64*, i64** %8, align 8
  %62 = getelementptr inbounds i64, i64* %61, i32 1
  store i64* %62, i64** %8, align 8
  %63 = load i64, i64* %61, align 8
  store i64 %63, i64* %14, align 8
  %64 = load i64, i64* %14, align 8
  %65 = load i64*, i64** %8, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 %64
  store i64* %66, i64** %8, align 8
  %67 = load i64, i64* %14, align 8
  %68 = add nsw i64 %67, 1
  %69 = load i64, i64* %10, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %10, align 8
  %71 = load %struct.compress_tree_node*, %struct.compress_tree_node** %15, align 8
  store %struct.compress_tree_node* %71, %struct.compress_tree_node** %16, align 8
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %9, align 4
  br label %33

74:                                               ; preds = %33
  %75 = load %struct.compress_tree_node*, %struct.compress_tree_node** %16, align 8
  %76 = icmp ne %struct.compress_tree_node* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load %struct.compress_tree_node*, %struct.compress_tree_node** %16, align 8
  %79 = load %struct.compress_tree_node**, %struct.compress_tree_node*** %13, align 8
  store %struct.compress_tree_node* %78, %struct.compress_tree_node** %79, align 8
  %80 = load %struct.compress_tree_node*, %struct.compress_tree_node** %12, align 8
  %81 = load %struct.compress_tree_node*, %struct.compress_tree_node** %16, align 8
  %82 = getelementptr inbounds %struct.compress_tree_node, %struct.compress_tree_node* %81, i32 0, i32 1
  store %struct.compress_tree_node* %80, %struct.compress_tree_node** %82, align 8
  br label %83

83:                                               ; preds = %77, %74
  store i32 1, i32* %7, align 4
  br label %84

84:                                               ; preds = %83, %49, %41
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local %struct.compress_tree_node* @compress_tree_newnode(i64*, i32, i64, %struct.regional*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
