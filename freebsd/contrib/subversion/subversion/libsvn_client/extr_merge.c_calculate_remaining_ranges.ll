; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_calculate_remaining_ranges.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_calculate_remaining_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_30__ = type { %struct.TYPE_28__*, %struct.TYPE_28__*, i32 }
%struct.TYPE_28__ = type { i64, i32 }
%struct.TYPE_27__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_FS_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_ERR_CLIENT_UNRELATED_RESOURCES = common dso_local global i64 0, align 8
@SVN_ERR_CLIENT_MERGE_UPDATE_REQUIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"Cannot reverse-merge a range from a path's own future history; try updating first\00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_26__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_26__* (%struct.TYPE_29__*, %struct.TYPE_29__*, %struct.TYPE_30__*, i64, i32*, i32, i32*, %struct.TYPE_27__*, i32*, i32*)* @calculate_remaining_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_26__* @calculate_remaining_ranges(%struct.TYPE_29__* %0, %struct.TYPE_29__* %1, %struct.TYPE_30__* %2, i64 %3, i32* %4, i32 %5, i32* %6, %struct.TYPE_27__* %7, i32* %8, i32* %9) #0 {
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca %struct.TYPE_29__*, align 8
  %14 = alloca %struct.TYPE_30__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_27__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_28__*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.TYPE_26__*, align 8
  %27 = alloca %struct.TYPE_28__*, align 8
  %28 = alloca i8*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %12, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %13, align 8
  store %struct.TYPE_30__* %2, %struct.TYPE_30__** %14, align 8
  store i64 %3, i64* %15, align 8
  store i32* %4, i32** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32* %6, i32** %18, align 8
  store %struct.TYPE_27__* %7, %struct.TYPE_27__** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %29 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %33, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %10
  %41 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %42, align 8
  br label %48

44:                                               ; preds = %10
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %46, align 8
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi %struct.TYPE_28__* [ %43, %40 ], [ %47, %44 ]
  store %struct.TYPE_28__* %49, %struct.TYPE_28__** %22, align 8
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %51 = load i32*, i32** %21, align 8
  %52 = call i8* @svn_client__pathrev_fspath(%struct.TYPE_28__* %50, i32* %51)
  store i8* %52, i8** %23, align 8
  %53 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @SVN_ERR_ASSERT(i32 %55)
  %57 = load i64, i64* %15, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = load i64, i64* %15, align 8
  %61 = load i8*, i8** %23, align 8
  %62 = call i32* @svn_hash_gets(i64 %60, i8* %61)
  store i32* %62, i32** %24, align 8
  br label %64

63:                                               ; preds = %48
  store i32* null, i32** %24, align 8
  br label %64

