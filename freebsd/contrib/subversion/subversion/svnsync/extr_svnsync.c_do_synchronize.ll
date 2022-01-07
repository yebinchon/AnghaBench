; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnsync/extr_svnsync.c_do_synchronize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnsync/extr_svnsync.c_do_synchronize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }

@SVNSYNC_PROP_CURRENTLY_COPYING = common dso_local global i32 0, align 4
@APR_EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [173 x i8] c"Revision being currently copied (%ld), last merged revision (%ld), and destination HEAD (%ld) are inconsistent; have you committed to the destination without using svnsync?\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@SVNSYNC_PROP_LAST_MERGED_REV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [123 x i8] c"Destination HEAD (%ld) is not the last merged revision (%ld); have you committed to the destination without using svnsync?\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_RA_CAPABILITY_COMMIT_REVPROPS = common dso_local global i32 0, align 4
@SVN_RA_CAPABILITY_ATOMIC_REVPROPS = common dso_local global i32 0, align 4
@replay_rev_started = common dso_local global i32 0, align 4
@replay_rev_finished = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_14__*, i32*)* @do_synchronize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @do_synchronize(i32* %0, %struct.TYPE_14__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @open_source_session(i32** %10, %struct.TYPE_13__** %8, i32 %21, i32* %22, i32* %24, i32 %27, %struct.TYPE_14__* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @SVNSYNC_PROP_CURRENTLY_COPYING, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @svn_ra_rev_prop(i32* %32, i32 0, i32 %33, %struct.TYPE_13__** %11, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @svn_ra_get_latest_revnum(i32* %37, i64* %12, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @SVN_STR_TO_REV(i32 %43)
  store i64 %44, i64* %14, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %46 = icmp ne %struct.TYPE_13__* %45, null
  br i1 %46, label %47, label %120

47:                                               ; preds = %3
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @SVN_STR_TO_REV(i32 %50)
  store i64 %51, i64* %13, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* %14, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %68, label %55

55:                                               ; preds = %47
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* %14, align 8
  %58 = add nsw i64 %57, 1
  %59 = icmp sgt i64 %56, %58
  br i1 %59, label %68, label %60

60:                                               ; preds = %55
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* %14, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %13, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %64, %55, %47
  %69 = load i32, i32* @APR_EINVAL, align 4
  %70 = call i32 @_(i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str, i64 0, i64 0))
  %71 = load i64, i64* %13, align 8
  %72 = load i64, i64* %14, align 8
  %73 = load i64, i64* %12, align 8
  %74 = call i32* (i32, i32*, i32, i64, i64, ...) @svn_error_createf(i32 %69, i32* null, i32 %70, i64 %71, i64 %72, i64 %73)
  store i32* %74, i32** %4, align 8
  br label %193

75:                                               ; preds = %64, %60
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* %12, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %118

79:                                               ; preds = %75
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* %14, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %106

83:                                               ; preds = %79
  %84 = load i32*, i32** %10, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load i32, i32* @TRUE, align 4
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @copy_revprops(i32* %84, i32* %85, i64 %86, i32 %87, i32 %90, i32 %93, i32 %96, i32* %18, i32* %97)
  %99 = call i32 @SVN_ERR(i32 %98)
  %100 = load i64, i64* %13, align 8
  store i64 %100, i64* %14, align 8
  %101 = load i32*, i32** %7, align 8
  %102 = load i64, i64* %14, align 8
  %103 = call i32 @apr_psprintf(i32* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %102)
  %104 = load i32*, i32** %7, align 8
  %105 = call %struct.TYPE_13__* @svn_string_create(i32 %103, i32* %104)
  store %struct.TYPE_13__* %105, %struct.TYPE_13__** %8, align 8
  br label %106

106:                                              ; preds = %83, %79
  %107 = load i32*, i32** %5, align 8
  %108 = load i32, i32* @SVNSYNC_PROP_LAST_MERGED_REV, align 4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %110 = load i32*, i32** %7, align 8
  %111 = call i32 @svn_ra_change_rev_prop2(i32* %107, i32 0, i32 %108, i32* null, %struct.TYPE_13__* %109, i32* %110)
  %112 = call i32 @SVN_ERR(i32 %111)
  %113 = load i32*, i32** %5, align 8
  %114 = load i32, i32* @SVNSYNC_PROP_CURRENTLY_COPYING, align 4
  %115 = load i32*, i32** %7, align 8
  %116 = call i32 @svn_ra_change_rev_prop2(i32* %113, i32 0, i32 %114, i32* null, %struct.TYPE_13__* null, i32* %115)
  %117 = call i32 @SVN_ERR(i32 %116)
  br label %118

118:                                              ; preds = %106, %75
  br label %119

119:                                              ; preds = %118
  br label %131

120:                                              ; preds = %3
  %121 = load i64, i64* %12, align 8
  %122 = load i64, i64* %14, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %120
  %125 = load i32, i32* @APR_EINVAL, align 4
  %126 = call i32 @_(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.2, i64 0, i64 0))
  %127 = load i64, i64* %12, align 8
  %128 = load i64, i64* %14, align 8
  %129 = call i32* (i32, i32*, i32, i64, i64, ...) @svn_error_createf(i32 %125, i32* null, i32 %126, i64 %127, i64 %128)
  store i32* %129, i32** %4, align 8
  br label %193

130:                                              ; preds = %120
  br label %131

131:                                              ; preds = %130, %119
  %132 = load i32*, i32** %10, align 8
  %133 = load i32*, i32** %7, align 8
  %134 = call i32 @svn_ra_get_latest_revnum(i32* %132, i64* %9, i32* %133)
  %135 = call i32 @SVN_ERR(i32 %134)
  %136 = load i64, i64* %9, align 8
  %137 = load i64, i64* %14, align 8
  %138 = icmp sle i64 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %131
  %140 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %140, i32** %4, align 8
  br label %193

141:                                              ; preds = %131
  %142 = load i32*, i32** %10, align 8
  %143 = load i32*, i32** %5, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %145 = load i32*, i32** %7, align 8
  %146 = call i32 @make_replay_baton(%struct.TYPE_15__** %17, i32* %142, i32* %143, %struct.TYPE_14__* %144, i32* %145)
  %147 = call i32 @SVN_ERR(i32 %146)
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 4
  %153 = load i32, i32* @SVN_RA_CAPABILITY_COMMIT_REVPROPS, align 4
  %154 = load i32*, i32** %7, align 8
  %155 = call i32 @svn_ra_has_capability(i32 %150, i32* %152, i32 %153, i32* %154)
  %156 = call i32 @SVN_ERR(i32 %155)
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 2
  %162 = load i32, i32* @SVN_RA_CAPABILITY_ATOMIC_REVPROPS, align 4
  %163 = load i32*, i32** %7, align 8
  %164 = call i32 @svn_ra_has_capability(i32 %159, i32* %161, i32 %162, i32* %163)
  %165 = call i32 @SVN_ERR(i32 %164)
  %166 = load i64, i64* %14, align 8
  %167 = add nsw i64 %166, 1
  store i64 %167, i64* %15, align 8
  %168 = load i64, i64* %9, align 8
  store i64 %168, i64* %16, align 8
  %169 = call i32 @check_cancel(i32* null)
  %170 = call i32 @SVN_ERR(i32 %169)
  %171 = load i32*, i32** %10, align 8
  %172 = load i64, i64* %15, align 8
  %173 = load i64, i64* %16, align 8
  %174 = load i32, i32* @TRUE, align 4
  %175 = load i32, i32* @replay_rev_started, align 4
  %176 = load i32, i32* @replay_rev_finished, align 4
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %178 = load i32*, i32** %7, align 8
  %179 = call i32 @svn_ra_replay_range(i32* %171, i64 %172, i64 %173, i32 0, i32 %174, i32 %175, i32 %176, %struct.TYPE_15__* %177, i32* %178)
  %180 = call i32 @SVN_ERR(i32 %179)
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %18, align 4
  %185 = add nsw i32 %183, %184
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32*, i32** %7, align 8
  %190 = call i32 @log_properties_normalized(i32 %185, i32 %188, i32* %189)
  %191 = call i32 @SVN_ERR(i32 %190)
  %192 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %192, i32** %4, align 8
  br label %193

193:                                              ; preds = %141, %139, %124, %68
  %194 = load i32*, i32** %4, align 8
  ret i32* %194
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @open_source_session(i32**, %struct.TYPE_13__**, i32, i32*, i32*, i32, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @svn_ra_rev_prop(i32*, i32, i32, %struct.TYPE_13__**, i32*) #1

declare dso_local i32 @svn_ra_get_latest_revnum(i32*, i64*, i32*) #1

declare dso_local i64 @SVN_STR_TO_REV(i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i64, i64, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @copy_revprops(i32*, i32*, i64, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @svn_string_create(i32, i32*) #1

declare dso_local i32 @apr_psprintf(i32*, i8*, i64) #1

declare dso_local i32 @svn_ra_change_rev_prop2(i32*, i32, i32, i32*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @make_replay_baton(%struct.TYPE_15__**, i32*, i32*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @svn_ra_has_capability(i32, i32*, i32, i32*) #1

declare dso_local i32 @check_cancel(i32*) #1

declare dso_local i32 @svn_ra_replay_range(i32*, i64, i64, i32, i32, i32, i32, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @log_properties_normalized(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
