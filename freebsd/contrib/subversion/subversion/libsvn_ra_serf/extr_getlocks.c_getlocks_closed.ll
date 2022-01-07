; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_getlocks.c_getlocks_closed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_getlocks.c_getlocks_closed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32 }
%struct.TYPE_9__ = type { i8*, i8*, i32, i32, i8*, i8*, i32 }

@LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"token\00", align 1
@FALSE = common dso_local global i64 0, align 8
@svn_depth_infinity = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@svn_depth_files = common dso_local global i64 0, align 8
@svn_depth_immediates = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"owner\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@SVN_DAV__CREATIONDATE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"expirationdate\00", align 1
@PATH = common dso_local global i32 0, align 4
@TOKEN = common dso_local global i32 0, align 4
@OWNER = common dso_local global i32 0, align 4
@COMMENT = common dso_local global i32 0, align 4
@CREATION_DATE = common dso_local global i32 0, align 4
@EXPIRATION_DATE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32, %struct.TYPE_8__*, i32*, i32*)* @getlocks_closed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @getlocks_closed(i32* %0, i8* %1, i32 %2, %struct.TYPE_8__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_9__, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_9__*, align 8
  %21 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %13, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @LOCK, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %131

27:                                               ; preds = %6
  %28 = load i32*, i32** %11, align 8
  %29 = call i8* @svn_hash_gets(i32* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %29, i8** %14, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i8* @svn_hash_gets(i32* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %31, i8** %15, align 8
  %32 = load i64, i64* @FALSE, align 8
  store i64 %32, i64* %16, align 8
  %33 = load i8*, i8** %15, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %27
  %36 = load i64, i64* @FALSE, align 8
  store i64 %36, i64* %16, align 8
  br label %37

37:                                               ; preds = %35, %27
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = call i64 @strcmp(i32 %40, i8* %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %37
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @svn_depth_infinity, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44, %37
  %51 = load i64, i64* @TRUE, align 8
  store i64 %51, i64* %16, align 8
  br label %80

52:                                               ; preds = %44
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @svn_depth_files, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @svn_depth_immediates, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %58, %52
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i8*, i8** %14, align 8
  %69 = call i8* @svn_fspath__skip_ancestor(i32 %67, i8* %68)
  store i8* %69, i8** %17, align 8
  %70 = load i8*, i8** %17, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load i8*, i8** %17, align 8
  %74 = call i32 @svn_path_component_count(i8* %73)
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i64, i64* @TRUE, align 8
  store i64 %77, i64* %16, align 8
  br label %78

78:                                               ; preds = %76, %72, %64
  br label %79

79:                                               ; preds = %78, %58
  br label %80

80:                                               ; preds = %79, %50
  %81 = load i64, i64* %16, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %130

83:                                               ; preds = %80
  %84 = bitcast %struct.TYPE_9__* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %84, i8 0, i64 48, i1 false)
  %85 = load i8*, i8** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i8* %85, i8** %86, align 8
  %87 = load i8*, i8** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  store i8* %87, i8** %88, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = call i8* @svn_hash_gets(i32* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 5
  store i8* %90, i8** %91, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = call i8* @svn_hash_gets(i32* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 4
  store i8* %93, i8** %94, align 8
  %95 = load i32*, i32** %11, align 8
  %96 = load i8*, i8** @SVN_DAV__CREATIONDATE, align 8
  %97 = call i8* @svn_hash_gets(i32* %95, i8* %96)
  store i8* %97, i8** %19, align 8
  %98 = load i8*, i8** %19, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %83
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 3
  %102 = load i8*, i8** %19, align 8
  %103 = load i32*, i32** %12, align 8
  %104 = call i32 @svn_time_from_cstring(i32* %101, i8* %102, i32* %103)
  %105 = call i32 @SVN_ERR(i32 %104)
  br label %106

106:                                              ; preds = %100, %83
  %107 = load i32*, i32** %11, align 8
  %108 = call i8* @svn_hash_gets(i32* %107, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i8* %108, i8** %19, align 8
  %109 = load i8*, i8** %19, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %113 = load i8*, i8** %19, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = call i32 @svn_time_from_cstring(i32* %112, i8* %113, i32* %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  br label %117

117:                                              ; preds = %111, %106
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call %struct.TYPE_9__* @svn_lock_dup(%struct.TYPE_9__* %18, i32 %120)
  store %struct.TYPE_9__* %121, %struct.TYPE_9__** %20, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %129 = call i32 @svn_hash_sets(i32 %124, i8* %127, %struct.TYPE_9__* %128)
  br label %130

130:                                              ; preds = %117, %80
  br label %181

131:                                              ; preds = %6
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %133 = icmp ne %struct.TYPE_8__* %132, null
  %134 = zext i1 %133 to i32
  %135 = call i32 @SVN_ERR_ASSERT(i32 %134)
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @PATH, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  br label %173

140:                                              ; preds = %131
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* @TOKEN, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  br label %172

145:                                              ; preds = %140
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* @OWNER, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %21, align 8
  br label %171

150:                                              ; preds = %145
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @COMMENT, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %21, align 8
  br label %170

155:                                              ; preds = %150
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* @CREATION_DATE, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  %160 = load i8*, i8** @SVN_DAV__CREATIONDATE, align 8
  store i8* %160, i8** %21, align 8
  br label %169

161:                                              ; preds = %155
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* @EXPIRATION_DATE, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %21, align 8
  br label %168

166:                                              ; preds = %161
  %167 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %168

168:                                              ; preds = %166, %165
  br label %169

169:                                              ; preds = %168, %159
  br label %170

170:                                              ; preds = %169, %154
  br label %171

171:                                              ; preds = %170, %149
  br label %172

172:                                              ; preds = %171, %144
  br label %173

173:                                              ; preds = %172, %139
  %174 = load i32*, i32** %7, align 8
  %175 = load i32, i32* @LOCK, align 4
  %176 = load i8*, i8** %21, align 8
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @svn_ra_serf__xml_note(i32* %174, i32 %175, i8* %176, i32 %179)
  br label %181

181:                                              ; preds = %173, %130
  %182 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %182
}

declare dso_local i8* @svn_hash_gets(i32*, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i8* @svn_fspath__skip_ancestor(i32, i8*) #1

declare dso_local i32 @svn_path_component_count(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_time_from_cstring(i32*, i8*, i32*) #1

declare dso_local %struct.TYPE_9__* @svn_lock_dup(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @svn_hash_sets(i32, i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR_MALFUNCTION(...) #1

declare dso_local i32 @svn_ra_serf__xml_note(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
