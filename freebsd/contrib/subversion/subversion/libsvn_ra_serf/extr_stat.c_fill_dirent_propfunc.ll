; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_stat.c_fill_dirent_propfunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_stat.c_fill_dirent_propfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64 }
%struct.fill_dirent_baton_t = type { i32*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [5 x i8] c"DAV:\00", align 1
@SVN_DAV__VERSION_NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"creator-displayname\00", align 1
@SVN_DAV__CREATIONDATE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"getcontentlength\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"resourcetype\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"collection\00", align 1
@svn_node_dir = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i32 0, align 4
@SVN_DAV_PROP_NS_CUSTOM = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@SVN_DAV_PROP_NS_SVN = common dso_local global i8* null, align 8
@SVN_DAV_PROP_NS_DAV = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"deadprop-count\00", align 1
@svn_tristate_true = common dso_local global i32 0, align 4
@svn_tristate_false = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i8*, %struct.TYPE_5__*, i32*)* @fill_dirent_propfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fill_dirent_propfunc(i8* %0, i8* %1, i8* %2, i8* %3, %struct.TYPE_5__* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.fill_dirent_baton_t*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.fill_dirent_baton_t*
  store %struct.fill_dirent_baton_t* %17, %struct.fill_dirent_baton_t** %13, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %119

21:                                               ; preds = %6
  %22 = load i8*, i8** %10, align 8
  %23 = load i8*, i8** @SVN_DAV__VERSION_NAME, align 8
  %24 = call i64 @strcmp(i8* %22, i8* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @svn_cstring_atoi64(i64* %14, i8* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i64, i64* %14, align 8
  %33 = load %struct.fill_dirent_baton_t*, %struct.fill_dirent_baton_t** %13, align 8
  %34 = getelementptr inbounds %struct.fill_dirent_baton_t, %struct.fill_dirent_baton_t* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 5
  store i64 %32, i64* %36, align 8
  br label %118

37:                                               ; preds = %21
  %38 = load i8*, i8** %10, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load %struct.fill_dirent_baton_t*, %struct.fill_dirent_baton_t** %13, align 8
  %43 = getelementptr inbounds %struct.fill_dirent_baton_t, %struct.fill_dirent_baton_t* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @apr_pstrdup(i32 %44, i8* %47)
  %49 = load %struct.fill_dirent_baton_t*, %struct.fill_dirent_baton_t** %13, align 8
  %50 = getelementptr inbounds %struct.fill_dirent_baton_t, %struct.fill_dirent_baton_t* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 4
  store i32 %48, i32* %52, align 4
  br label %117

53:                                               ; preds = %37
  %54 = load i8*, i8** %10, align 8
  %55 = load i8*, i8** @SVN_DAV__CREATIONDATE, align 8
  %56 = call i64 @strcmp(i8* %54, i8* %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load %struct.fill_dirent_baton_t*, %struct.fill_dirent_baton_t** %13, align 8
  %60 = getelementptr inbounds %struct.fill_dirent_baton_t, %struct.fill_dirent_baton_t* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.fill_dirent_baton_t*, %struct.fill_dirent_baton_t** %13, align 8
  %67 = getelementptr inbounds %struct.fill_dirent_baton_t, %struct.fill_dirent_baton_t* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @svn_time_from_cstring(i32* %62, i8* %65, i32 %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  br label %116

71:                                               ; preds = %53
  %72 = load i8*, i8** %10, align 8
  %73 = call i64 @strcmp(i8* %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %71
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load %struct.fill_dirent_baton_t*, %struct.fill_dirent_baton_t** %13, align 8
  %82 = getelementptr inbounds %struct.fill_dirent_baton_t, %struct.fill_dirent_baton_t* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @svn_cstring_atoi64(i64* %84, i8* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  br label %90

90:                                               ; preds = %80, %75
  br label %115

91:                                               ; preds = %71
  %92 = load i8*, i8** %10, align 8
  %93 = call i64 @strcmp(i8* %92, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %91
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i64 @strcmp(i8* %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load i32, i32* @svn_node_dir, align 4
  %103 = load %struct.fill_dirent_baton_t*, %struct.fill_dirent_baton_t** %13, align 8
  %104 = getelementptr inbounds %struct.fill_dirent_baton_t, %struct.fill_dirent_baton_t* %103, i32 0, i32 1
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  store i32 %102, i32* %106, align 4
  br label %113

107:                                              ; preds = %95
  %108 = load i32, i32* @svn_node_file, align 4
  %109 = load %struct.fill_dirent_baton_t*, %struct.fill_dirent_baton_t** %13, align 8
  %110 = getelementptr inbounds %struct.fill_dirent_baton_t, %struct.fill_dirent_baton_t* %109, i32 0, i32 1
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  store i32 %108, i32* %112, align 4
  br label %113

113:                                              ; preds = %107, %101
  br label %114

114:                                              ; preds = %113, %91
  br label %115

115:                                              ; preds = %114, %90
  br label %116

116:                                              ; preds = %115, %58
  br label %117

117:                                              ; preds = %116, %41
  br label %118

118:                                              ; preds = %117, %26
  br label %197

119:                                              ; preds = %6
  %120 = load i8*, i8** %9, align 8
  %121 = load i8*, i8** @SVN_DAV_PROP_NS_CUSTOM, align 8
  %122 = call i64 @strcmp(i8* %120, i8* %121)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %119
  %125 = load i8*, i8** @TRUE, align 8
  %126 = ptrtoint i8* %125 to i32
  %127 = load %struct.fill_dirent_baton_t*, %struct.fill_dirent_baton_t** %13, align 8
  %128 = getelementptr inbounds %struct.fill_dirent_baton_t, %struct.fill_dirent_baton_t* %127, i32 0, i32 1
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  store i32 %126, i32* %130, align 8
  br label %196

131:                                              ; preds = %119
  %132 = load i8*, i8** %9, align 8
  %133 = load i8*, i8** @SVN_DAV_PROP_NS_SVN, align 8
  %134 = call i64 @strcmp(i8* %132, i8* %133)
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %131
  %137 = load i8*, i8** @TRUE, align 8
  %138 = ptrtoint i8* %137 to i32
  %139 = load %struct.fill_dirent_baton_t*, %struct.fill_dirent_baton_t** %13, align 8
  %140 = getelementptr inbounds %struct.fill_dirent_baton_t, %struct.fill_dirent_baton_t* %139, i32 0, i32 1
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  store i32 %138, i32* %142, align 8
  br label %195

143:                                              ; preds = %131
  %144 = load i8*, i8** %9, align 8
  %145 = load i8*, i8** @SVN_DAV_PROP_NS_DAV, align 8
  %146 = call i64 @strcmp(i8* %144, i8* %145)
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %194

148:                                              ; preds = %143
  %149 = load i8*, i8** %10, align 8
  %150 = call i64 @strcmp(i8* %149, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %193

152:                                              ; preds = %148
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = load i8, i8* %155, align 1
  %157 = icmp ne i8 %156, 0
  br i1 %157, label %158, label %181

158:                                              ; preds = %152
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @svn_cstring_atoi64(i64* %15, i8* %161)
  %163 = call i32 @SVN_ERR(i32 %162)
  %164 = load i64, i64* %15, align 8
  %165 = icmp sgt i64 %164, 0
  %166 = zext i1 %165 to i32
  %167 = load %struct.fill_dirent_baton_t*, %struct.fill_dirent_baton_t** %13, align 8
  %168 = getelementptr inbounds %struct.fill_dirent_baton_t, %struct.fill_dirent_baton_t* %167, i32 0, i32 1
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 1
  store i32 %166, i32* %170, align 8
  %171 = load %struct.fill_dirent_baton_t*, %struct.fill_dirent_baton_t** %13, align 8
  %172 = getelementptr inbounds %struct.fill_dirent_baton_t, %struct.fill_dirent_baton_t* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %180

175:                                              ; preds = %158
  %176 = load i32, i32* @svn_tristate_true, align 4
  %177 = load %struct.fill_dirent_baton_t*, %struct.fill_dirent_baton_t** %13, align 8
  %178 = getelementptr inbounds %struct.fill_dirent_baton_t, %struct.fill_dirent_baton_t* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  store i32 %176, i32* %179, align 4
  br label %180

180:                                              ; preds = %175, %158
  br label %192

181:                                              ; preds = %152
  %182 = load %struct.fill_dirent_baton_t*, %struct.fill_dirent_baton_t** %13, align 8
  %183 = getelementptr inbounds %struct.fill_dirent_baton_t, %struct.fill_dirent_baton_t* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %186, label %191

186:                                              ; preds = %181
  %187 = load i32, i32* @svn_tristate_false, align 4
  %188 = load %struct.fill_dirent_baton_t*, %struct.fill_dirent_baton_t** %13, align 8
  %189 = getelementptr inbounds %struct.fill_dirent_baton_t, %struct.fill_dirent_baton_t* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  store i32 %187, i32* %190, align 4
  br label %191

191:                                              ; preds = %186, %181
  br label %192

192:                                              ; preds = %191, %180
  br label %193

193:                                              ; preds = %192, %148
  br label %194

194:                                              ; preds = %193, %143
  br label %195

195:                                              ; preds = %194, %136
  br label %196

196:                                              ; preds = %195, %124
  br label %197

197:                                              ; preds = %196, %118
  %198 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %198
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cstring_atoi64(i64*, i8*) #1

declare dso_local i32 @apr_pstrdup(i32, i8*) #1

declare dso_local i32 @svn_time_from_cstring(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
