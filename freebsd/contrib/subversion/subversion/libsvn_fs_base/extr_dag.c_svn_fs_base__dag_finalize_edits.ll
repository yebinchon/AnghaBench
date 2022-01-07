; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_svn_fs_base__dag_finalize_edits.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_svn_fs_base__dag_finalize_edits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_47__ = type { i64 }
%struct.TYPE_50__ = type { i64, i32, %struct.TYPE_46__* }
%struct.TYPE_46__ = type { %struct.TYPE_51__* }
%struct.TYPE_51__ = type { i64 }
%struct.TYPE_48__ = type { i64 }
%struct.TYPE_45__ = type { i32 }
%struct.TYPE_49__ = type { i8*, i8*, i8* }

@svn_node_file = common dso_local global i64 0, align 8
@SVN_ERR_FS_NOT_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Attempted to set textual contents of a *non*-file node\00", align 1
@SVN_ERR_FS_NOT_MUTABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Attempted to set textual contents of an immutable node\00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_47__* null, align 8
@svn_checksum_md5 = common dso_local global i64 0, align 8
@svn_checksum_sha1 = common dso_local global i64 0, align 8
@SVN_ERR_BAD_CHECKSUM_KIND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Checksum mismatch on representation '%s'\00", align 1
@SVN_FS_BASE__MIN_REP_SHARING_FORMAT = common dso_local global i64 0, align 8
@SVN_ERR_FS_NO_SUCH_CHECKSUM_REP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_47__* @svn_fs_base__dag_finalize_edits(%struct.TYPE_50__* %0, %struct.TYPE_48__* %1, i8* %2, %struct.TYPE_45__* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_47__*, align 8
  %7 = alloca %struct.TYPE_50__*, align 8
  %8 = alloca %struct.TYPE_48__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_45__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_46__*, align 8
  %13 = alloca %struct.TYPE_49__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_48__*, align 8
  %19 = alloca %struct.TYPE_48__*, align 8
  %20 = alloca %struct.TYPE_51__*, align 8
  %21 = alloca %struct.TYPE_48__*, align 8
  %22 = alloca %struct.TYPE_47__*, align 8
  store %struct.TYPE_50__* %0, %struct.TYPE_50__** %7, align 8
  store %struct.TYPE_48__* %1, %struct.TYPE_48__** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_45__* %3, %struct.TYPE_45__** %10, align 8
  store i32* %4, i32** %11, align 8
  %23 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_46__*, %struct.TYPE_46__** %24, align 8
  store %struct.TYPE_46__* %25, %struct.TYPE_46__** %12, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  %26 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_51__*, %struct.TYPE_51__** %27, align 8
  store %struct.TYPE_51__* %28, %struct.TYPE_51__** %20, align 8
  %29 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @svn_node_file, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %5
  %35 = load i32, i32* @SVN_ERR_FS_NOT_FILE, align 4
  %36 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %37 = call %struct.TYPE_47__* @svn_error_createf(i32 %35, i32* null, i32 %36)
  store %struct.TYPE_47__* %37, %struct.TYPE_47__** %6, align 8
  br label %203

38:                                               ; preds = %5
  %39 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @svn_fs_base__dag_check_mutable(%struct.TYPE_50__* %39, i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @SVN_ERR_FS_NOT_MUTABLE, align 4
  %45 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %46 = call %struct.TYPE_47__* @svn_error_createf(i32 %44, i32* null, i32 %45)
  store %struct.TYPE_47__* %46, %struct.TYPE_47__** %6, align 8
  br label %203

47:                                               ; preds = %38
  %48 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %49 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = call %struct.TYPE_47__* @svn_fs_bdb__get_node_revision(%struct.TYPE_49__** %13, %struct.TYPE_46__* %48, i32 %51, %struct.TYPE_45__* %52, i32* %53)
  %55 = call i32 @SVN_ERR(%struct.TYPE_47__* %54)
  %56 = load %struct.TYPE_49__*, %struct.TYPE_49__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %47
  %61 = load %struct.TYPE_47__*, %struct.TYPE_47__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_47__* %61, %struct.TYPE_47__** %6, align 8
  br label %203

62:                                               ; preds = %47
  %63 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %64 = load %struct.TYPE_49__*, %struct.TYPE_49__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = call %struct.TYPE_47__* @svn_fs_base__rep_contents_checksums(%struct.TYPE_48__** %18, %struct.TYPE_48__** %19, %struct.TYPE_46__* %63, i8* %66, %struct.TYPE_45__* %67, i32* %68)
  %70 = call i32 @SVN_ERR(%struct.TYPE_47__* %69)
  %71 = load %struct.TYPE_48__*, %struct.TYPE_48__** %8, align 8
  %72 = icmp ne %struct.TYPE_48__* %71, null
  br i1 %72, label %73, label %108

73:                                               ; preds = %62
  %74 = load %struct.TYPE_48__*, %struct.TYPE_48__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @svn_checksum_md5, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load %struct.TYPE_48__*, %struct.TYPE_48__** %18, align 8
  store %struct.TYPE_48__* %80, %struct.TYPE_48__** %21, align 8
  br label %93

81:                                               ; preds = %73
  %82 = load %struct.TYPE_48__*, %struct.TYPE_48__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @svn_checksum_sha1, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  store %struct.TYPE_48__* %88, %struct.TYPE_48__** %21, align 8
  br label %92

89:                                               ; preds = %81
  %90 = load i32, i32* @SVN_ERR_BAD_CHECKSUM_KIND, align 4
  %91 = call %struct.TYPE_47__* @svn_error_create(i32 %90, i32* null, i32* null)
  store %struct.TYPE_47__* %91, %struct.TYPE_47__** %6, align 8
  br label %203

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92, %79
  %94 = load %struct.TYPE_48__*, %struct.TYPE_48__** %8, align 8
  %95 = load %struct.TYPE_48__*, %struct.TYPE_48__** %21, align 8
  %96 = call i32 @svn_checksum_match(%struct.TYPE_48__* %94, %struct.TYPE_48__* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %93
  %99 = load %struct.TYPE_48__*, %struct.TYPE_48__** %8, align 8
  %100 = load %struct.TYPE_48__*, %struct.TYPE_48__** %21, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %103 = load %struct.TYPE_49__*, %struct.TYPE_49__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call %struct.TYPE_47__* @svn_checksum_mismatch_err(%struct.TYPE_48__* %99, %struct.TYPE_48__* %100, i32* %101, i32 %102, i8* %105)
  store %struct.TYPE_47__* %106, %struct.TYPE_47__** %6, align 8
  br label %203

107:                                              ; preds = %93
  br label %108

108:                                              ; preds = %107, %62
  %109 = load %struct.TYPE_49__*, %struct.TYPE_49__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %14, align 8
  %112 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %113 = icmp ne %struct.TYPE_48__* %112, null
  br i1 %113, label %114, label %158

114:                                              ; preds = %108
  %115 = load %struct.TYPE_51__*, %struct.TYPE_51__** %20, align 8
  %116 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @SVN_FS_BASE__MIN_REP_SHARING_FORMAT, align 8
  %119 = icmp sge i64 %117, %118
  br i1 %119, label %120, label %158

120:                                              ; preds = %114
  %121 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %122 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %123 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %124 = load i32*, i32** %11, align 8
  %125 = call %struct.TYPE_47__* @svn_fs_bdb__get_checksum_rep(i8** %15, %struct.TYPE_46__* %121, %struct.TYPE_48__* %122, %struct.TYPE_45__* %123, i32* %124)
  store %struct.TYPE_47__* %125, %struct.TYPE_47__** %22, align 8
  %126 = load %struct.TYPE_47__*, %struct.TYPE_47__** %22, align 8
  %127 = icmp ne %struct.TYPE_47__* %126, null
  br i1 %127, label %138, label %128

128:                                              ; preds = %120
  %129 = load %struct.TYPE_49__*, %struct.TYPE_49__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  store i8* %131, i8** %16, align 8
  %132 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %136 = load i32*, i32** %11, align 8
  %137 = call %struct.TYPE_47__* @svn_fs_bdb__reserve_rep_reuse_id(i8** %17, i32 %134, %struct.TYPE_45__* %135, i32* %136)
  store %struct.TYPE_47__* %137, %struct.TYPE_47__** %22, align 8
  br label %155

138:                                              ; preds = %120
  %139 = load %struct.TYPE_47__*, %struct.TYPE_47__** %22, align 8
  %140 = icmp ne %struct.TYPE_47__* %139, null
  br i1 %140, label %141, label %154

141:                                              ; preds = %138
  %142 = load %struct.TYPE_47__*, %struct.TYPE_47__** %22, align 8
  %143 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @SVN_ERR_FS_NO_SUCH_CHECKSUM_REP, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %141
  %148 = load %struct.TYPE_47__*, %struct.TYPE_47__** %22, align 8
  %149 = call i32 @svn_error_clear(%struct.TYPE_47__* %148)
  %150 = load %struct.TYPE_47__*, %struct.TYPE_47__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_47__* %150, %struct.TYPE_47__** %22, align 8
  %151 = load %struct.TYPE_49__*, %struct.TYPE_49__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  store i8* %153, i8** %15, align 8
  br label %154

154:                                              ; preds = %147, %141, %138
  br label %155

155:                                              ; preds = %154, %128
  %156 = load %struct.TYPE_47__*, %struct.TYPE_47__** %22, align 8
  %157 = call i32 @SVN_ERR(%struct.TYPE_47__* %156)
  br label %162

158:                                              ; preds = %114, %108
  %159 = load %struct.TYPE_49__*, %struct.TYPE_49__** %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  store i8* %161, i8** %15, align 8
  br label %162

162:                                              ; preds = %158, %155
  %163 = load i8*, i8** %15, align 8
  %164 = load %struct.TYPE_49__*, %struct.TYPE_49__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %164, i32 0, i32 1
  store i8* %163, i8** %165, align 8
  %166 = load i8*, i8** %17, align 8
  %167 = load %struct.TYPE_49__*, %struct.TYPE_49__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %167, i32 0, i32 2
  store i8* %166, i8** %168, align 8
  %169 = load %struct.TYPE_49__*, %struct.TYPE_49__** %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %169, i32 0, i32 0
  store i8* null, i8** %170, align 8
  %171 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %172 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_49__*, %struct.TYPE_49__** %13, align 8
  %176 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %177 = load i32*, i32** %11, align 8
  %178 = call %struct.TYPE_47__* @svn_fs_bdb__put_node_revision(%struct.TYPE_46__* %171, i32 %174, %struct.TYPE_49__* %175, %struct.TYPE_45__* %176, i32* %177)
  %179 = call i32 @SVN_ERR(%struct.TYPE_47__* %178)
  %180 = load i8*, i8** %14, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %190

182:                                              ; preds = %162
  %183 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %184 = load i8*, i8** %14, align 8
  %185 = load i8*, i8** %9, align 8
  %186 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %187 = load i32*, i32** %11, align 8
  %188 = call %struct.TYPE_47__* @svn_fs_base__delete_rep_if_mutable(%struct.TYPE_46__* %183, i8* %184, i8* %185, %struct.TYPE_45__* %186, i32* %187)
  %189 = call i32 @SVN_ERR(%struct.TYPE_47__* %188)
  br label %190

190:                                              ; preds = %182, %162
  %191 = load i8*, i8** %16, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %193, label %201

193:                                              ; preds = %190
  %194 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %195 = load i8*, i8** %16, align 8
  %196 = load i8*, i8** %9, align 8
  %197 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %198 = load i32*, i32** %11, align 8
  %199 = call %struct.TYPE_47__* @svn_fs_base__delete_rep_if_mutable(%struct.TYPE_46__* %194, i8* %195, i8* %196, %struct.TYPE_45__* %197, i32* %198)
  %200 = call i32 @SVN_ERR(%struct.TYPE_47__* %199)
  br label %201

201:                                              ; preds = %193, %190
  %202 = load %struct.TYPE_47__*, %struct.TYPE_47__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_47__* %202, %struct.TYPE_47__** %6, align 8
  br label %203

203:                                              ; preds = %201, %98, %89, %60, %43, %34
  %204 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  ret %struct.TYPE_47__* %204
}

declare dso_local %struct.TYPE_47__* @svn_error_createf(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_base__dag_check_mutable(%struct.TYPE_50__*, i8*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_47__*) #1

declare dso_local %struct.TYPE_47__* @svn_fs_bdb__get_node_revision(%struct.TYPE_49__**, %struct.TYPE_46__*, i32, %struct.TYPE_45__*, i32*) #1

declare dso_local %struct.TYPE_47__* @svn_fs_base__rep_contents_checksums(%struct.TYPE_48__**, %struct.TYPE_48__**, %struct.TYPE_46__*, i8*, %struct.TYPE_45__*, i32*) #1

declare dso_local %struct.TYPE_47__* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i32 @svn_checksum_match(%struct.TYPE_48__*, %struct.TYPE_48__*) #1

declare dso_local %struct.TYPE_47__* @svn_checksum_mismatch_err(%struct.TYPE_48__*, %struct.TYPE_48__*, i32*, i32, i8*) #1

declare dso_local %struct.TYPE_47__* @svn_fs_bdb__get_checksum_rep(i8**, %struct.TYPE_46__*, %struct.TYPE_48__*, %struct.TYPE_45__*, i32*) #1

declare dso_local %struct.TYPE_47__* @svn_fs_bdb__reserve_rep_reuse_id(i8**, i32, %struct.TYPE_45__*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_47__*) #1

declare dso_local %struct.TYPE_47__* @svn_fs_bdb__put_node_revision(%struct.TYPE_46__*, i32, %struct.TYPE_49__*, %struct.TYPE_45__*, i32*) #1

declare dso_local %struct.TYPE_47__* @svn_fs_base__delete_rep_if_mutable(%struct.TYPE_46__*, i8*, i8*, %struct.TYPE_45__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
