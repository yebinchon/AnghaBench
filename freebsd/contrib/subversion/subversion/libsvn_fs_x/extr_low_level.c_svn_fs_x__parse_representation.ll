; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_low_level.c_svn_fs_x__parse_representation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_low_level.c_svn_fs_x__parse_representation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i8*, i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Malformed text representation offset line in node-rev\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_FS_X__INVALID_CHANGE_SET = common dso_local global i32 0, align 4
@APR_MD5_DIGESTSIZE = common dso_local global i32 0, align 4
@svn_checksum_md5 = common dso_local global i32 0, align 4
@APR_SHA1_DIGESTSIZE = common dso_local global i32 0, align 4
@svn_checksum_sha1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__parse_representation(%struct.TYPE_11__** %0, %struct.TYPE_10__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__**, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %13, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call %struct.TYPE_11__* @apr_pcalloc(i32* %18, i32 48)
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %10, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %21 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %21, align 8
  %22 = call i8* @svn_cstring_tokenize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13)
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %27 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32* @svn_error_create(i32 %26, i32* null, i32 %27)
  store i32* %28, i32** %5, align 8
  br label %169

29:                                               ; preds = %4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i8*, i8** %11, align 8
  %34 = call i32 @svn_cstring_atoi64(i32* %32, i8* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %42, i32** %5, align 8
  br label %169

43:                                               ; preds = %29
  %44 = call i8* @svn_cstring_tokenize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13)
  store i8* %44, i8** %11, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @SVN_FS_X__INVALID_CHANGE_SET, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %55, i32** %5, align 8
  br label %169

56:                                               ; preds = %47
  %57 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %58 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %59 = call i32* @svn_error_create(i32 %57, i32* null, i32 %58)
  store i32* %59, i32** %5, align 8
  br label %169

60:                                               ; preds = %43
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @svn_cstring_atoi64(i32* %12, i8* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  store i64 %65, i64* %68, align 8
  %69 = call i8* @svn_cstring_tokenize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13)
  store i8* %69, i8** %11, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %60
  %73 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %74 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %75 = call i32* @svn_error_create(i32 %73, i32* null, i32 %74)
  store i32* %75, i32** %5, align 8
  br label %169

76:                                               ; preds = %60
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 @svn_cstring_atoi64(i32* %12, i8* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i8*
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 4
  store i8* %82, i8** %84, align 8
  %85 = call i8* @svn_cstring_tokenize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13)
  store i8* %85, i8** %11, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %76
  %89 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %90 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %91 = call i32* @svn_error_create(i32 %89, i32* null, i32 %90)
  store i32* %91, i32** %5, align 8
  br label %169

92:                                               ; preds = %76
  %93 = load i8*, i8** %11, align 8
  %94 = call i32 @svn_cstring_atoi64(i32* %12, i8* %93)
  %95 = call i32 @SVN_ERR(i32 %94)
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 3
  store i8* %98, i8** %100, align 8
  %101 = call i8* @svn_cstring_tokenize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13)
  store i8* %101, i8** %11, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = icmp eq i8* %102, null
  br i1 %103, label %110, label %104

104:                                              ; preds = %92
  %105 = load i8*, i8** %11, align 8
  %106 = call i32 @strlen(i8* %105)
  %107 = load i32, i32* @APR_MD5_DIGESTSIZE, align 4
  %108 = mul nsw i32 %107, 2
  %109 = icmp ne i32 %106, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %104, %92
  %111 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %112 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %113 = call i32* @svn_error_create(i32 %111, i32* null, i32 %112)
  store i32* %113, i32** %5, align 8
  br label %169

114:                                              ; preds = %104
  %115 = load i32, i32* @svn_checksum_md5, align 4
  %116 = load i8*, i8** %11, align 8
  %117 = load i32*, i32** %9, align 8
  %118 = call i32 @svn_checksum_parse_hex(%struct.TYPE_12__** %14, i32 %115, i8* %116, i32* %117)
  %119 = call i32 @SVN_ERR(i32 %118)
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %121 = icmp ne %struct.TYPE_12__* %120, null
  br i1 %121, label %122, label %130

122:                                              ; preds = %114
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @memcpy(i32 %125, i32 %128, i32 4)
  br label %130

130:                                              ; preds = %122, %114
  %131 = call i8* @svn_cstring_tokenize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13)
  store i8* %131, i8** %11, align 8
  %132 = load i8*, i8** %11, align 8
  %133 = icmp eq i8* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %135, i32** %5, align 8
  br label %169

136:                                              ; preds = %130
  %137 = load i8*, i8** %11, align 8
  %138 = call i32 @strlen(i8* %137)
  %139 = load i32, i32* @APR_SHA1_DIGESTSIZE, align 4
  %140 = mul nsw i32 %139, 2
  %141 = icmp ne i32 %138, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %144 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %145 = call i32* @svn_error_create(i32 %143, i32* null, i32 %144)
  store i32* %145, i32** %5, align 8
  br label %169

146:                                              ; preds = %136
  %147 = load i32, i32* @svn_checksum_sha1, align 4
  %148 = load i8*, i8** %11, align 8
  %149 = load i32*, i32** %9, align 8
  %150 = call i32 @svn_checksum_parse_hex(%struct.TYPE_12__** %14, i32 %147, i8* %148, i32* %149)
  %151 = call i32 @SVN_ERR(i32 %150)
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %153 = icmp ne %struct.TYPE_12__* %152, null
  %154 = zext i1 %153 to i32
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %158 = icmp ne %struct.TYPE_12__* %157, null
  br i1 %158, label %159, label %167

159:                                              ; preds = %146
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @memcpy(i32 %162, i32 %165, i32 4)
  br label %167

167:                                              ; preds = %159, %146
  %168 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %168, i32** %5, align 8
  br label %169

169:                                              ; preds = %167, %142, %134, %110, %88, %72, %56, %54, %41, %25
  %170 = load i32*, i32** %5, align 8
  ret i32* %170
}

declare dso_local %struct.TYPE_11__* @apr_pcalloc(i32*, i32) #1

declare dso_local i8* @svn_cstring_tokenize(i8*, i8**) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cstring_atoi64(i32*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @svn_checksum_parse_hex(%struct.TYPE_12__**, i32, i8*, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
