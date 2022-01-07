; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_describe_incoming_reverse_deletion_upon_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_describe_incoming_reverse_deletion_upon_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conflict_tree_incoming_add_details = type { i32, i32 }

@svn_node_dir = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [91 x i8] c"A new directory appeared during reverse-merge of\0A'^/%s:%ld'.\0AIt was deleted by %s in r%ld.\00", align 1
@.str.1 = private unnamed_addr constant [95 x i8] c"A new directory appeared during reverse-merge of\0A'^/%s:%ld-%ld'.\0AIt was deleted by %s in r%ld.\00", align 1
@svn_node_file = common dso_local global i64 0, align 8
@svn_node_symlink = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [86 x i8] c"A new file appeared during reverse-merge of\0A'^/%s:%ld'.\0AIt was deleted by %s in r%ld.\00", align 1
@.str.3 = private unnamed_addr constant [90 x i8] c"A new file appeared during reverse-merge of\0A'^/%s:%ld-%ld'.\0AIt was deleted by %s in r%ld.\00", align 1
@.str.4 = private unnamed_addr constant [86 x i8] c"A new item appeared during reverse-merge of\0A'^/%s:%ld'.\0AIt was deleted by %s in r%ld.\00", align 1
@.str.5 = private unnamed_addr constant [90 x i8] c"A new item appeared during reverse-merge of\0A'^/%s:%ld-%ld'.\0AIt was deleted by %s in r%ld.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.conflict_tree_incoming_add_details*, i64, i8*, i64, i64, i32*)* @describe_incoming_reverse_deletion_upon_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @describe_incoming_reverse_deletion_upon_merge(%struct.conflict_tree_incoming_add_details* %0, i64 %1, i8* %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.conflict_tree_incoming_add_details*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.conflict_tree_incoming_add_details* %0, %struct.conflict_tree_incoming_add_details** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @svn_node_dir, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %6
  %18 = load i64, i64* %12, align 8
  %19 = add nsw i64 %18, 1
  %20 = load i64, i64* %11, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load i32*, i32** %13, align 8
  %24 = call i32 @_(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0))
  %25 = load i8*, i8** %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %8, align 8
  %28 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %8, align 8
  %32 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* (i32*, i32, i8*, i64, i64, i32, ...) @apr_psprintf(i32* %23, i32 %24, i8* %25, i64 %26, i64 %30, i32 %33)
  store i8* %34, i8** %7, align 8
  br label %121

35:                                               ; preds = %17
  %36 = load i32*, i32** %13, align 8
  %37 = call i32 @_(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i8*, i8** %10, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call i64 @rev_below(i64 %40)
  %42 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %8, align 8
  %43 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %8, align 8
  %46 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* (i32*, i32, i8*, i64, i64, i32, ...) @apr_psprintf(i32* %36, i32 %37, i8* %38, i64 %39, i64 %41, i32 %44, i32 %47)
  store i8* %48, i8** %7, align 8
  br label %121

49:                                               ; preds = %6
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @svn_node_file, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @svn_node_symlink, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %89

57:                                               ; preds = %53, %49
  %58 = load i64, i64* %12, align 8
  %59 = add nsw i64 %58, 1
  %60 = load i64, i64* %11, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %57
  %63 = load i32*, i32** %13, align 8
  %64 = call i32 @_(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i8*, i8** %10, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %8, align 8
  %68 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %8, align 8
  %72 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i8* (i32*, i32, i8*, i64, i64, i32, ...) @apr_psprintf(i32* %63, i32 %64, i8* %65, i64 %66, i64 %70, i32 %73)
  store i8* %74, i8** %7, align 8
  br label %121

75:                                               ; preds = %57
  %76 = load i32*, i32** %13, align 8
  %77 = call i32 @_(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i8*, i8** %10, align 8
  %79 = load i64, i64* %12, align 8
  %80 = add nsw i64 %79, 1
  %81 = load i64, i64* %11, align 8
  %82 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %8, align 8
  %83 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %8, align 8
  %86 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i8* (i32*, i32, i8*, i64, i64, i32, ...) @apr_psprintf(i32* %76, i32 %77, i8* %78, i64 %80, i64 %81, i32 %84, i32 %87)
  store i8* %88, i8** %7, align 8
  br label %121

89:                                               ; preds = %53
  %90 = load i64, i64* %12, align 8
  %91 = add nsw i64 %90, 1
  %92 = load i64, i64* %11, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %89
  %95 = load i32*, i32** %13, align 8
  %96 = call i32 @_(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.4, i64 0, i64 0))
  %97 = load i8*, i8** %10, align 8
  %98 = load i64, i64* %11, align 8
  %99 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %8, align 8
  %100 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %8, align 8
  %104 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i8* (i32*, i32, i8*, i64, i64, i32, ...) @apr_psprintf(i32* %95, i32 %96, i8* %97, i64 %98, i64 %102, i32 %105)
  store i8* %106, i8** %7, align 8
  br label %121

107:                                              ; preds = %89
  %108 = load i32*, i32** %13, align 8
  %109 = call i32 @_(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.5, i64 0, i64 0))
  %110 = load i8*, i8** %10, align 8
  %111 = load i64, i64* %12, align 8
  %112 = add nsw i64 %111, 1
  %113 = load i64, i64* %11, align 8
  %114 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %8, align 8
  %115 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %8, align 8
  %118 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i8* (i32*, i32, i8*, i64, i64, i32, ...) @apr_psprintf(i32* %108, i32 %109, i8* %110, i64 %112, i64 %113, i32 %116, i32 %119)
  store i8* %120, i8** %7, align 8
  br label %121

121:                                              ; preds = %107, %94, %75, %62, %35, %22
  %122 = load i8*, i8** %7, align 8
  ret i8* %122
}

declare dso_local i8* @apr_psprintf(i32*, i32, i8*, i64, i64, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @rev_below(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