64:                                               ; preds = %63, %59
  %65 = load i32*, i32** %16, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load i32*, i32** %24, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load i32*, i32** %16, align 8
  %72 = load i32*, i32** %24, align 8
  %73 = load i32, i32* @FALSE, align 4
  %74 = load i32*, i32** %20, align 8
  %75 = call i32 @svn_rangelist_remove(i32** %24, i32* %71, i32* %72, i32 %73, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  br label %77

77:                                               ; preds = %70, %67, %64
  %78 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %80 = load i8*, i8** %23, align 8
  %81 = load i32*, i32** %24, align 8
  %82 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %17, align 4
  %93 = load i32*, i32** %18, align 8
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %95 = load i32*, i32** %20, align 8
  %96 = load i32*, i32** %21, align 8
  %97 = call i32 @filter_merged_revisions(%struct.TYPE_29__* %78, %struct.TYPE_29__* %79, i8* %80, i32* %81, i64 %86, i64 %91, i32 %92, i32* %93, %struct.TYPE_27__* %94, i32* %95, i32* %96)
  %98 = call i32 @SVN_ERR(i32 %97)
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @TRUE, align 4
  %106 = load i32*, i32** %21, align 8
  %107 = load i32*, i32** %21, align 8
  %108 = call i32 @svn_wc__node_get_base(i32* null, i64* %25, i32* null, i32* null, i32* null, i32* null, i32 %101, i32 %104, i32 %105, i32* %106, i32* %107)
  %109 = call i32 @SVN_ERR(i32 %108)
  %110 = load i64, i64* %25, align 8
  %111 = call i64 @SVN_IS_VALID_REVNUM(i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %194

113:                                              ; preds = %77
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %194

120:                                              ; preds = %113
  %121 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp slt i64 %125, %130
  br i1 %131, label %132, label %194

132:                                              ; preds = %120
  %133 = load i64, i64* %25, align 8
  %134 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp sle i64 %133, %138
  br i1 %139, label %140, label %194

140:                                              ; preds = %132
  %141 = load i32*, i32** %18, align 8
  %142 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_28__*, %struct.TYPE_28__** %143, align 8
  %145 = load i64, i64* %25, align 8
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %147 = load i32*, i32** %21, align 8
  %148 = load i32*, i32** %21, align 8
  %149 = call %struct.TYPE_26__* @svn_client__repos_location(%struct.TYPE_28__** %27, i32* %141, %struct.TYPE_28__* %144, i64 %145, %struct.TYPE_27__* %146, i32* %147, i32* %148)
  store %struct.TYPE_26__* %149, %struct.TYPE_26__** %26, align 8
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  %151 = icmp ne %struct.TYPE_26__* %150, null
  br i1 %151, label %152, label %171

152:                                              ; preds = %140
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @SVN_ERR_FS_NOT_FOUND, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %164, label %158

158:                                              ; preds = %152
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @SVN_ERR_CLIENT_UNRELATED_RESOURCES, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %158, %152
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  %166 = call i32 @svn_error_clear(%struct.TYPE_26__* %165)
  br label %170

167:                                              ; preds = %158
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  %169 = call %struct.TYPE_26__* @svn_error_trace(%struct.TYPE_26__* %168)
  store %struct.TYPE_26__* %169, %struct.TYPE_26__** %11, align 8
  br label %196

170:                                              ; preds = %164
  br label %193

171:                                              ; preds = %140
  %172 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %176 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32*, i32** %21, align 8
  %179 = load i32*, i32** %21, align 8
  %180 = call i32 @svn_wc__node_get_url(i8** %28, i32 %174, i32 %177, i32* %178, i32* %179)
  %181 = call i32 @SVN_ERR(i32 %180)
  %182 = load %struct.TYPE_28__*, %struct.TYPE_28__** %27, align 8
  %183 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load i8*, i8** %28, align 8
  %186 = call i64 @strcmp(i32 %184, i8* %185)
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %171
  %189 = load i32, i32* @SVN_ERR_CLIENT_MERGE_UPDATE_REQUIRED, align 4
  %190 = call i32 @_(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0))
  %191 = call %struct.TYPE_26__* @svn_error_create(i32 %189, i32* null, i32 %190)
  store %struct.TYPE_26__* %191, %struct.TYPE_26__** %11, align 8
  br label %196

192:                                              ; preds = %171
  br label %193

193:                                              ; preds = %192, %170
  br label %194

194:                                              ; preds = %193, %132, %120, %113, %77
  %195 = load %struct.TYPE_26__*, %struct.TYPE_26__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_26__* %195, %struct.TYPE_26__** %11, align 8
  br label %196

196:                                              ; preds = %194, %188, %167
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  ret %struct.TYPE_26__* %197
}

declare dso_local i8* @svn_client__pathrev_fspath(%struct.TYPE_28__*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32* @svn_hash_gets(i64, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_rangelist_remove(i32**, i32*, i32*, i32, i32*) #1

declare dso_local i32 @filter_merged_revisions(%struct.TYPE_29__*, %struct.TYPE_29__*, i8*, i32*, i64, i64, i32, i32*, %struct.TYPE_27__*, i32*, i32*) #1

declare dso_local i32 @svn_wc__node_get_base(i32*, i64*, i32*, i32*, i32*, i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local %struct.TYPE_26__* @svn_client__repos_location(%struct.TYPE_28__**, i32*, %struct.TYPE_28__*, i64, %struct.TYPE_27__*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_26__* @svn_error_trace(%struct.TYPE_26__*) #1

declare dso_local i32 @svn_wc__node_get_url(i8**, i32, i32, i32*, i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_26__* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
