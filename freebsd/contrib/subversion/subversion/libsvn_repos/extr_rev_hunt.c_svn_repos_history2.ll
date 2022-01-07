; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_rev_hunt.c_svn_repos_history2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_rev_hunt.c_svn_repos_history2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }

@SVN_ERR_FS_NO_SUCH_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid start revision %ld\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid end revision %ld\00", align 1
@SVN_ERR_AUTHZ_UNREADABLE = common dso_local global i32 0, align 4
@SVN_ERR_CEASE_INVOCATION = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_11__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @svn_repos_history2(i32* %0, i8* %1, %struct.TYPE_11__* (i8*, i8*, i64, i32*)* %2, i8* %3, i32 (i32*, i32*, i8*, i8*, i32*)* %4, i8* %5, i64 %6, i64 %7, i32 %8, i32* %9) #0 {
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_11__* (i8*, i8*, i64, i32*)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32 (i32*, i32*, i8*, i8*, i32*)*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca %struct.TYPE_11__*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32*, align 8
  store i32* %0, i32** %12, align 8
  store i8* %1, i8** %13, align 8
  store %struct.TYPE_11__* (i8*, i8*, i64, i32*)* %2, %struct.TYPE_11__* (i8*, i8*, i64, i32*)** %14, align 8
  store i8* %3, i8** %15, align 8
  store i32 (i32*, i32*, i8*, i8*, i32*)* %4, i32 (i32*, i32*, i8*, i8*, i32*)** %16, align 8
  store i8* %5, i8** %17, align 8
  store i64 %6, i64* %18, align 8
  store i64 %7, i64* %19, align 8
  store i32 %8, i32* %20, align 4
  store i32* %9, i32** %21, align 8
  %34 = load i32*, i32** %21, align 8
  %35 = call i32* @svn_pool_create(i32* %34)
  store i32* %35, i32** %23, align 8
  %36 = load i32*, i32** %21, align 8
  %37 = call i32* @svn_pool_create(i32* %36)
  store i32* %37, i32** %24, align 8
  %38 = load i64, i64* %18, align 8
  %39 = call i32 @SVN_IS_VALID_REVNUM(i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %10
  %42 = load i32, i32* @SVN_ERR_FS_NO_SUCH_REVISION, align 4
  %43 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %44 = load i64, i64* %18, align 8
  %45 = call %struct.TYPE_11__* @svn_error_createf(i32 %42, i32 0, i32 %43, i64 %44)
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %11, align 8
  br label %168

46:                                               ; preds = %10
  %47 = load i64, i64* %19, align 8
  %48 = call i32 @SVN_IS_VALID_REVNUM(i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @SVN_ERR_FS_NO_SUCH_REVISION, align 4
  %52 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i64, i64* %19, align 8
  %54 = call %struct.TYPE_11__* @svn_error_createf(i32 %51, i32 0, i32 %52, i64 %53)
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %11, align 8
  br label %168

55:                                               ; preds = %46
  %56 = load i64, i64* %18, align 8
  %57 = load i64, i64* %19, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i64, i64* %18, align 8
  store i64 %60, i64* %28, align 8
  %61 = load i64, i64* %19, align 8
  store i64 %61, i64* %18, align 8
  %62 = load i64, i64* %28, align 8
  store i64 %62, i64* %19, align 8
  br label %63

63:                                               ; preds = %59, %55
  %64 = load i32*, i32** %12, align 8
  %65 = load i64, i64* %19, align 8
  %66 = load i32*, i32** %21, align 8
  %67 = call i32 @svn_fs_revision_root(i32** %27, i32* %64, i64 %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load i32 (i32*, i32*, i8*, i8*, i32*)*, i32 (i32*, i32*, i8*, i8*, i32*)** %16, align 8
  %70 = icmp ne i32 (i32*, i32*, i8*, i8*, i32*)* %69, null
  br i1 %70, label %71, label %85

71:                                               ; preds = %63
  %72 = load i32 (i32*, i32*, i8*, i8*, i32*)*, i32 (i32*, i32*, i8*, i8*, i32*)** %16, align 8
  %73 = load i32*, i32** %27, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = load i8*, i8** %17, align 8
  %76 = load i32*, i32** %21, align 8
  %77 = call i32 %72(i32* %29, i32* %73, i8* %74, i8* %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load i32, i32* %29, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %71
  %82 = load i32, i32* @SVN_ERR_AUTHZ_UNREADABLE, align 4
  %83 = call %struct.TYPE_11__* @svn_error_create(i32 %82, i32* null, i32* null)
  store %struct.TYPE_11__* %83, %struct.TYPE_11__** %11, align 8
  br label %168

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %84, %63
  %86 = load i32*, i32** %27, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = load i32*, i32** %23, align 8
  %89 = load i32*, i32** %23, align 8
  %90 = call i32 @svn_fs_node_history2(i32** %22, i32* %86, i8* %87, i32* %88, i32* %89)
  %91 = call i32 @SVN_ERR(i32 %90)
  br label %92

92:                                               ; preds = %158, %85
  %93 = load i32*, i32** %22, align 8
  %94 = load i32, i32* %20, align 4
  %95 = load i32*, i32** %24, align 8
  %96 = load i32*, i32** %23, align 8
  %97 = call i32 @svn_fs_history_prev2(i32** %22, i32* %93, i32 %94, i32* %95, i32* %96)
  %98 = call i32 @SVN_ERR(i32 %97)
  %99 = load i32*, i32** %22, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %92
  br label %161

102:                                              ; preds = %92
  %103 = load i32*, i32** %22, align 8
  %104 = load i32*, i32** %24, align 8
  %105 = call i32 @svn_fs_history_location(i8** %25, i64* %26, i32* %103, i32* %104)
  %106 = call i32 @SVN_ERR(i32 %105)
  %107 = load i64, i64* %26, align 8
  %108 = load i64, i64* %18, align 8
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  br label %161

111:                                              ; preds = %102
  %112 = load i32 (i32*, i32*, i8*, i8*, i32*)*, i32 (i32*, i32*, i8*, i8*, i32*)** %16, align 8
  %113 = icmp ne i32 (i32*, i32*, i8*, i8*, i32*)* %112, null
  br i1 %113, label %114, label %131

114:                                              ; preds = %111
  %115 = load i32*, i32** %12, align 8
  %116 = load i64, i64* %26, align 8
  %117 = load i32*, i32** %24, align 8
  %118 = call i32 @svn_fs_revision_root(i32** %33, i32* %115, i64 %116, i32* %117)
  %119 = call i32 @SVN_ERR(i32 %118)
  %120 = load i32 (i32*, i32*, i8*, i8*, i32*)*, i32 (i32*, i32*, i8*, i8*, i32*)** %16, align 8
  %121 = load i32*, i32** %33, align 8
  %122 = load i8*, i8** %25, align 8
  %123 = load i8*, i8** %17, align 8
  %124 = load i32*, i32** %24, align 8
  %125 = call i32 %120(i32* %32, i32* %121, i8* %122, i8* %123, i32* %124)
  %126 = call i32 @SVN_ERR(i32 %125)
  %127 = load i32, i32* %32, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %114
  br label %161

130:                                              ; preds = %114
  br label %131

131:                                              ; preds = %130, %111
  %132 = load %struct.TYPE_11__* (i8*, i8*, i64, i32*)*, %struct.TYPE_11__* (i8*, i8*, i64, i32*)** %14, align 8
  %133 = load i8*, i8** %15, align 8
  %134 = load i8*, i8** %25, align 8
  %135 = load i64, i64* %26, align 8
  %136 = load i32*, i32** %24, align 8
  %137 = call %struct.TYPE_11__* %132(i8* %133, i8* %134, i64 %135, i32* %136)
  store %struct.TYPE_11__* %137, %struct.TYPE_11__** %31, align 8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %139 = icmp ne %struct.TYPE_11__* %138, null
  br i1 %139, label %140, label %152

140:                                              ; preds = %131
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @SVN_ERR_CEASE_INVOCATION, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %148 = call i32 @svn_error_clear(%struct.TYPE_11__* %147)
  br label %162

149:                                              ; preds = %140
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %151 = call %struct.TYPE_11__* @svn_error_trace(%struct.TYPE_11__* %150)
  store %struct.TYPE_11__* %151, %struct.TYPE_11__** %11, align 8
  br label %168

152:                                              ; preds = %131
  %153 = load i32*, i32** %23, align 8
  %154 = call i32 @svn_pool_clear(i32* %153)
  %155 = load i32*, i32** %23, align 8
  store i32* %155, i32** %30, align 8
  %156 = load i32*, i32** %24, align 8
  store i32* %156, i32** %23, align 8
  %157 = load i32*, i32** %30, align 8
  store i32* %157, i32** %24, align 8
  br label %158

158:                                              ; preds = %152
  %159 = load i32*, i32** %22, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %92, label %161

161:                                              ; preds = %158, %129, %110, %101
  br label %162

162:                                              ; preds = %161, %146
  %163 = load i32*, i32** %23, align 8
  %164 = call i32 @svn_pool_destroy(i32* %163)
  %165 = load i32*, i32** %24, align 8
  %166 = call i32 @svn_pool_destroy(i32* %165)
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_11__* %167, %struct.TYPE_11__** %11, align 8
  br label %168

168:                                              ; preds = %162, %149, %81, %50, %41
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  ret %struct.TYPE_11__* %169
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local %struct.TYPE_11__* @svn_error_createf(i32, i32, i32, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_revision_root(i32**, i32*, i64, i32*) #1

declare dso_local %struct.TYPE_11__* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_node_history2(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_fs_history_prev2(i32**, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_history_location(i8**, i64*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @svn_error_trace(%struct.TYPE_11__*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
