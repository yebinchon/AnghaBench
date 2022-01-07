; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_svn_fs_base__dag_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_svn_fs_base__dag_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32*, i32 }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_FS_NOT_DIRECTORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Attempted to delete entry '%s' from *non*-directory node\00", align 1
@SVN_ERR_FS_NOT_MUTABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Attempted to delete entry '%s' from immutable directory node\00", align 1
@SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Attempted to delete a node with an illegal name '%s'\00", align 1
@SVN_ERR_FS_NO_SUCH_ENTRY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Delete failed: directory has no entry '%s'\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_base__dag_delete(%struct.TYPE_16__* %0, i8* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_14__, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_16__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_13__*, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* null, i32** %15, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %17, align 8
  store i32* null, i32** %19, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @svn_node_dir, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %5
  %33 = load i32, i32* @SVN_ERR_FS_NOT_DIRECTORY, align 4
  %34 = call i32 @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %35 = load i8*, i8** %8, align 8
  %36 = call i32* @svn_error_createf(i32 %33, i32* null, i32 %34, i8* %35)
  store i32* %36, i32** %6, align 8
  br label %183

37:                                               ; preds = %5
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @svn_fs_base__dag_check_mutable(%struct.TYPE_16__* %38, i8* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @SVN_ERR_FS_NOT_MUTABLE, align 4
  %44 = call i32 @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i8*, i8** %8, align 8
  %46 = call i32* @svn_error_createf(i32 %43, i32* null, i32 %44, i8* %45)
  store i32* %46, i32** %6, align 8
  br label %183

47:                                               ; preds = %37
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @svn_path_is_single_path_component(i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT, align 4
  %53 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i8*, i8** %8, align 8
  %55 = call i32* @svn_error_createf(i32 %52, i32* null, i32 %53, i8* %54)
  store i32* %55, i32** %6, align 8
  br label %183

56:                                               ; preds = %47
  %57 = load i32*, i32** %17, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @svn_fs_bdb__get_node_revision(%struct.TYPE_15__** %12, i32* %57, i32 %60, i32* %61, i32* %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %13, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %56
  %71 = load i32, i32* @SVN_ERR_FS_NO_SUCH_ENTRY, align 4
  %72 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i8*, i8** %8, align 8
  %74 = call i32* @svn_error_createf(i32 %71, i32* null, i32 %72, i8* %73)
  store i32* %74, i32** %6, align 8
  br label %183

75:                                               ; preds = %56
  %76 = load i8*, i8** %13, align 8
  %77 = load i32*, i32** %17, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @svn_fs_base__get_mutable_rep(i8** %14, i8* %76, i32* %77, i8* %78, i32* %79, i32* %80)
  %82 = call i32 @SVN_ERR(i32 %81)
  %83 = load i8*, i8** %14, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = call i32 @svn_fs_base__same_keys(i8* %83, i8* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %100, label %87

87:                                               ; preds = %75
  %88 = load i8*, i8** %14, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  %91 = load i32*, i32** %17, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = call i32 @svn_fs_bdb__put_node_revision(i32* %91, i32 %94, %struct.TYPE_15__* %95, i32* %96, i32* %97)
  %99 = call i32 @SVN_ERR(i32 %98)
  br label %100

100:                                              ; preds = %87, %75
  %101 = load i32*, i32** %17, align 8
  %102 = load i8*, i8** %13, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = call i32 @svn_fs_base__rep_contents(%struct.TYPE_14__* %18, i32* %101, i8* %102, i32* %103, i32* %104)
  %106 = call i32 @SVN_ERR(i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %11, align 8
  %112 = call i32* @svn_skel__parse(i32 %108, i32 %110, i32* %111)
  store i32* %112, i32** %16, align 8
  %113 = load i32*, i32** %16, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %100
  %116 = load i32*, i32** %16, align 8
  %117 = load i32*, i32** %11, align 8
  %118 = call i32 @svn_fs_base__parse_entries_skel(i32** %15, i32* %116, i32* %117)
  %119 = call i32 @SVN_ERR(i32 %118)
  br label %120

120:                                              ; preds = %115, %100
  %121 = load i32*, i32** %15, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i32*, i32** %15, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = call i32* @svn_hash_gets(i32* %124, i8* %125)
  store i32* %126, i32** %19, align 8
  br label %127

127:                                              ; preds = %123, %120
  %128 = load i32*, i32** %19, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %135, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* @SVN_ERR_FS_NO_SUCH_ENTRY, align 4
  %132 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %133 = load i8*, i8** %8, align 8
  %134 = call i32* @svn_error_createf(i32 %131, i32* null, i32 %132, i8* %133)
  store i32* %134, i32** %6, align 8
  br label %183

135:                                              ; preds = %127
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %137 = call i32 @svn_fs_base__dag_get_fs(%struct.TYPE_16__* %136)
  %138 = load i32*, i32** %19, align 8
  %139 = load i32*, i32** %10, align 8
  %140 = load i32*, i32** %11, align 8
  %141 = call i32 @svn_fs_base__dag_get_node(%struct.TYPE_16__** %20, i32 %137, i32* %138, i32* %139, i32* %140)
  %142 = call i32 @SVN_ERR(i32 %141)
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load i32*, i32** %19, align 8
  %147 = load i8*, i8** %9, align 8
  %148 = load i32*, i32** %10, align 8
  %149 = load i32*, i32** %11, align 8
  %150 = call i32 @svn_fs_base__dag_delete_if_mutable(i32* %145, i32* %146, i8* %147, i32* %148, i32* %149)
  %151 = call i32 @SVN_ERR(i32 %150)
  %152 = load i32*, i32** %15, align 8
  %153 = load i8*, i8** %8, align 8
  %154 = call i32 @svn_hash_sets(i32* %152, i8* %153, i32* null)
  %155 = load i32*, i32** %15, align 8
  %156 = load i32*, i32** %11, align 8
  %157 = call i32 @svn_fs_base__unparse_entries_skel(i32** %16, i32* %155, i32* %156)
  %158 = call i32 @SVN_ERR(i32 %157)
  %159 = load i32*, i32** %16, align 8
  %160 = load i32*, i32** %11, align 8
  %161 = call %struct.TYPE_13__* @svn_skel__unparse(i32* %159, i32* %160)
  store %struct.TYPE_13__* %161, %struct.TYPE_13__** %22, align 8
  %162 = load i32*, i32** %17, align 8
  %163 = load i8*, i8** %14, align 8
  %164 = load i8*, i8** %9, align 8
  %165 = load i32, i32* @TRUE, align 4
  %166 = load i32*, i32** %10, align 8
  %167 = load i32*, i32** %11, align 8
  %168 = call i32 @svn_fs_base__rep_contents_write_stream(i32** %21, i32* %162, i8* %163, i8* %164, i32 %165, i32* %166, i32* %167)
  %169 = call i32 @SVN_ERR(i32 %168)
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %23, align 4
  %173 = load i32*, i32** %21, align 8
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @svn_stream_write(i32* %173, i32 %176, i32* %23)
  %178 = call i32 @SVN_ERR(i32 %177)
  %179 = load i32*, i32** %21, align 8
  %180 = call i32 @svn_stream_close(i32* %179)
  %181 = call i32 @SVN_ERR(i32 %180)
  %182 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %182, i32** %6, align 8
  br label %183

183:                                              ; preds = %135, %130, %70, %51, %42, %32
  %184 = load i32*, i32** %6, align 8
  ret i32* %184
}

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_base__dag_check_mutable(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @svn_path_is_single_path_component(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_bdb__get_node_revision(%struct.TYPE_15__**, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_base__get_mutable_rep(i8**, i8*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_fs_base__same_keys(i8*, i8*) #1

declare dso_local i32 @svn_fs_bdb__put_node_revision(i32*, i32, %struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32 @svn_fs_base__rep_contents(%struct.TYPE_14__*, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_skel__parse(i32, i32, i32*) #1

declare dso_local i32 @svn_fs_base__parse_entries_skel(i32**, i32*, i32*) #1

declare dso_local i32* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @svn_fs_base__dag_get_node(%struct.TYPE_16__**, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_base__dag_get_fs(%struct.TYPE_16__*) #1

declare dso_local i32 @svn_fs_base__dag_delete_if_mutable(i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_base__unparse_entries_skel(i32**, i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @svn_skel__unparse(i32*, i32*) #1

declare dso_local i32 @svn_fs_base__rep_contents_write_stream(i32**, i32*, i8*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_stream_write(i32*, i32, i32*) #1

declare dso_local i32 @svn_stream_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
