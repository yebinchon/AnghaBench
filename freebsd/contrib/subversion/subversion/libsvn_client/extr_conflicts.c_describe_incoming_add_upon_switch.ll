; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_describe_incoming_add_upon_switch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_describe_incoming_add_upon_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conflict_tree_incoming_add_details = type { i32, i32, i32, i32 }

@svn_node_dir = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [114 x i8] c"A new directory appeared during switch to\0A'^/%s@%ld'.\0AIt was added by %s in r%ld and later deleted by %s in r%ld.\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"A new directory appeared during switch to\0A'^/%s@%ld'.\0AIt was added by %s in r%ld.\00", align 1
@.str.2 = private unnamed_addr constant [84 x i8] c"A new directory appeared during switch to\0A'^/%s@%ld'.\0AIt was deleted by %s in r%ld.\00", align 1
@svn_node_file = common dso_local global i64 0, align 8
@svn_node_symlink = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [109 x i8] c"A new file appeared during switch to\0A'^/%s@%ld'.\0AIt was added by %s in r%ld and later deleted by %s in r%ld.\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"A new file appeared during switch to\0A'^/%s@%ld'.\0AIt was added by %s in r%ld.\00", align 1
@.str.5 = private unnamed_addr constant [79 x i8] c"A new file appeared during switch to\0A'^/%s@%ld'.\0AIt was deleted by %s in r%ld.\00", align 1
@.str.6 = private unnamed_addr constant [109 x i8] c"A new item appeared during switch to\0A'^/%s@%ld'.\0AIt was added by %s in r%ld and later deleted by %s in r%ld.\00", align 1
@.str.7 = private unnamed_addr constant [77 x i8] c"A new item appeared during switch to\0A'^/%s@%ld'.\0AIt was added by %s in r%ld.\00", align 1
@.str.8 = private unnamed_addr constant [79 x i8] c"A new item appeared during switch to\0A'^/%s@%ld'.\0AIt was deleted by %s in r%ld.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.conflict_tree_incoming_add_details*, i64, i8*, i32, i32*)* @describe_incoming_add_upon_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @describe_incoming_add_upon_switch(%struct.conflict_tree_incoming_add_details* %0, i64 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.conflict_tree_incoming_add_details*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.conflict_tree_incoming_add_details* %0, %struct.conflict_tree_incoming_add_details** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @svn_node_dir, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %75

15:                                               ; preds = %5
  %16 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %17 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @SVN_IS_VALID_REVNUM(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %15
  %22 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %23 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @SVN_IS_VALID_REVNUM(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %21
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @_(i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str, i64 0, i64 0))
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %33 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %36 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %39 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %42 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* (i32*, i32, i8*, i32, i32, i32, ...) @apr_psprintf(i32* %28, i32 %29, i8* %30, i32 %31, i32 %34, i32 %37, i32 %40, i32 %43)
  store i8* %44, i8** %6, align 8
  br label %203

45:                                               ; preds = %21, %15
  %46 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %47 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @SVN_IS_VALID_REVNUM(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @_(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %57 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %60 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i8* (i32*, i32, i8*, i32, i32, i32, ...) @apr_psprintf(i32* %52, i32 %53, i8* %54, i32 %55, i32 %58, i32 %61)
  store i8* %62, i8** %6, align 8
  br label %203

63:                                               ; preds = %45
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @_(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %69 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %72 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i8* (i32*, i32, i8*, i32, i32, i32, ...) @apr_psprintf(i32* %64, i32 %65, i8* %66, i32 %67, i32 %70, i32 %73)
  store i8* %74, i8** %6, align 8
  br label %203

75:                                               ; preds = %5
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* @svn_node_file, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* @svn_node_symlink, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %143

83:                                               ; preds = %79, %75
  %84 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %85 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @SVN_IS_VALID_REVNUM(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %113

89:                                               ; preds = %83
  %90 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %91 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @SVN_IS_VALID_REVNUM(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %113

95:                                               ; preds = %89
  %96 = load i32*, i32** %11, align 8
  %97 = call i32 @_(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i8*, i8** %9, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %101 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %104 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %107 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %110 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i8* (i32*, i32, i8*, i32, i32, i32, ...) @apr_psprintf(i32* %96, i32 %97, i8* %98, i32 %99, i32 %102, i32 %105, i32 %108, i32 %111)
  store i8* %112, i8** %6, align 8
  br label %203

113:                                              ; preds = %89, %83
  %114 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %115 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @SVN_IS_VALID_REVNUM(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %113
  %120 = load i32*, i32** %11, align 8
  %121 = call i32 @_(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0))
  %122 = load i8*, i8** %9, align 8
  %123 = load i32, i32* %10, align 4
  %124 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %125 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %128 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i8* (i32*, i32, i8*, i32, i32, i32, ...) @apr_psprintf(i32* %120, i32 %121, i8* %122, i32 %123, i32 %126, i32 %129)
  store i8* %130, i8** %6, align 8
  br label %203

131:                                              ; preds = %113
  %132 = load i32*, i32** %11, align 8
  %133 = call i32 @_(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i64 0, i64 0))
  %134 = load i8*, i8** %9, align 8
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %137 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %140 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i8* (i32*, i32, i8*, i32, i32, i32, ...) @apr_psprintf(i32* %132, i32 %133, i8* %134, i32 %135, i32 %138, i32 %141)
  store i8* %142, i8** %6, align 8
  br label %203

143:                                              ; preds = %79
  %144 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %145 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @SVN_IS_VALID_REVNUM(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %173

149:                                              ; preds = %143
  %150 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %151 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @SVN_IS_VALID_REVNUM(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %173

155:                                              ; preds = %149
  %156 = load i32*, i32** %11, align 8
  %157 = call i32 @_(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.6, i64 0, i64 0))
  %158 = load i8*, i8** %9, align 8
  %159 = load i32, i32* %10, align 4
  %160 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %161 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %164 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %167 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %170 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i8* (i32*, i32, i8*, i32, i32, i32, ...) @apr_psprintf(i32* %156, i32 %157, i8* %158, i32 %159, i32 %162, i32 %165, i32 %168, i32 %171)
  store i8* %172, i8** %6, align 8
  br label %203

173:                                              ; preds = %149, %143
  %174 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %175 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = call i64 @SVN_IS_VALID_REVNUM(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %191

179:                                              ; preds = %173
  %180 = load i32*, i32** %11, align 8
  %181 = call i32 @_(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.7, i64 0, i64 0))
  %182 = load i8*, i8** %9, align 8
  %183 = load i32, i32* %10, align 4
  %184 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %185 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %188 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = call i8* (i32*, i32, i8*, i32, i32, i32, ...) @apr_psprintf(i32* %180, i32 %181, i8* %182, i32 %183, i32 %186, i32 %189)
  store i8* %190, i8** %6, align 8
  br label %203

191:                                              ; preds = %173
  %192 = load i32*, i32** %11, align 8
  %193 = call i32 @_(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.8, i64 0, i64 0))
  %194 = load i8*, i8** %9, align 8
  %195 = load i32, i32* %10, align 4
  %196 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %197 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %7, align 8
  %200 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i8* (i32*, i32, i8*, i32, i32, i32, ...) @apr_psprintf(i32* %192, i32 %193, i8* %194, i32 %195, i32 %198, i32 %201)
  store i8* %202, i8** %6, align 8
  br label %203

203:                                              ; preds = %191, %179, %155, %131, %119, %95, %63, %51, %27
  %204 = load i8*, i8** %6, align 8
  ret i8* %204
}

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i8* @apr_psprintf(i32*, i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
