; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_describe_incoming_reverse_addition_upon_switch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_describe_incoming_reverse_addition_upon_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conflict_tree_incoming_delete_details = type { i64, i32, i32 }

@svn_node_file = common dso_local global i64 0, align 8
@svn_node_symlink = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [103 x i8] c"Directory switched from\0A'^/%s@%ld'\0Ato\0A'^/%s@%ld'\0Awas a file before the replacement made by %s in r%ld.\00", align 1
@.str.1 = private unnamed_addr constant [127 x i8] c"File switched from\0A'^/%s@%ld'\0Ato\0A'^/%s@%ld'\0Awas a file from another line of history before the replacement made by %s in r%ld.\00", align 1
@.str.2 = private unnamed_addr constant [84 x i8] c"Item switched from\0A'^/%s@%ld'\0Ato\0A'^/%s@%ld'\0Awas replaced with a file by %s in r%ld.\00", align 1
@.str.3 = private unnamed_addr constant [137 x i8] c"Directory switched from\0A'^/%s@%ld'\0Ato\0A'^/%s@%ld'\0Awas a directory from another line of history before the replacement made by %s in r%ld.\00", align 1
@.str.4 = private unnamed_addr constant [89 x i8] c"Item switched from\0A'^/%s@%ld'\0Ato\0A'^/%s@%ld'\0Awas replaced with a directory by %s in r%ld.\00", align 1
@.str.5 = private unnamed_addr constant [98 x i8] c"Directory switched from\0A'^/%s@%ld'\0Ato\0A'^/%s@%ld'\0Adid not exist before it was added by %s in r%ld.\00", align 1
@.str.6 = private unnamed_addr constant [93 x i8] c"File switched from\0A'^/%s@%ld'\0Ato\0A'^/%s@%ld'\0Adid not exist before it was added by %s in r%ld.\00", align 1
@.str.7 = private unnamed_addr constant [93 x i8] c"Item switched from\0A'^/%s@%ld'\0Ato\0A'^/%s@%ld'\0Adid not exist before it was added by %s in r%ld.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.conflict_tree_incoming_delete_details*, i64, i8*, i32, i8*, i32, i32*)* @describe_incoming_reverse_addition_upon_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @describe_incoming_reverse_addition_upon_switch(%struct.conflict_tree_incoming_delete_details* %0, i64 %1, i8* %2, i32 %3, i8* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.conflict_tree_incoming_delete_details*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.conflict_tree_incoming_delete_details* %0, %struct.conflict_tree_incoming_delete_details** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %16 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %9, align 8
  %17 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @svn_node_file, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %7
  %22 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %9, align 8
  %23 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @svn_node_symlink, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %81

27:                                               ; preds = %21, %7
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @svn_node_dir, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load i32*, i32** %15, align 8
  %33 = call i32 @_(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str, i64 0, i64 0))
  %34 = load i8*, i8** %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i8*, i8** %13, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %9, align 8
  %39 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %9, align 8
  %42 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @apr_psprintf(i32* %32, i32 %33, i8* %34, i32 %35, i8* %36, i32 %37, i32 %40, i32 %43)
  store i8* %44, i8** %8, align 8
  br label %195

45:                                               ; preds = %27
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @svn_node_file, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* @svn_node_symlink, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %49, %45
  %54 = load i32*, i32** %15, align 8
  %55 = call i32 @_(i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i8*, i8** %13, align 8
  %59 = load i32, i32* %14, align 4
  %60 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %9, align 8
  %61 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %9, align 8
  %64 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i8* @apr_psprintf(i32* %54, i32 %55, i8* %56, i32 %57, i8* %58, i32 %59, i32 %62, i32 %65)
  store i8* %66, i8** %8, align 8
  br label %195

67:                                               ; preds = %49
  %68 = load i32*, i32** %15, align 8
  %69 = call i32 @_(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i8*, i8** %11, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load i8*, i8** %13, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %9, align 8
  %75 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %9, align 8
  %78 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i8* @apr_psprintf(i32* %68, i32 %69, i8* %70, i32 %71, i8* %72, i32 %73, i32 %76, i32 %79)
  store i8* %80, i8** %8, align 8
  br label %195

81:                                               ; preds = %21
  %82 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %9, align 8
  %83 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @svn_node_dir, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %141

87:                                               ; preds = %81
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* @svn_node_dir, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %87
  %92 = load i32*, i32** %15, align 8
  %93 = call i32 @_(i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.3, i64 0, i64 0))
  %94 = load i8*, i8** %11, align 8
  %95 = load i32, i32* %12, align 4
  %96 = load i8*, i8** %13, align 8
  %97 = load i32, i32* %14, align 4
  %98 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %9, align 8
  %99 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %9, align 8
  %102 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i8* @apr_psprintf(i32* %92, i32 %93, i8* %94, i32 %95, i8* %96, i32 %97, i32 %100, i32 %103)
  store i8* %104, i8** %8, align 8
  br label %195

105:                                              ; preds = %87
  %106 = load i64, i64* %10, align 8
  %107 = load i64, i64* @svn_node_file, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* @svn_node_symlink, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %127

113:                                              ; preds = %109, %105
  %114 = load i32*, i32** %15, align 8
  %115 = call i32 @_(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str, i64 0, i64 0))
  %116 = load i8*, i8** %11, align 8
  %117 = load i32, i32* %12, align 4
  %118 = load i8*, i8** %13, align 8
  %119 = load i32, i32* %14, align 4
  %120 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %9, align 8
  %121 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %9, align 8
  %124 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i8* @apr_psprintf(i32* %114, i32 %115, i8* %116, i32 %117, i8* %118, i32 %119, i32 %122, i32 %125)
  store i8* %126, i8** %8, align 8
  br label %195

