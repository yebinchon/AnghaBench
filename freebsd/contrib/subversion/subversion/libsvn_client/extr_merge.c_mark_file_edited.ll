; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_mark_file_edited.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_mark_file_edited.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64, %struct.TYPE_16__, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32 (i32, %struct.TYPE_17__*, i32*)* }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.merge_file_baton_t = type { i64, i32, i32, i32, i32, %struct.TYPE_19__*, i32, i32, i8* }
%struct.TYPE_19__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i8* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i8* null, align 8
@CONFLICT_REASON_NONE = common dso_local global i64 0, align 8
@CONFLICT_REASON_SKIP = common dso_local global i64 0, align 8
@CONFLICT_REASON_SKIP_WC = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@svn_wc_notify_skip = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_18__*, %struct.merge_file_baton_t*, i8*, i32*)* @mark_file_edited to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mark_file_edited(%struct.TYPE_18__* %0, %struct.merge_file_baton_t* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.merge_file_baton_t*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.merge_file_baton_t* %1, %struct.merge_file_baton_t** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %7, align 8
  %13 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %12, i32 0, i32 8
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %17, i32** %5, align 8
  br label %184

18:                                               ; preds = %4
  %19 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %7, align 8
  %20 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %19, i32 0, i32 5
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %22 = icmp ne %struct.TYPE_19__* %21, null
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %7, align 8
  %25 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %24, i32 0, i32 5
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %23
  %31 = load i8*, i8** %8, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i8* @svn_dirent_dirname(i8* %31, i32* %32)
  store i8* %33, i8** %10, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %35 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %7, align 8
  %36 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %35, i32 0, i32 5
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @mark_dir_edited(%struct.TYPE_18__* %34, %struct.TYPE_19__* %37, i8* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  br label %42

42:                                               ; preds = %30, %23, %18
  %43 = load i8*, i8** @TRUE, align 8
  %44 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %7, align 8
  %45 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %44, i32 0, i32 8
  store i8* %43, i8** %45, align 8
  %46 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %7, align 8
  %47 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %42
  %51 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %51, i32** %5, align 8
  br label %184

52:                                               ; preds = %42
  %53 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %7, align 8
  %54 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %53, i32 0, i32 5
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %54, align 8
  %56 = icmp ne %struct.TYPE_19__* %55, null
  br i1 %56, label %57, label %78

57:                                               ; preds = %52
  %58 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %7, align 8
  %59 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %58, i32 0, i32 5
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = icmp ne %struct.TYPE_14__* %62, null
  br i1 %63, label %64, label %78

64:                                               ; preds = %57
  %65 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %7, align 8
  %66 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @CONFLICT_REASON_NONE, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load i8*, i8** @TRUE, align 8
  %72 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %7, align 8
  %73 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %72, i32 0, i32 5
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  store i8* %71, i8** %77, align 8
  br label %182

78:                                               ; preds = %64, %57, %52
  %79 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %7, align 8
  %80 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CONFLICT_REASON_SKIP, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %7, align 8
  %86 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @CONFLICT_REASON_SKIP_WC, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %149

90:                                               ; preds = %84, %78
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  %95 = load i32 (i32, %struct.TYPE_17__*, i32*)*, i32 (i32, %struct.TYPE_17__*, i32*)** %94, align 8
  %96 = icmp ne i32 (i32, %struct.TYPE_17__*, i32*)* %95, null
  br i1 %96, label %97, label %131

97:                                               ; preds = %90
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = load i32, i32* @FALSE, align 4
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 @notify_merge_begin(%struct.TYPE_18__* %98, i8* %99, i32 %100, i32* %101)
  %103 = call i32 @SVN_ERR(i32 %102)
  %104 = load i8*, i8** %8, align 8
  %105 = load i32, i32* @svn_wc_notify_skip, align 4
  %106 = load i32*, i32** %9, align 8
  %107 = call %struct.TYPE_17__* @svn_wc_create_notify(i8* %104, i32 %105, i32* %106)
  store %struct.TYPE_17__* %107, %struct.TYPE_17__** %11, align 8
  %108 = load i32, i32* @svn_node_file, align 4
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  %111 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %7, align 8
  %112 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 1
  store i32 %113, i32* %117, align 4
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  %122 = load i32 (i32, %struct.TYPE_17__*, i32*)*, i32 (i32, %struct.TYPE_17__*, i32*)** %121, align 8
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 3
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %129 = load i32*, i32** %9, align 8
  %130 = call i32 %122(i32 %127, %struct.TYPE_17__* %128, i32* %129)
  br label %131

131:                                              ; preds = %97, %90
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %131
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %137, %131
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = call i32 @store_path(i32 %145, i8* %146)
  br label %148

148:                                              ; preds = %142, %137
  br label %181

149:                                              ; preds = %84
  %150 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %7, align 8
  %151 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @CONFLICT_REASON_NONE, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %180

155:                                              ; preds = %149
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %157 = load i8*, i8** %8, align 8
  %158 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %7, align 8
  %159 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %158, i32 0, i32 5
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %159, align 8
  %161 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %7, align 8
  %162 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %7, align 8
  %165 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %7, align 8
  %168 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %7, align 8
  %171 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %7, align 8
  %174 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i8*, i8** @TRUE, align 8
  %177 = load i32*, i32** %9, align 8
  %178 = call i32 @record_tree_conflict(%struct.TYPE_18__* %156, i8* %157, %struct.TYPE_19__* %160, i32 %163, i32 %166, i32 %169, i32 %172, i64 %175, i32* null, i8* %176, i32* %177)
  %179 = call i32 @SVN_ERR(i32 %178)
  br label %180

180:                                              ; preds = %155, %149
  br label %181

181:                                              ; preds = %180, %148
  br label %182

182:                                              ; preds = %181, %70
  %183 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %183, i32** %5, align 8
  br label %184

184:                                              ; preds = %182, %50, %16
  %185 = load i32*, i32** %5, align 8
  ret i32* %185
}

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @mark_dir_edited(%struct.TYPE_18__*, %struct.TYPE_19__*, i8*, i32*) #1

declare dso_local i32 @notify_merge_begin(%struct.TYPE_18__*, i8*, i32, i32*) #1

declare dso_local %struct.TYPE_17__* @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local i32 @store_path(i32, i8*) #1

declare dso_local i32 @record_tree_conflict(%struct.TYPE_18__*, i8*, %struct.TYPE_19__*, i32, i32, i32, i32, i64, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
