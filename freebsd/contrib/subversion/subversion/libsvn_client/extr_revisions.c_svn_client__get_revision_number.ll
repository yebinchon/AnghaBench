; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_revisions.c_svn_client__get_revision_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_revisions.c_svn_client__get_revision_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i32 }

@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@SVN_ERR_CLIENT_RA_ACCESS_REQUIRED = common dso_local global i32 0, align 4
@SVN_ERR_CLIENT_VERSIONED_PATH_REQUIRED = common dso_local global i32 0, align 4
@SVN_ERR_CLIENT_BAD_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"PREV, BASE, or COMMITTED revision keywords are invalid for URL\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@SVN_ERR_ENTRY_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"'%s' is not under version control\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Path '%s' has no committed revision\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Unrecognized revision type requested for '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_17__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @svn_client__get_revision_number(i64* %0, i64* %1, i32* %2, i8* %3, i32* %4, %struct.TYPE_16__* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  store i64* %0, i64** %9, align 8
  store i64* %1, i64** %10, align 8
  store i32* %2, i32** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store %struct.TYPE_16__* %5, %struct.TYPE_16__** %14, align 8
  store i32* %6, i32** %15, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %175 [
    i32 129, label %20
    i32 131, label %23
    i32 132, label %29
    i32 128, label %61
    i32 135, label %61
    i32 134, label %116
    i32 130, label %116
    i32 133, label %159
  ]

20:                                               ; preds = %7
  %21 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %22 = load i64*, i64** %9, align 8
  store i64 %21, i64* %22, align 8
  br label %182

23:                                               ; preds = %7
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** %9, align 8
  store i64 %27, i64* %28, align 8
  br label %182