127:                                              ; preds = %109
  %128 = load i32*, i32** %15, align 8
  %129 = call i32 @_(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.4, i64 0, i64 0))
  %130 = load i8*, i8** %11, align 8
  %131 = load i32, i32* %12, align 4
  %132 = load i8*, i8** %13, align 8
  %133 = load i32, i32* %14, align 4
  %134 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %9, align 8
  %135 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %9, align 8
  %138 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i8* @apr_psprintf(i32* %128, i32 %129, i8* %130, i32 %131, i8* %132, i32 %133, i32 %136, i32 %139)
  store i8* %140, i8** %8, align 8
  br label %195

141:                                              ; preds = %81
  %142 = load i64, i64* %10, align 8
  %143 = load i64, i64* @svn_node_dir, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %159

145:                                              ; preds = %141
  %146 = load i32*, i32** %15, align 8
  %147 = call i32 @_(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.5, i64 0, i64 0))
  %148 = load i8*, i8** %11, align 8
  %149 = load i32, i32* %12, align 4
  %150 = load i8*, i8** %13, align 8
  %151 = load i32, i32* %14, align 4
  %152 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %9, align 8
  %153 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %9, align 8
  %156 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i8* @apr_psprintf(i32* %146, i32 %147, i8* %148, i32 %149, i8* %150, i32 %151, i32 %154, i32 %157)
  store i8* %158, i8** %8, align 8
  br label %195

159:                                              ; preds = %141
  %160 = load i64, i64* %10, align 8
  %161 = load i64, i64* @svn_node_file, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %167, label %163

163:                                              ; preds = %159
  %164 = load i64, i64* %10, align 8
  %165 = load i64, i64* @svn_node_symlink, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %181

167:                                              ; preds = %163, %159
  %168 = load i32*, i32** %15, align 8
  %169 = call i32 @_(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.6, i64 0, i64 0))
  %170 = load i8*, i8** %11, align 8
  %171 = load i32, i32* %12, align 4
  %172 = load i8*, i8** %13, align 8
  %173 = load i32, i32* %14, align 4
  %174 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %9, align 8
  %175 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %9, align 8
  %178 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = call i8* @apr_psprintf(i32* %168, i32 %169, i8* %170, i32 %171, i8* %172, i32 %173, i32 %176, i32 %179)
  store i8* %180, i8** %8, align 8
  br label %195

181:                                              ; preds = %163
  %182 = load i32*, i32** %15, align 8
  %183 = call i32 @_(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.7, i64 0, i64 0))
  %184 = load i8*, i8** %11, align 8
  %185 = load i32, i32* %12, align 4
  %186 = load i8*, i8** %13, align 8
  %187 = load i32, i32* %14, align 4
  %188 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %9, align 8
  %189 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %9, align 8
  %192 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = call i8* @apr_psprintf(i32* %182, i32 %183, i8* %184, i32 %185, i8* %186, i32 %187, i32 %190, i32 %193)
  store i8* %194, i8** %8, align 8
  br label %195

195:                                              ; preds = %181, %167, %145, %127, %113, %91, %67, %53, %31
  %196 = load i8*, i8** %8, align 8
  ret i8* %196
}

declare dso_local i8* @apr_psprintf(i32*, i32, i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
