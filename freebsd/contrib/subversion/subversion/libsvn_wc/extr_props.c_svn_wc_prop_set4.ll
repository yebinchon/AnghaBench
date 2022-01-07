; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_props.c_svn_wc_prop_set4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_props.c_svn_wc_prop_set4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i64 }
%struct.propset_walk_baton = type { i8*, i8*, i32, i32, i32*, i32* }

@svn_prop_entry_kind = common dso_local global i32 0, align 4
@SVN_ERR_BAD_PROP_KIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Property '%s' is an entry property\00", align 1
@svn_prop_wc_kind = common dso_local global i32 0, align 4
@svn_depth_empty = common dso_local global i64 0, align 8
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@svn_wc__db_status_added = common dso_local global i64 0, align 8
@svn_wc__db_status_incomplete = common dso_local global i64 0, align 8
@SVN_ERR_WC_INVALID_SCHEDULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"Can't set properties on '%s': invalid status for updating properties.\00", align 1
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_file = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@propset_walk_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_prop_set4(%struct.TYPE_7__* %0, i8* %1, i8* %2, i32* %3, i64 %4, i32 %5, %struct.TYPE_8__* %6, i32 %7, i8* %8, i32 %9, i8* %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_8__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca %struct.propset_walk_baton, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %14, align 8
  store i8* %1, i8** %15, align 8
  store i8* %2, i8** %16, align 8
  store i32* %3, i32** %17, align 8
  store i64 %4, i64* %18, align 8
  store i32 %5, i32* %19, align 4
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %20, align 8
  store i32 %7, i32* %21, align 4
  store i8* %8, i8** %22, align 8
  store i32 %9, i32* %23, align 4
  store i8* %10, i8** %24, align 8
  store i32* %11, i32** %25, align 8
  %33 = load i8*, i8** %16, align 8
  %34 = call i32 @svn_property_kind2(i8* %33)
  store i32 %34, i32* %26, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %29, align 8
  %38 = load i32, i32* %26, align 4
  %39 = load i32, i32* @svn_prop_entry_kind, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %12
  %42 = load i32, i32* @SVN_ERR_BAD_PROP_KIND, align 4
  %43 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %44 = load i8*, i8** %16, align 8
  %45 = call i32* @svn_error_createf(i32 %42, i32* null, i32 %43, i8* %44)
  store i32* %45, i32** %13, align 8
  br label %191

46:                                               ; preds = %12
  %47 = load i32, i32* %26, align 4
  %48 = load i32, i32* @svn_prop_wc_kind, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = load i64, i64* %18, align 8
  %52 = load i64, i64* @svn_depth_empty, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @SVN_ERR_ASSERT(i32 %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i8*, i8** %15, align 8
  %60 = load i8*, i8** %16, align 8
  %61 = load i32*, i32** %17, align 8
  %62 = load i32*, i32** %25, align 8
  %63 = call i32 @wcprop_set(i32* %58, i8* %59, i8* %60, i32* %61, i32* %62)
  %64 = call i32* @svn_error_trace(i32 %63)
  store i32* %64, i32** %13, align 8
  br label %191

65:                                               ; preds = %46
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i8*, i8** %15, align 8
  %70 = load i32*, i32** %25, align 8
  %71 = load i32*, i32** %25, align 8
  %72 = call i32 @svn_wc__db_read_info(i64* %27, i64* %28, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %68, i8* %69, i32* %70, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = load i64, i64* %27, align 8
  %75 = load i64, i64* @svn_wc__db_status_normal, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %65
  %78 = load i64, i64* %27, align 8
  %79 = load i64, i64* @svn_wc__db_status_added, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %77
  %82 = load i64, i64* %27, align 8
  %83 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load i32, i32* @SVN_ERR_WC_INVALID_SCHEDULE, align 4
  %87 = call i32 @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i8*, i8** %15, align 8
  %89 = load i32*, i32** %25, align 8
  %90 = call i8* @svn_dirent_local_style(i8* %88, i32* %89)
  %91 = call i32* @svn_error_createf(i32 %86, i32* null, i32 %87, i8* %90)
  store i32* %91, i32** %13, align 8
  br label %191

92:                                               ; preds = %81, %77, %65
  %93 = load i64, i64* %28, align 8
  %94 = load i64, i64* @svn_node_dir, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i8*, i8** %15, align 8
  store i8* %97, i8** %30, align 8
  br label %102

98:                                               ; preds = %92
  %99 = load i8*, i8** %15, align 8
  %100 = load i32*, i32** %25, align 8
  %101 = call i8* @svn_dirent_dirname(i8* %99, i32* %100)
  store i8* %101, i8** %30, align 8
  br label %102

102:                                              ; preds = %98, %96
  %103 = load i32*, i32** %29, align 8
  %104 = load i8*, i8** %30, align 8
  %105 = load i32*, i32** %25, align 8
  %106 = call i32 @svn_wc__write_check(i32* %103, i8* %104, i32* %105)
  %107 = call i32 @SVN_ERR(i32 %106)
  %108 = load i64, i64* %18, align 8
  %109 = load i64, i64* @svn_depth_empty, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %115, label %111

111:                                              ; preds = %102
  %112 = load i64, i64* %28, align 8
  %113 = load i64, i64* @svn_node_dir, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %161

115:                                              ; preds = %111, %102
  store i32* null, i32** %31, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %117 = icmp ne %struct.TYPE_8__* %116, null
  br i1 %117, label %118, label %128

118:                                              ; preds = %115
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %125 = load i32*, i32** %25, align 8
  %126 = call i32 @svn_hash_from_cstring_keys(i32** %31, %struct.TYPE_8__* %124, i32* %125)
  %127 = call i32 @SVN_ERR(i32 %126)
  br label %128

128:                                              ; preds = %123, %118, %115
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i8*, i8** %15, align 8
  %133 = load i32*, i32** %31, align 8
  %134 = load i32*, i32** %25, align 8
  %135 = call i32 @svn_wc__internal_changelist_match(i32* %131, i8* %132, i32* %133, i32* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %128
  %138 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %138, i32** %13, align 8
  br label %191

139:                                              ; preds = %128
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i8*, i8** %15, align 8
  %144 = load i64, i64* %28, align 8
  %145 = load i64, i64* @svn_node_dir, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %139
  %148 = load i64, i64* @svn_node_dir, align 8
  br label %151

149:                                              ; preds = %139
  %150 = load i64, i64* @svn_node_file, align 8
  br label %151

151:                                              ; preds = %149, %147
  %152 = phi i64 [ %148, %147 ], [ %150, %149 ]
  %153 = load i8*, i8** %16, align 8
  %154 = load i32*, i32** %17, align 8
  %155 = load i32, i32* %19, align 4
  %156 = load i32, i32* %23, align 4
  %157 = load i8*, i8** %24, align 8
  %158 = load i32*, i32** %25, align 8
  %159 = call i32 @do_propset(i32* %142, i8* %143, i64 %152, i8* %153, i32* %154, i32 %155, i32 %156, i8* %157, i32* %158)
  %160 = call i32 @SVN_ERR(i32 %159)
  br label %189

161:                                              ; preds = %111
  %162 = load i8*, i8** %16, align 8
  %163 = getelementptr inbounds %struct.propset_walk_baton, %struct.propset_walk_baton* %32, i32 0, i32 0
  store i8* %162, i8** %163, align 8
  %164 = load i32*, i32** %17, align 8
  %165 = getelementptr inbounds %struct.propset_walk_baton, %struct.propset_walk_baton* %32, i32 0, i32 5
  store i32* %164, i32** %165, align 8
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds %struct.propset_walk_baton, %struct.propset_walk_baton* %32, i32 0, i32 4
  store i32* %168, i32** %169, align 8
  %170 = load i32, i32* %19, align 4
  %171 = getelementptr inbounds %struct.propset_walk_baton, %struct.propset_walk_baton* %32, i32 0, i32 3
  store i32 %170, i32* %171, align 4
  %172 = load i32, i32* %23, align 4
  %173 = getelementptr inbounds %struct.propset_walk_baton, %struct.propset_walk_baton* %32, i32 0, i32 2
  store i32 %172, i32* %173, align 8
  %174 = load i8*, i8** %24, align 8
  %175 = getelementptr inbounds %struct.propset_walk_baton, %struct.propset_walk_baton* %32, i32 0, i32 1
  store i8* %174, i8** %175, align 8
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i8*, i8** %15, align 8
  %180 = load i32, i32* @FALSE, align 4
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %182 = load i32, i32* @propset_walk_cb, align 4
  %183 = load i64, i64* %18, align 8
  %184 = load i32, i32* %21, align 4
  %185 = load i8*, i8** %22, align 8
  %186 = load i32*, i32** %25, align 8
  %187 = call i32 @svn_wc__internal_walk_children(i32* %178, i8* %179, i32 %180, %struct.TYPE_8__* %181, i32 %182, %struct.propset_walk_baton* %32, i64 %183, i32 %184, i8* %185, i32* %186)
  %188 = call i32 @SVN_ERR(i32 %187)
  br label %189

189:                                              ; preds = %161, %151
  %190 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %190, i32** %13, align 8
  br label %191

191:                                              ; preds = %189, %137, %85, %50, %41
  %192 = load i32*, i32** %13, align 8
  ret i32* %192
}

declare dso_local i32 @svn_property_kind2(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @wcprop_set(i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_read_info(i64*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i8* @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @svn_wc__write_check(i32*, i8*, i32*) #1

declare dso_local i32 @svn_hash_from_cstring_keys(i32**, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @svn_wc__internal_changelist_match(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @do_propset(i32*, i8*, i64, i8*, i32*, i32, i32, i8*, i32*) #1

declare dso_local i32 @svn_wc__internal_walk_children(i32*, i8*, i32, %struct.TYPE_8__*, i32, %struct.propset_walk_baton*, i64, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
