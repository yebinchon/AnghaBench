; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_rb.c___archive_rb_tree_removal_rebalance.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_rb.c___archive_rb_tree_removal_rebalance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_rb_tree = type { i32 }
%struct.archive_rb_node = type { %struct.archive_rb_node**, %struct.archive_rb_node*, %struct.archive_rb_node* }

@RB_DIR_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive_rb_tree*, %struct.archive_rb_node*, i32)* @__archive_rb_tree_removal_rebalance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__archive_rb_tree_removal_rebalance(%struct.archive_rb_tree* %0, %struct.archive_rb_node* %1, i32 %2) #0 {
  %4 = alloca %struct.archive_rb_tree*, align 8
  %5 = alloca %struct.archive_rb_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.archive_rb_node*, align 8
  store %struct.archive_rb_tree* %0, %struct.archive_rb_tree** %4, align 8
  store %struct.archive_rb_node* %1, %struct.archive_rb_node** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %9

9:                                                ; preds = %76, %3
  %10 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %11 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %10, i32 0, i32 0
  %12 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %12, i64 %14
  %16 = load %struct.archive_rb_node*, %struct.archive_rb_node** %15, align 8
  %17 = call i64 @RB_BLACK_P(%struct.archive_rb_node* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %150

19:                                               ; preds = %9
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @RB_DIR_OTHER, align 4
  %22 = xor i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %24 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %23, i32 0, i32 0
  %25 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %25, i64 %27
  %29 = load %struct.archive_rb_node*, %struct.archive_rb_node** %28, align 8
  store %struct.archive_rb_node* %29, %struct.archive_rb_node** %8, align 8
  %30 = load %struct.archive_rb_node*, %struct.archive_rb_node** %8, align 8
  %31 = icmp eq %struct.archive_rb_node* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %150

33:                                               ; preds = %19
  %34 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %35 = call i64 @RB_BLACK_P(%struct.archive_rb_node* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %82

37:                                               ; preds = %33
  %38 = load %struct.archive_rb_node*, %struct.archive_rb_node** %8, align 8
  %39 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %38, i32 0, i32 2
  %40 = load %struct.archive_rb_node*, %struct.archive_rb_node** %39, align 8
  %41 = call i64 @RB_BLACK_P(%struct.archive_rb_node* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %82

43:                                               ; preds = %37
  %44 = load %struct.archive_rb_node*, %struct.archive_rb_node** %8, align 8
  %45 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %44, i32 0, i32 1
  %46 = load %struct.archive_rb_node*, %struct.archive_rb_node** %45, align 8
  %47 = call i64 @RB_BLACK_P(%struct.archive_rb_node* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %82

49:                                               ; preds = %43
  %50 = load %struct.archive_rb_node*, %struct.archive_rb_node** %8, align 8
  %51 = call i64 @RB_RED_P(%struct.archive_rb_node* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %49
  %54 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @__archive_rb_tree_reparent_nodes(%struct.archive_rb_node* %54, i32 %55)
  %57 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %58 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %57, i32 0, i32 0
  %59 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %59, i64 %61
  %63 = load %struct.archive_rb_node*, %struct.archive_rb_node** %62, align 8
  store %struct.archive_rb_node* %63, %struct.archive_rb_node** %8, align 8
  %64 = load %struct.archive_rb_node*, %struct.archive_rb_node** %8, align 8
  %65 = icmp eq %struct.archive_rb_node* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  br label %150

67:                                               ; preds = %53
  br label %81

68:                                               ; preds = %49
  %69 = load %struct.archive_rb_node*, %struct.archive_rb_node** %8, align 8
  %70 = call i32 @RB_MARK_RED(%struct.archive_rb_node* %69)
  %71 = load %struct.archive_rb_tree*, %struct.archive_rb_tree** %4, align 8
  %72 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %73 = call i64 @RB_ROOT_P(%struct.archive_rb_tree* %71, %struct.archive_rb_node* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %150

76:                                               ; preds = %68
  %77 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %78 = call i32 @RB_POSITION(%struct.archive_rb_node* %77)
  store i32 %78, i32* %6, align 4
  %79 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %80 = call %struct.archive_rb_node* @RB_FATHER(%struct.archive_rb_node* %79)
  store %struct.archive_rb_node* %80, %struct.archive_rb_node** %5, align 8
  br label %9

81:                                               ; preds = %67
  br label %82

82:                                               ; preds = %81, %43, %37, %33
  %83 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %84 = call i64 @RB_RED_P(%struct.archive_rb_node* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %107

86:                                               ; preds = %82
  %87 = load %struct.archive_rb_node*, %struct.archive_rb_node** %8, align 8
  %88 = call i64 @RB_BLACK_P(%struct.archive_rb_node* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %86
  %91 = load %struct.archive_rb_node*, %struct.archive_rb_node** %8, align 8
  %92 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %91, i32 0, i32 2
  %93 = load %struct.archive_rb_node*, %struct.archive_rb_node** %92, align 8
  %94 = call i64 @RB_BLACK_P(%struct.archive_rb_node* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %90
  %97 = load %struct.archive_rb_node*, %struct.archive_rb_node** %8, align 8
  %98 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %97, i32 0, i32 1
  %99 = load %struct.archive_rb_node*, %struct.archive_rb_node** %98, align 8
  %100 = call i64 @RB_BLACK_P(%struct.archive_rb_node* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %104 = call i32 @RB_MARK_BLACK(%struct.archive_rb_node* %103)
  %105 = load %struct.archive_rb_node*, %struct.archive_rb_node** %8, align 8
  %106 = call i32 @RB_MARK_RED(%struct.archive_rb_node* %105)
  br label %150

107:                                              ; preds = %96, %90, %86, %82
  %108 = load %struct.archive_rb_node*, %struct.archive_rb_node** %8, align 8
  %109 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %108, i32 0, i32 0
  %110 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %110, i64 %112
  %114 = load %struct.archive_rb_node*, %struct.archive_rb_node** %113, align 8
  %115 = call i64 @RB_BLACK_P(%struct.archive_rb_node* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %107
  %118 = load %struct.archive_rb_node*, %struct.archive_rb_node** %8, align 8
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @__archive_rb_tree_reparent_nodes(%struct.archive_rb_node* %118, i32 %119)
  %121 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %122 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %121, i32 0, i32 0
  %123 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %123, i64 %125
  %127 = load %struct.archive_rb_node*, %struct.archive_rb_node** %126, align 8
  store %struct.archive_rb_node* %127, %struct.archive_rb_node** %8, align 8
  br label %128

128:                                              ; preds = %117, %107
  %129 = load %struct.archive_rb_node*, %struct.archive_rb_node** %8, align 8
  %130 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %129, i32 0, i32 0
  %131 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %131, i64 %133
  %135 = load %struct.archive_rb_node*, %struct.archive_rb_node** %134, align 8
  %136 = icmp eq %struct.archive_rb_node* %135, null
  br i1 %136, label %137, label %138

137:                                              ; preds = %128
  br label %150

138:                                              ; preds = %128
  %139 = load %struct.archive_rb_node*, %struct.archive_rb_node** %8, align 8
  %140 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %139, i32 0, i32 0
  %141 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %141, i64 %143
  %145 = load %struct.archive_rb_node*, %struct.archive_rb_node** %144, align 8
  %146 = call i32 @RB_MARK_BLACK(%struct.archive_rb_node* %145)
  %147 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @__archive_rb_tree_reparent_nodes(%struct.archive_rb_node* %147, i32 %148)
  br label %150

150:                                              ; preds = %32, %66, %75, %137, %138, %102, %9
  ret void
}

declare dso_local i64 @RB_BLACK_P(%struct.archive_rb_node*) #1

declare dso_local i64 @RB_RED_P(%struct.archive_rb_node*) #1

declare dso_local i32 @__archive_rb_tree_reparent_nodes(%struct.archive_rb_node*, i32) #1

declare dso_local i32 @RB_MARK_RED(%struct.archive_rb_node*) #1

declare dso_local i64 @RB_ROOT_P(%struct.archive_rb_tree*, %struct.archive_rb_node*) #1

declare dso_local i32 @RB_POSITION(%struct.archive_rb_node*) #1

declare dso_local %struct.archive_rb_node* @RB_FATHER(%struct.archive_rb_node*) #1

declare dso_local i32 @RB_MARK_BLACK(%struct.archive_rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
