; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_describe_incoming_reverse_addition_upon_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_describe_incoming_reverse_addition_upon_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conflict_tree_incoming_delete_details = type { i64, i32, i32 }

@svn_node_file = common dso_local global i64 0, align 8
@svn_node_symlink = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [100 x i8] c"Directory updated backwards from r%ld to r%ld was a file before the replacement made by %s in r%ld.\00", align 1
@.str.1 = private unnamed_addr constant [124 x i8] c"File updated backwards from r%ld to r%ld was a file from another line of history before the replacement made by %s in r%ld.\00", align 1
@.str.2 = private unnamed_addr constant [81 x i8] c"Item updated backwards from r%ld to r%ld was replaced with a file by %s in r%ld.\00", align 1
@.str.3 = private unnamed_addr constant [134 x i8] c"Directory updated backwards from r%ld to r%ld was a directory from another line of history before the replacement made by %s in r%ld.\00", align 1
@.str.4 = private unnamed_addr constant [100 x i8] c"File updated backwards from r%ld to r%ld was a directory before the replacement made by %s in r%ld.\00", align 1
@.str.5 = private unnamed_addr constant [86 x i8] c"Item updated backwards from r%ld to r%ld was replaced with a directory by %s in r%ld.\00", align 1
@.str.6 = private unnamed_addr constant [95 x i8] c"Directory updated backwards from r%ld to r%ld did not exist before it was added by %s in r%ld.\00", align 1
@.str.7 = private unnamed_addr constant [90 x i8] c"File updated backwards from r%ld to r%ld did not exist before it was added by %s in r%ld.\00", align 1
@.str.8 = private unnamed_addr constant [90 x i8] c"Item updated backwards from r%ld to r%ld did not exist before it was added by %s in r%ld.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.conflict_tree_incoming_delete_details*, i64, i32, i32, i32*)* @describe_incoming_reverse_addition_upon_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @describe_incoming_reverse_addition_upon_update(%struct.conflict_tree_incoming_delete_details* %0, i64 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.conflict_tree_incoming_delete_details*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.conflict_tree_incoming_delete_details* %0, %struct.conflict_tree_incoming_delete_details** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %12 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %7, align 8
  %13 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @svn_node_file, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %5
  %18 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %7, align 8
  %19 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @svn_node_symlink, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %71

23:                                               ; preds = %17, %5
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @svn_node_dir, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @_(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %7, align 8
  %33 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %7, align 8
  %36 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @apr_psprintf(i32* %28, i32 %29, i32 %30, i32 %31, i32 %34, i32 %37)
  store i8* %38, i8** %6, align 8
  br label %173

39:                                               ; preds = %23
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @svn_node_file, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @svn_node_symlink, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43, %39
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @_(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %7, align 8
  %53 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %7, align 8
  %56 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i8* @apr_psprintf(i32* %48, i32 %49, i32 %50, i32 %51, i32 %54, i32 %57)
  store i8* %58, i8** %6, align 8
  br label %173

59:                                               ; preds = %43
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @_(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %7, align 8
  %65 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %7, align 8
  %68 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @apr_psprintf(i32* %60, i32 %61, i32 %62, i32 %63, i32 %66, i32 %69)
  store i8* %70, i8** %6, align 8
  br label %173

71:                                               ; preds = %17
  %72 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %7, align 8
  %73 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @svn_node_dir, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %125

77:                                               ; preds = %71
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* @svn_node_dir, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %77
  %82 = load i32*, i32** %11, align 8
  %83 = call i32 @_(i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %7, align 8
  %87 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %7, align 8
  %90 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i8* @apr_psprintf(i32* %82, i32 %83, i32 %84, i32 %85, i32 %88, i32 %91)
  store i8* %92, i8** %6, align 8
  br label %173

93:                                               ; preds = %77
  %94 = load i64, i64* %8, align 8
  %95 = load i64, i64* @svn_node_file, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* @svn_node_symlink, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %97, %93
  %102 = load i32*, i32** %11, align 8
  %103 = call i32 @_(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.4, i64 0, i64 0))
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %7, align 8
  %107 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %7, align 8
  %110 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i8* @apr_psprintf(i32* %102, i32 %103, i32 %104, i32 %105, i32 %108, i32 %111)
  store i8* %112, i8** %6, align 8
  br label %173

113:                                              ; preds = %97
  %114 = load i32*, i32** %11, align 8
  %115 = call i32 @_(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.5, i64 0, i64 0))
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %7, align 8
  %119 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %7, align 8
  %122 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i8* @apr_psprintf(i32* %114, i32 %115, i32 %116, i32 %117, i32 %120, i32 %123)
  store i8* %124, i8** %6, align 8
  br label %173

125:                                              ; preds = %71
  %126 = load i64, i64* %8, align 8
  %127 = load i64, i64* @svn_node_dir, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %125
  %130 = load i32*, i32** %11, align 8
  %131 = call i32 @_(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.6, i64 0, i64 0))
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %7, align 8
  %135 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %7, align 8
  %138 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i8* @apr_psprintf(i32* %130, i32 %131, i32 %132, i32 %133, i32 %136, i32 %139)
  store i8* %140, i8** %6, align 8
  br label %173

141:                                              ; preds = %125
  %142 = load i64, i64* %8, align 8
  %143 = load i64, i64* @svn_node_file, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  %146 = load i64, i64* %8, align 8
  %147 = load i64, i64* @svn_node_symlink, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %161

149:                                              ; preds = %145, %141
  %150 = load i32*, i32** %11, align 8
  %151 = call i32 @_(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.7, i64 0, i64 0))
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %10, align 4
  %154 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %7, align 8
  %155 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %7, align 8
  %158 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i8* @apr_psprintf(i32* %150, i32 %151, i32 %152, i32 %153, i32 %156, i32 %159)
  store i8* %160, i8** %6, align 8
  br label %173

161:                                              ; preds = %145
  %162 = load i32*, i32** %11, align 8
  %163 = call i32 @_(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.8, i64 0, i64 0))
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* %10, align 4
  %166 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %7, align 8
  %167 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %7, align 8
  %170 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = call i8* @apr_psprintf(i32* %162, i32 %163, i32 %164, i32 %165, i32 %168, i32 %171)
  store i8* %172, i8** %6, align 8
  br label %173

173:                                              ; preds = %161, %149, %129, %113, %101, %81, %59, %47, %27
  %174 = load i8*, i8** %6, align 8
  ret i8* %174
}

declare dso_local i8* @apr_psprintf(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
