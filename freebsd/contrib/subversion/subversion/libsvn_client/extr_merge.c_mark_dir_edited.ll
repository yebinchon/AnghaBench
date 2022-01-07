; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_mark_dir_edited.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_mark_dir_edited.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, %struct.TYPE_13__, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32 (i32, %struct.TYPE_14__*, i32*)* }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.merge_dir_baton_t = type { i64, i32, i32, i32, i32, %struct.merge_dir_baton_t*, i32, %struct.TYPE_11__*, i32, i8* }
%struct.TYPE_11__ = type { i8* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i8* null, align 8
@CONFLICT_REASON_NONE = common dso_local global i64 0, align 8
@CONFLICT_REASON_SKIP = common dso_local global i64 0, align 8
@CONFLICT_REASON_SKIP_WC = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@svn_wc_notify_skip = common dso_local global i32 0, align 4
@svn_wc_notify_update_skip_obstruction = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_15__*, %struct.merge_dir_baton_t*, i8*, i32*)* @mark_dir_edited to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mark_dir_edited(%struct.TYPE_15__* %0, %struct.merge_dir_baton_t* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.merge_dir_baton_t*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.merge_dir_baton_t* %1, %struct.merge_dir_baton_t** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %7, align 8
  %13 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %12, i32 0, i32 9
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %17, i32** %5, align 8
  br label %194

18:                                               ; preds = %4
  %19 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %7, align 8
  %20 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %19, i32 0, i32 5
  %21 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %20, align 8
  %22 = icmp ne %struct.merge_dir_baton_t* %21, null
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %7, align 8
  %25 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %24, i32 0, i32 5
  %26 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %25, align 8
  %27 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %26, i32 0, i32 9
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %23
  %31 = load i8*, i8** %8, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i8* @svn_dirent_dirname(i8* %31, i32* %32)
  store i8* %33, i8** %10, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %7, align 8
  %36 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %35, i32 0, i32 5
  %37 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %36, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32* @mark_dir_edited(%struct.TYPE_15__* %34, %struct.merge_dir_baton_t* %37, i8* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32* %40)
  br label %42

42:                                               ; preds = %30, %23, %18
  %43 = load i8*, i8** @TRUE, align 8
  %44 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %7, align 8
  %45 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %44, i32 0, i32 9
  store i8* %43, i8** %45, align 8
  %46 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %7, align 8
  %47 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %42
  %51 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %51, i32** %5, align 8
  br label %194

52:                                               ; preds = %42
  %53 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %7, align 8
  %54 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %53, i32 0, i32 5
  %55 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %54, align 8
  %56 = icmp ne %struct.merge_dir_baton_t* %55, null
  br i1 %56, label %57, label %78

57:                                               ; preds = %52
  %58 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %7, align 8
  %59 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %58, i32 0, i32 5
  %60 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %59, align 8
  %61 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %60, i32 0, i32 7
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = icmp ne %struct.TYPE_11__* %62, null
  br i1 %63, label %64, label %78

64:                                               ; preds = %57
  %65 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %7, align 8
  %66 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @CONFLICT_REASON_NONE, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load i8*, i8** @TRUE, align 8
  %72 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %7, align 8
  %73 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %72, i32 0, i32 5
  %74 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %73, align 8
  %75 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %74, i32 0, i32 7
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  store i8* %71, i8** %77, align 8
  br label %192

78:                                               ; preds = %64, %57, %52
  %79 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %7, align 8
  %80 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CONFLICT_REASON_SKIP, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %7, align 8
  %86 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @CONFLICT_REASON_SKIP_WC, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %159

90:                                               ; preds = %84, %78
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load i32 (i32, %struct.TYPE_14__*, i32*)*, i32 (i32, %struct.TYPE_14__*, i32*)** %94, align 8
  %96 = icmp ne i32 (i32, %struct.TYPE_14__*, i32*)* %95, null
  br i1 %96, label %97, label %141

97:                                               ; preds = %90
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = load i32, i32* @FALSE, align 4
  %101 = load i32*, i32** %9, align 8
  %102 = call i32* @notify_merge_begin(%struct.TYPE_15__* %98, i8* %99, i32 %100, i32* %101)
  %103 = call i32 @SVN_ERR(i32* %102)
  %104 = load i8*, i8** %8, align 8
  %105 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %7, align 8
  %106 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @CONFLICT_REASON_SKIP, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %97
  %111 = load i32, i32* @svn_wc_notify_skip, align 4
  br label %114

112:                                              ; preds = %97
  %113 = load i32, i32* @svn_wc_notify_update_skip_obstruction, align 4
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32 [ %111, %110 ], [ %113, %112 ]
  %116 = load i32*, i32** %9, align 8
  %117 = call %struct.TYPE_14__* @svn_wc_create_notify(i8* %104, i32 %115, i32* %116)
  store %struct.TYPE_14__* %117, %struct.TYPE_14__** %11, align 8
  %118 = load i32, i32* @svn_node_dir, align 4
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 4
  %121 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %7, align 8
  %122 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  store i32 %123, i32* %127, align 4
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  %132 = load i32 (i32, %struct.TYPE_14__*, i32*)*, i32 (i32, %struct.TYPE_14__*, i32*)** %131, align 8
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %139 = load i32*, i32** %9, align 8
  %140 = call i32 %132(i32 %137, %struct.TYPE_14__* %138, i32* %139)
  br label %141

141:                                              ; preds = %114, %90
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %141
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %147, %141
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i8*, i8** %8, align 8
  %157 = call i32 @store_path(i32 %155, i8* %156)
  br label %158

158:                                              ; preds = %152, %147
  br label %191

159:                                              ; preds = %84
  %160 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %7, align 8
  %161 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @CONFLICT_REASON_NONE, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %190

165:                                              ; preds = %159
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %167 = load i8*, i8** %8, align 8
  %168 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %7, align 8
  %169 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %168, i32 0, i32 5
  %170 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %169, align 8
  %171 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %7, align 8
  %172 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %7, align 8
  %175 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %7, align 8
  %178 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %7, align 8
  %181 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %7, align 8
  %184 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i8*, i8** @TRUE, align 8
  %187 = load i32*, i32** %9, align 8
  %188 = call i32* @record_tree_conflict(%struct.TYPE_15__* %166, i8* %167, %struct.merge_dir_baton_t* %170, i32 %173, i32 %176, i32 %179, i32 %182, i64 %185, i32* null, i8* %186, i32* %187)
  %189 = call i32 @SVN_ERR(i32* %188)
  br label %190

190:                                              ; preds = %165, %159
  br label %191

191:                                              ; preds = %190, %158
  br label %192

192:                                              ; preds = %191, %70
  %193 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %193, i32** %5, align 8
  br label %194

194:                                              ; preds = %192, %50, %16
  %195 = load i32*, i32** %5, align 8
  ret i32* %195
}

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @notify_merge_begin(%struct.TYPE_15__*, i8*, i32, i32*) #1

declare dso_local %struct.TYPE_14__* @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local i32 @store_path(i32, i8*) #1

declare dso_local i32* @record_tree_conflict(%struct.TYPE_15__*, i8*, %struct.merge_dir_baton_t*, i32, i32, i32, i32, i64, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
