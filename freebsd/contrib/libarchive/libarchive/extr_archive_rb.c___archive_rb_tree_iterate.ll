; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_rb.c___archive_rb_tree_iterate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_rb.c___archive_rb_tree_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_rb_tree = type { %struct.archive_rb_node* }
%struct.archive_rb_node = type { %struct.archive_rb_node** }

@RB_DIR_OTHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.archive_rb_node* @__archive_rb_tree_iterate(%struct.archive_rb_tree* %0, %struct.archive_rb_node* %1, i32 %2) #0 {
  %4 = alloca %struct.archive_rb_node*, align 8
  %5 = alloca %struct.archive_rb_tree*, align 8
  %6 = alloca %struct.archive_rb_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.archive_rb_tree* %0, %struct.archive_rb_tree** %5, align 8
  store %struct.archive_rb_node* %1, %struct.archive_rb_node** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @RB_DIR_OTHER, align 4
  %11 = xor i32 %9, %10
  store i32 %11, i32* %8, align 4
  %12 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %13 = icmp eq %struct.archive_rb_node* %12, null
  br i1 %13, label %14, label %44

14:                                               ; preds = %3
  %15 = load %struct.archive_rb_tree*, %struct.archive_rb_tree** %5, align 8
  %16 = getelementptr inbounds %struct.archive_rb_tree, %struct.archive_rb_tree* %15, i32 0, i32 0
  %17 = load %struct.archive_rb_node*, %struct.archive_rb_node** %16, align 8
  store %struct.archive_rb_node* %17, %struct.archive_rb_node** %6, align 8
  %18 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %19 = call i64 @RB_SENTINEL_P(%struct.archive_rb_node* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store %struct.archive_rb_node* null, %struct.archive_rb_node** %4, align 8
  br label %103

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %34, %22
  %24 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %25 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %24, i32 0, i32 0
  %26 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %26, i64 %28
  %30 = load %struct.archive_rb_node*, %struct.archive_rb_node** %29, align 8
  %31 = call i64 @RB_SENTINEL_P(%struct.archive_rb_node* %30)
  %32 = icmp ne i64 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %42

34:                                               ; preds = %23
  %35 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %36 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %35, i32 0, i32 0
  %37 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %37, i64 %39
  %41 = load %struct.archive_rb_node*, %struct.archive_rb_node** %40, align 8
  store %struct.archive_rb_node* %41, %struct.archive_rb_node** %6, align 8
  br label %23

42:                                               ; preds = %23
  %43 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  store %struct.archive_rb_node* %43, %struct.archive_rb_node** %4, align 8
  br label %103

44:                                               ; preds = %3
  %45 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %46 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %45, i32 0, i32 0
  %47 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %47, i64 %49
  %51 = load %struct.archive_rb_node*, %struct.archive_rb_node** %50, align 8
  %52 = call i64 @RB_SENTINEL_P(%struct.archive_rb_node* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %70, %54
  %56 = load %struct.archive_rb_tree*, %struct.archive_rb_tree** %5, align 8
  %57 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %58 = call i32 @RB_ROOT_P(%struct.archive_rb_tree* %56, %struct.archive_rb_node* %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  br i1 %60, label %61, label %73

61:                                               ; preds = %55
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %64 = call i64 @RB_POSITION(%struct.archive_rb_node* %63)
  %65 = trunc i64 %64 to i32
  %66 = icmp eq i32 %62, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %69 = call %struct.archive_rb_node* @RB_FATHER(%struct.archive_rb_node* %68)
  store %struct.archive_rb_node* %69, %struct.archive_rb_node** %4, align 8
  br label %103

70:                                               ; preds = %61
  %71 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %72 = call %struct.archive_rb_node* @RB_FATHER(%struct.archive_rb_node* %71)
  store %struct.archive_rb_node* %72, %struct.archive_rb_node** %6, align 8
  br label %55

73:                                               ; preds = %55
  store %struct.archive_rb_node* null, %struct.archive_rb_node** %4, align 8
  br label %103

74:                                               ; preds = %44
  %75 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %76 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %75, i32 0, i32 0
  %77 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %77, i64 %79
  %81 = load %struct.archive_rb_node*, %struct.archive_rb_node** %80, align 8
  store %struct.archive_rb_node* %81, %struct.archive_rb_node** %6, align 8
  br label %82

82:                                               ; preds = %93, %74
  %83 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %84 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %83, i32 0, i32 0
  %85 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %85, i64 %87
  %89 = load %struct.archive_rb_node*, %struct.archive_rb_node** %88, align 8
  %90 = call i64 @RB_SENTINEL_P(%struct.archive_rb_node* %89)
  %91 = icmp ne i64 %90, 0
  %92 = xor i1 %91, true
  br i1 %92, label %93, label %101

93:                                               ; preds = %82
  %94 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %95 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %94, i32 0, i32 0
  %96 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %96, i64 %98
  %100 = load %struct.archive_rb_node*, %struct.archive_rb_node** %99, align 8
  store %struct.archive_rb_node* %100, %struct.archive_rb_node** %6, align 8
  br label %82

101:                                              ; preds = %82
  %102 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  store %struct.archive_rb_node* %102, %struct.archive_rb_node** %4, align 8
  br label %103

103:                                              ; preds = %101, %73, %67, %42, %21
  %104 = load %struct.archive_rb_node*, %struct.archive_rb_node** %4, align 8
  ret %struct.archive_rb_node* %104
}

declare dso_local i64 @RB_SENTINEL_P(%struct.archive_rb_node*) #1

declare dso_local i32 @RB_ROOT_P(%struct.archive_rb_tree*, %struct.archive_rb_node*) #1

declare dso_local i64 @RB_POSITION(%struct.archive_rb_node*) #1

declare dso_local %struct.archive_rb_node* @RB_FATHER(%struct.archive_rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
