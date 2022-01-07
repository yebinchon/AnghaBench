; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_describe_incoming_add_upon_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_describe_incoming_add_upon_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conflict_tree_incoming_add_details = type { i32, i32, i32, i32 }

@svn_node_dir = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [108 x i8] c"A new directory appeared during update to r%ld; it was added by %s in r%ld and later deleted by %s in r%ld.\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"A new directory appeared during update to r%ld; it was added by %s in r%ld.\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c"A new directory appeared during update to r%ld; it was deleted by %s in r%ld.\00", align 1
@svn_node_file = common dso_local global i64 0, align 8
@svn_node_symlink = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [103 x i8] c"A new file appeared during update to r%ld; it was added by %s in r%ld and later deleted by %s in r%ld.\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"A new file appeared during update to r%ld; it was added by %s in r%ld.\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"A new file appeared during update to r%ld; it was deleted by %s in r%ld.\00", align 1
@.str.6 = private unnamed_addr constant [103 x i8] c"A new item appeared during update to r%ld; it was added by %s in r%ld and later deleted by %s in r%ld.\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"A new item appeared during update to r%ld; it was added by %s in r%ld.\00", align 1
@.str.8 = private unnamed_addr constant [73 x i8] c"A new item appeared during update to r%ld; it was deleted by %s in r%ld.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.conflict_tree_incoming_add_details*, i64, i32, i32*)* @describe_incoming_add_upon_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @describe_incoming_add_upon_update(%struct.conflict_tree_incoming_add_details* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.conflict_tree_incoming_add_details*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.conflict_tree_incoming_add_details* %0, %struct.conflict_tree_incoming_add_details** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @svn_node_dir, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %70

13:                                               ; preds = %4
  %14 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %15 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @SVN_IS_VALID_REVNUM(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %13
  %20 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %21 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @SVN_IS_VALID_REVNUM(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %19
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @_(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %30 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %33 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %36 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %39 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* (i32*, i32, i32, i32, i32, ...) @apr_psprintf(i32* %26, i32 %27, i32 %28, i32 %31, i32 %34, i32 %37, i32 %40)
  store i8* %41, i8** %5, align 8
  br label %192

42:                                               ; preds = %19, %13
  %43 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %44 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @SVN_IS_VALID_REVNUM(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @_(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %53 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %56 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i8* (i32*, i32, i32, i32, i32, ...) @apr_psprintf(i32* %49, i32 %50, i32 %51, i32 %54, i32 %57)
  store i8* %58, i8** %5, align 8
  br label %192

59:                                               ; preds = %42
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @_(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %64 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %67 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i8* (i32*, i32, i32, i32, i32, ...) @apr_psprintf(i32* %60, i32 %61, i32 %62, i32 %65, i32 %68)
  store i8* %69, i8** %5, align 8
  br label %192

70:                                               ; preds = %4
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* @svn_node_file, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* @svn_node_symlink, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %135

78:                                               ; preds = %74, %70
  %79 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %80 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @SVN_IS_VALID_REVNUM(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %107

84:                                               ; preds = %78
  %85 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %86 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @SVN_IS_VALID_REVNUM(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %84
  %91 = load i32*, i32** %9, align 8
  %92 = call i32 @_(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0))
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %95 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %98 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %101 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %104 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i8* (i32*, i32, i32, i32, i32, ...) @apr_psprintf(i32* %91, i32 %92, i32 %93, i32 %96, i32 %99, i32 %102, i32 %105)
  store i8* %106, i8** %5, align 8
  br label %192

107:                                              ; preds = %84, %78
  %108 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %109 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @SVN_IS_VALID_REVNUM(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %107
  %114 = load i32*, i32** %9, align 8
  %115 = call i32 @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0))
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %118 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %121 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i8* (i32*, i32, i32, i32, i32, ...) @apr_psprintf(i32* %114, i32 %115, i32 %116, i32 %119, i32 %122)
  store i8* %123, i8** %5, align 8
  br label %192

124:                                              ; preds = %107
  %125 = load i32*, i32** %9, align 8
  %126 = call i32 @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0))
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %129 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %132 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i8* (i32*, i32, i32, i32, i32, ...) @apr_psprintf(i32* %125, i32 %126, i32 %127, i32 %130, i32 %133)
  store i8* %134, i8** %5, align 8
  br label %192

135:                                              ; preds = %74
  %136 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %137 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @SVN_IS_VALID_REVNUM(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %164

141:                                              ; preds = %135
  %142 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %143 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @SVN_IS_VALID_REVNUM(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %164

147:                                              ; preds = %141
  %148 = load i32*, i32** %9, align 8
  %149 = call i32 @_(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.6, i64 0, i64 0))
  %150 = load i32, i32* %8, align 4
  %151 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %152 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %155 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %158 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %161 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i8* (i32*, i32, i32, i32, i32, ...) @apr_psprintf(i32* %148, i32 %149, i32 %150, i32 %153, i32 %156, i32 %159, i32 %162)
  store i8* %163, i8** %5, align 8
  br label %192

164:                                              ; preds = %141, %135
  %165 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %166 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = call i64 @SVN_IS_VALID_REVNUM(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %164
  %171 = load i32*, i32** %9, align 8
  %172 = call i32 @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.7, i64 0, i64 0))
  %173 = load i32, i32* %8, align 4
  %174 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %175 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %178 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = call i8* (i32*, i32, i32, i32, i32, ...) @apr_psprintf(i32* %171, i32 %172, i32 %173, i32 %176, i32 %179)
  store i8* %180, i8** %5, align 8
  br label %192

181:                                              ; preds = %164
  %182 = load i32*, i32** %9, align 8
  %183 = call i32 @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8, i64 0, i64 0))
  %184 = load i32, i32* %8, align 4
  %185 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %186 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %6, align 8
  %189 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i8* (i32*, i32, i32, i32, i32, ...) @apr_psprintf(i32* %182, i32 %183, i32 %184, i32 %187, i32 %190)
  store i8* %191, i8** %5, align 8
  br label %192

192:                                              ; preds = %181, %170, %147, %124, %113, %90, %59, %48, %25
  %193 = load i8*, i8** %5, align 8
  ret i8* %193
}

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i8* @apr_psprintf(i32*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