29:                                               ; preds = %7
  %30 = load i64*, i64** %10, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load i64*, i64** %10, align 8
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @SVN_IS_VALID_REVNUM(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i64*, i64** %10, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %9, align 8
  store i64 %39, i64* %40, align 8
  br label %60

41:                                               ; preds = %32, %29
  %42 = load i32*, i32** %13, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @SVN_ERR_CLIENT_RA_ACCESS_REQUIRED, align 4
  %46 = call %struct.TYPE_17__* @svn_error_create(i32 %45, i32* null, i32* null)
  store %struct.TYPE_17__* %46, %struct.TYPE_17__** %8, align 8
  br label %217

47:                                               ; preds = %41
  %48 = load i32*, i32** %13, align 8
  %49 = load i64*, i64** %9, align 8
  %50 = load i32*, i32** %15, align 8
  %51 = call %struct.TYPE_17__* @svn_ra_get_latest_revnum(i32* %48, i64* %49, i32* %50)
  %52 = call i32 @SVN_ERR(%struct.TYPE_17__* %51)
  %53 = load i64*, i64** %10, align 8
  %54 = icmp ne i64* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load i64*, i64** %9, align 8
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %10, align 8
  store i64 %57, i64* %58, align 8
  br label %59

59:                                               ; preds = %55, %47
  br label %60

60:                                               ; preds = %59, %37
  br label %182

61:                                               ; preds = %7, %7
  %62 = load i8*, i8** %12, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* @SVN_ERR_CLIENT_VERSIONED_PATH_REQUIRED, align 4
  %66 = call %struct.TYPE_17__* @svn_error_create(i32 %65, i32* null, i32* null)
  store %struct.TYPE_17__* %66, %struct.TYPE_17__** %8, align 8
  br label %217

67:                                               ; preds = %61
  %68 = load i8*, i8** %12, align 8
  %69 = call i32 @svn_path_is_url(i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* @SVN_ERR_CLIENT_BAD_REVISION, align 4
  %73 = call i32* @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %74 = call %struct.TYPE_17__* @svn_error_create(i32 %72, i32* null, i32* %73)
  store %struct.TYPE_17__* %74, %struct.TYPE_17__** %8, align 8
  br label %217

75:                                               ; preds = %67
  %76 = load i64*, i64** %9, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = load i32, i32* @TRUE, align 4
  %80 = load i32*, i32** %15, align 8
  %81 = load i32*, i32** %15, align 8
  %82 = call %struct.TYPE_17__* @svn_wc__node_get_origin(i32* null, i64* %76, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %77, i8* %78, i32 %79, i32* %80, i32* %81)
  store %struct.TYPE_17__* %82, %struct.TYPE_17__** %16, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %84 = icmp ne %struct.TYPE_17__* %83, null
  br i1 %84, label %85, label %100

85:                                               ; preds = %75
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %85
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %93 = call i32 @svn_error_clear(%struct.TYPE_17__* %92)
  %94 = load i32, i32* @SVN_ERR_ENTRY_NOT_FOUND, align 4
  %95 = call i32* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %96 = load i8*, i8** %12, align 8
  %97 = load i32*, i32** %15, align 8
  %98 = call i32 @svn_dirent_local_style(i8* %96, i32* %97)
  %99 = call %struct.TYPE_17__* @svn_error_createf(i32 %94, i32* null, i32* %95, i32 %98)
  store %struct.TYPE_17__* %99, %struct.TYPE_17__** %8, align 8
  br label %217

100:                                              ; preds = %85, %75
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %102 = call i32 @SVN_ERR(%struct.TYPE_17__* %101)
  br label %103

103:                                              ; preds = %100
  %104 = load i64*, i64** %9, align 8
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @SVN_IS_VALID_REVNUM(i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* @SVN_ERR_CLIENT_BAD_REVISION, align 4
  %110 = call i32* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %111 = load i8*, i8** %12, align 8
  %112 = load i32*, i32** %15, align 8
  %113 = call i32 @svn_dirent_local_style(i8* %111, i32* %112)
  %114 = call %struct.TYPE_17__* @svn_error_createf(i32 %109, i32* null, i32* %110, i32 %113)
  store %struct.TYPE_17__* %114, %struct.TYPE_17__** %8, align 8
  br label %217

115:                                              ; preds = %103
  br label %182

116:                                              ; preds = %7, %7
  %117 = load i8*, i8** %12, align 8
  %118 = icmp eq i8* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32, i32* @SVN_ERR_CLIENT_VERSIONED_PATH_REQUIRED, align 4
  %121 = call %struct.TYPE_17__* @svn_error_create(i32 %120, i32* null, i32* null)
  store %struct.TYPE_17__* %121, %struct.TYPE_17__** %8, align 8
  br label %217

122:                                              ; preds = %116
  %123 = load i8*, i8** %12, align 8
  %124 = call i32 @svn_path_is_url(i8* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i32, i32* @SVN_ERR_CLIENT_BAD_REVISION, align 4
  %128 = call i32* @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %129 = call %struct.TYPE_17__* @svn_error_create(i32 %127, i32* null, i32* %128)
  store %struct.TYPE_17__* %129, %struct.TYPE_17__** %8, align 8
  br label %217

130:                                              ; preds = %122
  %131 = load i64*, i64** %9, align 8
  %132 = load i32*, i32** %11, align 8
  %133 = load i8*, i8** %12, align 8
  %134 = load i32*, i32** %15, align 8
  %135 = load i32*, i32** %15, align 8
  %136 = call %struct.TYPE_17__* @svn_wc__node_get_changed_info(i64* %131, i32* null, i32* null, i32* %132, i8* %133, i32* %134, i32* %135)
  %137 = call i32 @SVN_ERR(%struct.TYPE_17__* %136)
  %138 = load i64*, i64** %9, align 8
  %139 = load i64, i64* %138, align 8
  %140 = call i64 @SVN_IS_VALID_REVNUM(i64 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %149, label %142

142:                                              ; preds = %130
  %143 = load i32, i32* @SVN_ERR_CLIENT_BAD_REVISION, align 4
  %144 = call i32* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %145 = load i8*, i8** %12, align 8
  %146 = load i32*, i32** %15, align 8
  %147 = call i32 @svn_dirent_local_style(i8* %145, i32* %146)
  %148 = call %struct.TYPE_17__* @svn_error_createf(i32 %143, i32* null, i32* %144, i32 %147)
  store %struct.TYPE_17__* %148, %struct.TYPE_17__** %8, align 8
  br label %217

149:                                              ; preds = %130
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp eq i32 %152, 130
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  %155 = load i64*, i64** %9, align 8
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %156, -1
  store i64 %157, i64* %155, align 8
  br label %158

158:                                              ; preds = %154, %149
  br label %182

159:                                              ; preds = %7
  %160 = load i32*, i32** %13, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %165, label %162

162:                                              ; preds = %159
  %163 = load i32, i32* @SVN_ERR_CLIENT_RA_ACCESS_REQUIRED, align 4
  %164 = call %struct.TYPE_17__* @svn_error_create(i32 %163, i32* null, i32* null)
  store %struct.TYPE_17__* %164, %struct.TYPE_17__** %8, align 8
  br label %217

165:                                              ; preds = %159
  %166 = load i32*, i32** %13, align 8
  %167 = load i64*, i64** %9, align 8
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load i32*, i32** %15, align 8
  %173 = call %struct.TYPE_17__* @svn_ra_get_dated_revision(i32* %166, i64* %167, i32 %171, i32* %172)
  %174 = call i32 @SVN_ERR(%struct.TYPE_17__* %173)
  br label %182

175:                                              ; preds = %7
  %176 = load i32, i32* @SVN_ERR_CLIENT_BAD_REVISION, align 4
  %177 = call i32* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %178 = load i8*, i8** %12, align 8
  %179 = load i32*, i32** %15, align 8
  %180 = call i32 @svn_dirent_local_style(i8* %178, i32* %179)
  %181 = call %struct.TYPE_17__* @svn_error_createf(i32 %176, i32* null, i32* %177, i32 %180)
  store %struct.TYPE_17__* %181, %struct.TYPE_17__** %8, align 8
  br label %217

182:                                              ; preds = %165, %158, %115, %60, %23, %20
  %183 = load i64*, i64** %10, align 8
  %184 = icmp ne i64* %183, null
  br i1 %184, label %185, label %215

185:                                              ; preds = %182
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp eq i32 %188, 132
  br i1 %189, label %195, label %190

190:                                              ; preds = %185
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 133
  br i1 %194, label %195, label %215

195:                                              ; preds = %190, %185
  %196 = load i64*, i64** %10, align 8
  %197 = load i64, i64* %196, align 8
  %198 = call i64 @SVN_IS_VALID_REVNUM(i64 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %215

200:                                              ; preds = %195
  %201 = load i64*, i64** %9, align 8
  %202 = load i64, i64* %201, align 8
  %203 = call i64 @SVN_IS_VALID_REVNUM(i64 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %215

205:                                              ; preds = %200
  %206 = load i64*, i64** %9, align 8
  %207 = load i64, i64* %206, align 8
  %208 = load i64*, i64** %10, align 8
  %209 = load i64, i64* %208, align 8
  %210 = icmp sgt i64 %207, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %205
  %212 = load i64*, i64** %10, align 8
  %213 = load i64, i64* %212, align 8
  %214 = load i64*, i64** %9, align 8
  store i64 %213, i64* %214, align 8
  br label %215

215:                                              ; preds = %211, %205, %200, %195, %190, %182
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_17__* %216, %struct.TYPE_17__** %8, align 8
  br label %217

217:                                              ; preds = %215, %175, %162, %142, %126, %119, %108, %91, %71, %64, %44
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  ret %struct.TYPE_17__* %218
}

declare dso_local i64 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local %struct.TYPE_17__* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @svn_ra_get_latest_revnum(i32*, i64*, i32*) #1

declare dso_local i32 @svn_path_is_url(i8*) #1

declare dso_local i32* @_(i8*) #1

declare dso_local %struct.TYPE_17__* @svn_wc__node_get_origin(i32*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @svn_error_createf(i32, i32*, i32*, i32) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local %struct.TYPE_17__* @svn_wc__node_get_changed_info(i64*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_17__* @svn_ra_get_dated_revision(i32*, i64*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
