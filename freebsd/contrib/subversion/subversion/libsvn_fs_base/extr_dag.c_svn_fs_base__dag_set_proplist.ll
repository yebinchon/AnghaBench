; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_svn_fs_base__dag_set_proplist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_svn_fs_base__dag_set_proplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_42__ = type { i64 }
%struct.TYPE_44__ = type { i32 }
%struct.TYPE_43__ = type { i8* }
%struct.TYPE_41__ = type { %struct.TYPE_45__* }
%struct.TYPE_45__ = type { i64 }
%struct.TYPE_39__ = type { i32, i32 }
%struct.TYPE_40__ = type { i32 }

@SVN_ERR_FS_NOT_MUTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Can't set proplist on *immutable* node-revision %s\00", align 1
@SVN_FS_BASE__MIN_REP_SHARING_FORMAT = common dso_local global i64 0, align 8
@svn_checksum_sha1 = common dso_local global i32 0, align 4
@SVN_ERR_FS_NO_SUCH_CHECKSUM_REP = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_42__* null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_42__* @svn_fs_base__dag_set_proplist(%struct.TYPE_44__* %0, i32* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_42__*, align 8
  %7 = alloca %struct.TYPE_44__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_43__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_41__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_39__*, align 8
  %20 = alloca %struct.TYPE_45__*, align 8
  %21 = alloca %struct.TYPE_40__*, align 8
  %22 = alloca %struct.TYPE_42__*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  store %struct.TYPE_44__* %0, %struct.TYPE_44__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %25 = load %struct.TYPE_44__*, %struct.TYPE_44__** %7, align 8
  %26 = call %struct.TYPE_41__* @svn_fs_base__dag_get_fs(%struct.TYPE_44__* %25)
  store %struct.TYPE_41__* %26, %struct.TYPE_41__** %15, align 8
  %27 = load %struct.TYPE_41__*, %struct.TYPE_41__** %15, align 8
  %28 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_45__*, %struct.TYPE_45__** %28, align 8
  store %struct.TYPE_45__* %29, %struct.TYPE_45__** %20, align 8
  %30 = load %struct.TYPE_44__*, %struct.TYPE_44__** %7, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @svn_fs_base__dag_check_mutable(%struct.TYPE_44__* %30, i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %5
  %35 = load %struct.TYPE_44__*, %struct.TYPE_44__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = call %struct.TYPE_40__* @svn_fs_base__id_unparse(i32 %37, i32* %38)
  store %struct.TYPE_40__* %39, %struct.TYPE_40__** %21, align 8
  %40 = load i32, i32* @SVN_ERR_FS_NOT_MUTABLE, align 4
  %41 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.TYPE_40__*, %struct.TYPE_40__** %21, align 8
  %43 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.TYPE_42__* @svn_error_createf(i32 %40, i32* null, i32 %41, i32 %44)
  store %struct.TYPE_42__* %45, %struct.TYPE_42__** %6, align 8
  br label %180

46:                                               ; preds = %5
  %47 = load %struct.TYPE_41__*, %struct.TYPE_41__** %15, align 8
  %48 = load %struct.TYPE_44__*, %struct.TYPE_44__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %10, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call %struct.TYPE_42__* @svn_fs_bdb__get_node_revision(%struct.TYPE_43__** %12, %struct.TYPE_41__* %47, i32 %50, i32* %51, i32* %52)
  %54 = call i32 @SVN_ERR(%struct.TYPE_42__* %53)
  %55 = load %struct.TYPE_43__*, %struct.TYPE_43__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %13, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = call %struct.TYPE_42__* @svn_skel__unparse_proplist(i32** %18, i32* %58, i32* %59)
  %61 = call i32 @SVN_ERR(%struct.TYPE_42__* %60)
  %62 = load i32*, i32** %18, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = call %struct.TYPE_39__* @svn_skel__unparse(i32* %62, i32* %63)
  store %struct.TYPE_39__* %64, %struct.TYPE_39__** %19, align 8
  %65 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %66 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SVN_FS_BASE__MIN_REP_SHARING_FORMAT, align 8
  %69 = icmp sge i64 %67, %68
  br i1 %69, label %70, label %133

70:                                               ; preds = %46
  %71 = load i32, i32* @svn_checksum_sha1, align 4
  %72 = load %struct.TYPE_39__*, %struct.TYPE_39__** %19, align 8
  %73 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_39__*, %struct.TYPE_39__** %19, align 8
  %76 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %11, align 8
  %79 = call %struct.TYPE_42__* @svn_checksum(i32** %24, i32 %71, i32 %74, i32 %77, i32* %78)
  %80 = call i32 @SVN_ERR(%struct.TYPE_42__* %79)
  %81 = load %struct.TYPE_41__*, %struct.TYPE_41__** %15, align 8
  %82 = load i32*, i32** %24, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = call %struct.TYPE_42__* @svn_fs_bdb__get_checksum_rep(i8** %23, %struct.TYPE_41__* %81, i32* %82, i32* %83, i32* %84)
  store %struct.TYPE_42__* %85, %struct.TYPE_42__** %22, align 8
  %86 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %87 = icmp ne %struct.TYPE_42__* %86, null
  br i1 %87, label %115, label %88

88:                                               ; preds = %70
  %89 = load %struct.TYPE_43__*, %struct.TYPE_43__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = load %struct.TYPE_41__*, %struct.TYPE_41__** %15, align 8
  %95 = load %struct.TYPE_43__*, %struct.TYPE_43__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = load i32*, i32** %11, align 8
  %101 = call %struct.TYPE_42__* @svn_fs_base__delete_rep_if_mutable(%struct.TYPE_41__* %94, i8* %97, i8* %98, i32* %99, i32* %100)
  %102 = call i32 @SVN_ERR(%struct.TYPE_42__* %101)
  br label %103

103:                                              ; preds = %93, %88
  %104 = load i8*, i8** %23, align 8
  %105 = load %struct.TYPE_43__*, %struct.TYPE_43__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  %107 = load %struct.TYPE_41__*, %struct.TYPE_41__** %15, align 8
  %108 = load %struct.TYPE_44__*, %struct.TYPE_44__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_43__*, %struct.TYPE_43__** %12, align 8
  %112 = load i32*, i32** %10, align 8
  %113 = load i32*, i32** %11, align 8
  %114 = call %struct.TYPE_42__* @svn_fs_bdb__put_node_revision(%struct.TYPE_41__* %107, i32 %110, %struct.TYPE_43__* %111, i32* %112, i32* %113)
  store %struct.TYPE_42__* %114, %struct.TYPE_42__** %6, align 8
  br label %180

115:                                              ; preds = %70
  %116 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %117 = icmp ne %struct.TYPE_42__* %116, null
  br i1 %117, label %118, label %131

118:                                              ; preds = %115
  %119 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %120 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @SVN_ERR_FS_NO_SUCH_CHECKSUM_REP, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %126 = call %struct.TYPE_42__* @svn_error_trace(%struct.TYPE_42__* %125)
  store %struct.TYPE_42__* %126, %struct.TYPE_42__** %6, align 8
  br label %180

127:                                              ; preds = %118
  %128 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %129 = call i32 @svn_error_clear(%struct.TYPE_42__* %128)
  %130 = load %struct.TYPE_42__*, %struct.TYPE_42__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_42__* %130, %struct.TYPE_42__** %22, align 8
  br label %131

131:                                              ; preds = %127, %115
  br label %132

132:                                              ; preds = %131
  br label %133

133:                                              ; preds = %132, %46
  %134 = load i8*, i8** %13, align 8
  %135 = load %struct.TYPE_41__*, %struct.TYPE_41__** %15, align 8
  %136 = load i8*, i8** %9, align 8
  %137 = load i32*, i32** %10, align 8
  %138 = load i32*, i32** %11, align 8
  %139 = call %struct.TYPE_42__* @svn_fs_base__get_mutable_rep(i8** %14, i8* %134, %struct.TYPE_41__* %135, i8* %136, i32* %137, i32* %138)
  %140 = call i32 @SVN_ERR(%struct.TYPE_42__* %139)
  %141 = load i8*, i8** %14, align 8
  %142 = load i8*, i8** %13, align 8
  %143 = call i32 @svn_fs_base__same_keys(i8* %141, i8* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %158, label %145

145:                                              ; preds = %133
  %146 = load i8*, i8** %14, align 8
  %147 = load %struct.TYPE_43__*, %struct.TYPE_43__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %147, i32 0, i32 0
  store i8* %146, i8** %148, align 8
  %149 = load %struct.TYPE_41__*, %struct.TYPE_41__** %15, align 8
  %150 = load %struct.TYPE_44__*, %struct.TYPE_44__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_43__*, %struct.TYPE_43__** %12, align 8
  %154 = load i32*, i32** %10, align 8
  %155 = load i32*, i32** %11, align 8
  %156 = call %struct.TYPE_42__* @svn_fs_bdb__put_node_revision(%struct.TYPE_41__* %149, i32 %152, %struct.TYPE_43__* %153, i32* %154, i32* %155)
  %157 = call i32 @SVN_ERR(%struct.TYPE_42__* %156)
  br label %158

158:                                              ; preds = %145, %133
  %159 = load %struct.TYPE_41__*, %struct.TYPE_41__** %15, align 8
  %160 = load i8*, i8** %14, align 8
  %161 = load i8*, i8** %9, align 8
  %162 = load i32, i32* @TRUE, align 4
  %163 = load i32*, i32** %10, align 8
  %164 = load i32*, i32** %11, align 8
  %165 = call %struct.TYPE_42__* @svn_fs_base__rep_contents_write_stream(i32** %16, %struct.TYPE_41__* %159, i8* %160, i8* %161, i32 %162, i32* %163, i32* %164)
  %166 = call i32 @SVN_ERR(%struct.TYPE_42__* %165)
  %167 = load %struct.TYPE_39__*, %struct.TYPE_39__** %19, align 8
  %168 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %17, align 4
  %170 = load i32*, i32** %16, align 8
  %171 = load %struct.TYPE_39__*, %struct.TYPE_39__** %19, align 8
  %172 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call %struct.TYPE_42__* @svn_stream_write(i32* %170, i32 %173, i32* %17)
  %175 = call i32 @SVN_ERR(%struct.TYPE_42__* %174)
  %176 = load i32*, i32** %16, align 8
  %177 = call %struct.TYPE_42__* @svn_stream_close(i32* %176)
  %178 = call i32 @SVN_ERR(%struct.TYPE_42__* %177)
  %179 = load %struct.TYPE_42__*, %struct.TYPE_42__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_42__* %179, %struct.TYPE_42__** %6, align 8
  br label %180

180:                                              ; preds = %158, %124, %103, %34
  %181 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  ret %struct.TYPE_42__* %181
}

declare dso_local %struct.TYPE_41__* @svn_fs_base__dag_get_fs(%struct.TYPE_44__*) #1

declare dso_local i32 @svn_fs_base__dag_check_mutable(%struct.TYPE_44__*, i8*) #1

declare dso_local %struct.TYPE_40__* @svn_fs_base__id_unparse(i32, i32*) #1

declare dso_local %struct.TYPE_42__* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_42__*) #1

declare dso_local %struct.TYPE_42__* @svn_fs_bdb__get_node_revision(%struct.TYPE_43__**, %struct.TYPE_41__*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_42__* @svn_skel__unparse_proplist(i32**, i32*, i32*) #1

declare dso_local %struct.TYPE_39__* @svn_skel__unparse(i32*, i32*) #1

declare dso_local %struct.TYPE_42__* @svn_checksum(i32**, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_42__* @svn_fs_bdb__get_checksum_rep(i8**, %struct.TYPE_41__*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_42__* @svn_fs_base__delete_rep_if_mutable(%struct.TYPE_41__*, i8*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_42__* @svn_fs_bdb__put_node_revision(%struct.TYPE_41__*, i32, %struct.TYPE_43__*, i32*, i32*) #1

declare dso_local %struct.TYPE_42__* @svn_error_trace(%struct.TYPE_42__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_42__*) #1

declare dso_local %struct.TYPE_42__* @svn_fs_base__get_mutable_rep(i8**, i8*, %struct.TYPE_41__*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_fs_base__same_keys(i8*, i8*) #1

declare dso_local %struct.TYPE_42__* @svn_fs_base__rep_contents_write_stream(i32**, %struct.TYPE_41__*, i8*, i8*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_42__* @svn_stream_write(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_42__* @svn_stream_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
