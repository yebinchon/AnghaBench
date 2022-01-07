; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_tree_conflicts.c_svn_wc__deserialize_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_tree_conflicts.c_svn_wc__deserialize_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_16__*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_17__ = type { i8* }

@SVN_ERR_WC_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Invalid conflict info '%s' in tree conflict description\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Empty 'victim' field in tree conflict description\00", align 1
@node_kind_map = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [55 x i8] c"Invalid 'node_kind' field in tree conflict description\00", align 1
@svn_wc__operation_map = common dso_local global i32 0, align 4
@svn_wc__conflict_action_map = common dso_local global i32 0, align 4
@svn_wc__conflict_reason_map = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__deserialize_conflict(%struct.TYPE_15__** %0, %struct.TYPE_16__* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__**, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__** %0, %struct.TYPE_15__*** %7, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %23 = call i32 @is_valid_conflict_skel(%struct.TYPE_16__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* @SVN_ERR_WC_CORRUPT, align 4
  %27 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %29 = icmp ne %struct.TYPE_16__* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = call %struct.TYPE_17__* @svn_skel__unparse(%struct.TYPE_16__* %31, i32* %32)
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  br label %37

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36, %30
  %38 = phi i8* [ %35, %30 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %36 ]
  %39 = call i32* @svn_error_createf(i32 %26, i32* null, i32 %27, i8* %38)
  store i32* %39, i32** %6, align 8
  br label %187

40:                                               ; preds = %5
  %41 = load i32*, i32** %11, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @apr_pstrmemdup(i32* %41, i32 %48, i32 %55)
  store i8* %56, i8** %12, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %40
  %63 = load i32, i32* @SVN_ERR_WC_CORRUPT, align 4
  %64 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %65 = call i32* @svn_error_create(i32 %63, i32* null, i32 %64)
  store i32* %65, i32** %6, align 8
  br label %187

66:                                               ; preds = %40
  %67 = load i32, i32* @node_kind_map, align 4
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %73, align 8
  %75 = call i32 @read_enum_field(i32* %20, i32 %67, %struct.TYPE_16__* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  %77 = load i32, i32* %20, align 4
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %14, align 8
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* @svn_node_file, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %66
  %83 = load i64, i64* %14, align 8
  %84 = load i64, i64* @svn_node_dir, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32, i32* @SVN_ERR_WC_CORRUPT, align 4
  %88 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %89 = call i32* @svn_error_create(i32 %87, i32* null, i32 %88)
  store i32* %89, i32** %6, align 8
  br label %187

90:                                               ; preds = %82, %66
  %91 = load i32, i32* @svn_wc__operation_map, align 4
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %99, align 8
  %101 = call i32 @read_enum_field(i32* %20, i32 %91, %struct.TYPE_16__* %100)
  %102 = call i32 @SVN_ERR(i32 %101)
  %103 = load i32, i32* %20, align 4
  %104 = sext i32 %103 to i64
  store i64 %104, i64* %15, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = load i32*, i32** %11, align 8
  %108 = call i32 @svn_dirent_join(i8* %105, i8* %106, i32* %107)
  %109 = load i32*, i32** %11, align 8
  %110 = call i32 @svn_dirent_get_absolute(i8** %13, i32 %108, i32* %109)
  %111 = call i32 @SVN_ERR(i32 %110)
  %112 = load i32, i32* @svn_wc__conflict_action_map, align 4
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %122, align 8
  %124 = call i32 @read_enum_field(i32* %20, i32 %112, %struct.TYPE_16__* %123)
  %125 = call i32 @SVN_ERR(i32 %124)
  %126 = load i32, i32* %20, align 4
  store i32 %126, i32* %16, align 4
  %127 = load i32, i32* @svn_wc__conflict_reason_map, align 4
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %139, align 8
  %141 = call i32 @read_enum_field(i32* %20, i32 %127, %struct.TYPE_16__* %140)
  %142 = call i32 @SVN_ERR(i32 %141)
  %143 = load i32, i32* %20, align 4
  store i32 %143, i32* %17, align 4
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %157, align 8
  store %struct.TYPE_16__* %158, %struct.TYPE_16__** %8, align 8
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %160 = load i32*, i32** %10, align 8
  %161 = load i32*, i32** %11, align 8
  %162 = call i32 @read_node_version_info(i32** %18, %struct.TYPE_16__* %159, i32* %160, i32* %161)
  %163 = call i32 @SVN_ERR(i32 %162)
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %165, align 8
  %167 = load i32*, i32** %10, align 8
  %168 = load i32*, i32** %11, align 8
  %169 = call i32 @read_node_version_info(i32** %19, %struct.TYPE_16__* %166, i32* %167, i32* %168)
  %170 = call i32 @SVN_ERR(i32 %169)
  %171 = load i8*, i8** %13, align 8
  %172 = load i64, i64* %14, align 8
  %173 = load i64, i64* %15, align 8
  %174 = load i32*, i32** %18, align 8
  %175 = load i32*, i32** %19, align 8
  %176 = load i32*, i32** %10, align 8
  %177 = call %struct.TYPE_15__* @svn_wc_conflict_description_create_tree2(i8* %171, i64 %172, i64 %173, i32* %174, i32* %175, i32* %176)
  store %struct.TYPE_15__* %177, %struct.TYPE_15__** %21, align 8
  %178 = load i32, i32* %16, align 4
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* %17, align 4
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 4
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %185 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  store %struct.TYPE_15__* %184, %struct.TYPE_15__** %185, align 8
  %186 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %186, i32** %6, align 8
  br label %187

187:                                              ; preds = %90, %86, %62, %37
  %188 = load i32*, i32** %6, align 8
  ret i32* %188
}

declare dso_local i32 @is_valid_conflict_skel(%struct.TYPE_16__*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_17__* @svn_skel__unparse(%struct.TYPE_16__*, i32*) #1

declare dso_local i8* @apr_pstrmemdup(i32*, i32, i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @read_enum_field(i32*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i32, i32*) #1

declare dso_local i32 @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i32 @read_node_version_info(i32**, %struct.TYPE_16__*, i32*, i32*) #1

declare dso_local %struct.TYPE_15__* @svn_wc_conflict_description_create_tree2(i8*, i64, i64, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
