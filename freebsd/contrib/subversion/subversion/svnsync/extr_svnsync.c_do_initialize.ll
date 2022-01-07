; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnsync/extr_svnsync.c_do_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnsync/extr_svnsync.c_do_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }

@APR_EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [193 x i8] c"Destination repository already contains revision history; consider using --allow-non-empty if the repository's revisions are known to mirror their respective revisions in the source repository\00", align 1
@SVNSYNC_PROP_FROM_URL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Destination repository is already synchronizing from '%s'\00", align 1
@SVN_RA_CAPABILITY_PARTIAL_REPLAY = common dso_local global i32 0, align 4
@SVN_ERR_UNKNOWN_CAPABILITY = common dso_local global i64 0, align 8
@SVN_ERR_RA_PARTIAL_REPLAY_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"Destination repository has more revisions than source repository\00", align 1
@SVNSYNC_PROP_FROM_UUID = common dso_local global i32 0, align 4
@SVNSYNC_PROP_LAST_MERGED_REV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_16__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (i32*, %struct.TYPE_17__*, i32*)* @do_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @do_initialize(i32* %0, %struct.TYPE_17__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @svn_ra_get_latest_revnum(i32* %17, i64* %10, i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load i64, i64* %10, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @APR_EINVAL, align 4
  %30 = call i32* @_(i8* getelementptr inbounds ([193 x i8], [193 x i8]* @.str, i64 0, i64 0))
  %31 = call %struct.TYPE_16__* @svn_error_create(i32 %29, %struct.TYPE_16__* null, i32* %30)
  store %struct.TYPE_16__* %31, %struct.TYPE_16__** %4, align 8
  br label %168

32:                                               ; preds = %23, %3
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @SVNSYNC_PROP_FROM_URL, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @svn_ra_rev_prop(i32* %33, i32 0, i32 %34, %struct.TYPE_15__** %9, i32* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %39 = icmp ne %struct.TYPE_15__* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %32
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @APR_EINVAL, align 4
  %47 = call i32* @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.TYPE_16__* @svn_error_createf(i32 %46, i32* null, i32* %47, i32 %50)
  store %struct.TYPE_16__* %51, %struct.TYPE_16__** %4, align 8
  br label %168

52:                                               ; preds = %40, %32
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @svn_ra_open4(i32** %8, i32* null, i8* %55, i32* null, i32* %57, %struct.TYPE_17__* %58, i32 %61, i32* %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  %65 = load i32*, i32** %8, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @svn_ra_get_repos_root2(i32* %65, i8** %13, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load i8*, i8** %13, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @strcmp(i8* %69, i8* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %102

75:                                               ; preds = %52
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* @SVN_RA_CAPABILITY_PARTIAL_REPLAY, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = call %struct.TYPE_16__* @svn_ra_has_capability(i32* %76, i32* %15, i32 %77, i32* %78)
  store %struct.TYPE_16__* %79, %struct.TYPE_16__** %16, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %81 = icmp ne %struct.TYPE_16__* %80, null
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @SVN_ERR_UNKNOWN_CAPABILITY, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %90 = call %struct.TYPE_16__* @svn_error_trace(%struct.TYPE_16__* %89)
  store %struct.TYPE_16__* %90, %struct.TYPE_16__** %4, align 8
  br label %168

91:                                               ; preds = %82, %75
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %93 = icmp ne %struct.TYPE_16__* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %15, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %94, %91
  %98 = load i32, i32* @SVN_ERR_RA_PARTIAL_REPLAY_NOT_SUPPORTED, align 4
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %100 = call %struct.TYPE_16__* @svn_error_create(i32 %98, %struct.TYPE_16__* %99, i32* null)
  store %struct.TYPE_16__* %100, %struct.TYPE_16__** %4, align 8
  br label %168

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %52
  %103 = load i64, i64* %10, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %102
  %106 = load i32*, i32** %8, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @svn_ra_get_latest_revnum(i32* %106, i64* %11, i32* %107)
  %109 = call i32 @SVN_ERR(i32 %108)
  %110 = load i64, i64* %11, align 8
  %111 = load i64, i64* %10, align 8
  %112 = icmp slt i64 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %105
  %114 = load i32, i32* @APR_EINVAL, align 4
  %115 = call i32* @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  %116 = call %struct.TYPE_16__* @svn_error_create(i32 %114, %struct.TYPE_16__* null, i32* %115)
  store %struct.TYPE_16__* %116, %struct.TYPE_16__** %4, align 8
  br label %168

117:                                              ; preds = %105
  br label %118

118:                                              ; preds = %117, %102
  %119 = load i32*, i32** %5, align 8
  %120 = load i32, i32* @SVNSYNC_PROP_FROM_URL, align 4
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load i32*, i32** %7, align 8
  %125 = call i32 @svn_string_create(i8* %123, i32* %124)
  %126 = load i32*, i32** %7, align 8
  %127 = call i32 @svn_ra_change_rev_prop2(i32* %119, i32 0, i32 %120, i32* null, i32 %125, i32* %126)
  %128 = call i32 @SVN_ERR(i32 %127)
  %129 = load i32*, i32** %8, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = call i32 @svn_ra_get_uuid2(i32* %129, i8** %12, i32* %130)
  %132 = call i32 @SVN_ERR(i32 %131)
  %133 = load i32*, i32** %5, align 8
  %134 = load i32, i32* @SVNSYNC_PROP_FROM_UUID, align 4
  %135 = load i8*, i8** %12, align 8
  %136 = load i32*, i32** %7, align 8
  %137 = call i32 @svn_string_create(i8* %135, i32* %136)
  %138 = load i32*, i32** %7, align 8
  %139 = call i32 @svn_ra_change_rev_prop2(i32* %133, i32 0, i32 %134, i32* null, i32 %137, i32* %138)
  %140 = call i32 @SVN_ERR(i32 %139)
  %141 = load i32*, i32** %5, align 8
  %142 = load i32, i32* @SVNSYNC_PROP_LAST_MERGED_REV, align 4
  %143 = load i32*, i32** %7, align 8
  %144 = load i64, i64* %10, align 8
  %145 = call i32 @svn_string_createf(i32* %143, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 %144)
  %146 = load i32*, i32** %7, align 8
  %147 = call i32 @svn_ra_change_rev_prop2(i32* %141, i32 0, i32 %142, i32* null, i32 %145, i32* %146)
  %148 = call i32 @SVN_ERR(i32 %147)
  %149 = load i32*, i32** %8, align 8
  %150 = load i32*, i32** %5, align 8
  %151 = load i64, i64* %10, align 8
  %152 = load i32, i32* @FALSE, align 4
  %153 = load i32, i32* @FALSE, align 4
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load i32*, i32** %7, align 8
  %161 = call i32 @copy_revprops(i32* %149, i32* %150, i64 %151, i32 %152, i32 %153, i32 %156, i32 %159, i32* %14, i32* %160)
  %162 = call i32 @SVN_ERR(i32 %161)
  %163 = load i32, i32* %14, align 4
  %164 = load i32*, i32** %7, align 8
  %165 = call i32 @log_properties_normalized(i32 %163, i32 0, i32* %164)
  %166 = call i32 @SVN_ERR(i32 %165)
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_16__* %167, %struct.TYPE_16__** %4, align 8
  br label %168

168:                                              ; preds = %118, %113, %97, %88, %45, %28
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  ret %struct.TYPE_16__* %169
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_get_latest_revnum(i32*, i64*, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_error_create(i32, %struct.TYPE_16__*, i32*) #1

declare dso_local i32* @_(i8*) #1

declare dso_local i32 @svn_ra_rev_prop(i32*, i32, i32, %struct.TYPE_15__**, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_error_createf(i32, i32*, i32*, i32) #1

declare dso_local i32 @svn_ra_open4(i32**, i32*, i8*, i32*, i32*, %struct.TYPE_17__*, i32, i32*) #1

declare dso_local i32 @svn_ra_get_repos_root2(i32*, i8**, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_16__* @svn_ra_has_capability(i32*, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_error_trace(%struct.TYPE_16__*) #1

declare dso_local i32 @svn_ra_change_rev_prop2(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @svn_string_create(i8*, i32*) #1

declare dso_local i32 @svn_ra_get_uuid2(i32*, i8**, i32*) #1

declare dso_local i32 @svn_string_createf(i32*, i8*, i64) #1

declare dso_local i32 @copy_revprops(i32*, i32*, i64, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @log_properties_normalized(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
