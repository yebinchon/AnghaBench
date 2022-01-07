; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_low_level.c_svn_fs_fs__parse_representation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_low_level.c_svn_fs_fs__parse_representation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_9__, i32, i32, i32, i8*, i8*, i64, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Malformed text representation offset line in node-rev\00", align 1
@APR_MD5_DIGESTSIZE = common dso_local global i32 0, align 4
@svn_checksum_md5 = common dso_local global i32 0, align 4
@APR_SHA1_DIGESTSIZE = common dso_local global i32 0, align 4
@svn_checksum_sha1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__parse_representation(%struct.TYPE_12__** %0, %struct.TYPE_10__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__**, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_12__** %0, %struct.TYPE_12__*** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %13, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call %struct.TYPE_12__* @apr_pcalloc(i32* %20, i32 64)
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %10, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %23 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %23, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = call i32 @parse_revnum(i64* %25, i8** %13)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 8
  %30 = call i32 @svn_fs_fs__id_txn_reset(i32* %29)
  %31 = call i8* @svn_cstring_tokenize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13)
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %41, i32** %5, align 8
  br label %231

42:                                               ; preds = %34
  %43 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %44 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %45 = call i32* @svn_error_create(i32 %43, i32* null, i32 %44)
  store i32* %45, i32** %5, align 8
  br label %231

46:                                               ; preds = %4
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @svn_cstring_atoi64(i64* %12, i8* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = load i64, i64* %12, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 7
  store i64 %50, i64* %52, align 8
  %53 = call i8* @svn_cstring_tokenize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13)
  store i8* %53, i8** %11, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %46
  %57 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %58 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %59 = call i32* @svn_error_create(i32 %57, i32* null, i32 %58)
  store i32* %59, i32** %5, align 8
  br label %231

60:                                               ; preds = %46
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @svn_cstring_atoi64(i64* %12, i8* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load i64, i64* %12, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 6
  store i8* %65, i8** %67, align 8
  %68 = call i8* @svn_cstring_tokenize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13)
  store i8* %68, i8** %11, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %60
  %72 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %73 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %74 = call i32* @svn_error_create(i32 %72, i32* null, i32 %73)
  store i32* %74, i32** %5, align 8
  br label %231

75:                                               ; preds = %60
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @svn_cstring_atoi64(i64* %12, i8* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load i64, i64* %12, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 5
  store i8* %80, i8** %82, align 8
  %83 = call i8* @svn_cstring_tokenize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13)
  store i8* %83, i8** %11, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %92, label %86

86:                                               ; preds = %75
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 @strlen(i8* %87)
  %89 = load i32, i32* @APR_MD5_DIGESTSIZE, align 4
  %90 = mul nsw i32 %89, 2
  %91 = icmp ne i32 %88, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %86, %75
  %93 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %94 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %95 = call i32* @svn_error_create(i32 %93, i32* null, i32 %94)
  store i32* %95, i32** %5, align 8
  br label %231

96:                                               ; preds = %86
  %97 = load i32, i32* @svn_checksum_md5, align 4
  %98 = load i8*, i8** %11, align 8
  %99 = load i32*, i32** %9, align 8
  %100 = call i32 @svn_checksum_parse_hex(%struct.TYPE_11__** %14, i32 %97, i8* %98, i32* %99)
  %101 = call i32 @SVN_ERR(i32 %100)
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %103 = icmp ne %struct.TYPE_11__* %102, null
  br i1 %103, label %104, label %112

104:                                              ; preds = %96
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @memcpy(i32 %107, i32 %110, i32 4)
  br label %112

112:                                              ; preds = %104, %96
  %113 = call i8* @svn_cstring_tokenize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13)
  store i8* %113, i8** %11, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = icmp eq i8* %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %117, i32** %5, align 8
  br label %231

118:                                              ; preds = %112
  %119 = load i8*, i8** %11, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 45
  br i1 %123, label %124, label %131

124:                                              ; preds = %118
  %125 = load i8*, i8** %11, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %14, align 8
  br label %147

131:                                              ; preds = %124, %118
  %132 = load i8*, i8** %11, align 8
  %133 = call i32 @strlen(i8* %132)
  %134 = load i32, i32* @APR_SHA1_DIGESTSIZE, align 4
  %135 = mul nsw i32 %134, 2
  %136 = icmp ne i32 %133, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %139 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %140 = call i32* @svn_error_create(i32 %138, i32* null, i32 %139)
  store i32* %140, i32** %5, align 8
  br label %231

141:                                              ; preds = %131
  %142 = load i32, i32* @svn_checksum_sha1, align 4
  %143 = load i8*, i8** %11, align 8
  %144 = load i32*, i32** %9, align 8
  %145 = call i32 @svn_checksum_parse_hex(%struct.TYPE_11__** %14, i32 %142, i8* %143, i32* %144)
  %146 = call i32 @SVN_ERR(i32 %145)
  br label %147

147:                                              ; preds = %141, %130
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %149 = icmp ne %struct.TYPE_11__* %148, null
  %150 = zext i1 %149 to i32
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 4
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %154 = icmp ne %struct.TYPE_11__* %153, null
  br i1 %154, label %155, label %163

155:                                              ; preds = %147
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @memcpy(i32 %158, i32 %161, i32 4)
  br label %163

163:                                              ; preds = %155, %147
  %164 = call i8* @svn_cstring_tokenize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13)
  store i8* %164, i8** %11, align 8
  %165 = load i8*, i8** %11, align 8
  %166 = icmp eq i8* %165, null
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %169 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %170 = call i32* @svn_error_create(i32 %168, i32* null, i32 %169)
  store i32* %170, i32** %5, align 8
  br label %231

171:                                              ; preds = %163
  %172 = load i8*, i8** %11, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 0
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 45
  br i1 %176, label %177, label %185

177:                                              ; preds = %171
  %178 = load i8*, i8** %11, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 1
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %177
  %184 = load i8*, i8** %13, align 8
  store i8* %184, i8** %15, align 8
  br label %221

185:                                              ; preds = %177, %171
  %186 = load i8*, i8** %11, align 8
  store i8* %186, i8** %16, align 8
  %187 = call i8* @svn_cstring_tokenize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %16)
  store i8* %187, i8** %11, align 8
  %188 = load i8*, i8** %11, align 8
  %189 = icmp eq i8* %188, null
  br i1 %189, label %190, label %194

190:                                              ; preds = %185
  %191 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %192 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %193 = call i32* @svn_error_create(i32 %191, i32* null, i32 %192)
  store i32* %193, i32** %5, align 8
  br label %231

194:                                              ; preds = %185
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 1
  %198 = load i8*, i8** %11, align 8
  %199 = call i32 @svn_fs_fs__id_txn_parse(i32* %197, i8* %198)
  %200 = call i32 @SVN_ERR(i32 %199)
  %201 = call i8* @svn_cstring_tokenize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %16)
  store i8* %201, i8** %11, align 8
  %202 = load i8*, i8** %11, align 8
  %203 = icmp eq i8* %202, null
  br i1 %203, label %209, label %204

204:                                              ; preds = %194
  %205 = load i8*, i8** %11, align 8
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp ne i32 %207, 95
  br i1 %208, label %209, label %213

209:                                              ; preds = %204, %194
  %210 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %211 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %212 = call i32* @svn_error_create(i32 %210, i32* null, i32 %211)
  store i32* %212, i32** %5, align 8
  br label %231

213:                                              ; preds = %204
  %214 = load i8*, i8** %11, align 8
  %215 = getelementptr inbounds i8, i8* %214, i32 1
  store i8* %215, i8** %11, align 8
  %216 = load i8*, i8** %11, align 8
  %217 = call i32 @svn__base36toui64(i8** %15, i8* %216)
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  store i32 %217, i32* %220, align 8
  br label %221

221:                                              ; preds = %213, %183
  %222 = load i8*, i8** %15, align 8
  %223 = load i8, i8* %222, align 1
  %224 = icmp ne i8 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %221
  %226 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %227 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %228 = call i32* @svn_error_create(i32 %226, i32* null, i32 %227)
  store i32* %228, i32** %5, align 8
  br label %231

229:                                              ; preds = %221
  %230 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %230, i32** %5, align 8
  br label %231

231:                                              ; preds = %229, %225, %209, %190, %167, %137, %116, %92, %71, %56, %42, %40
  %232 = load i32*, i32** %5, align 8
  ret i32* %232
}

declare dso_local %struct.TYPE_12__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @parse_revnum(i64*, i8**) #1

declare dso_local i32 @svn_fs_fs__id_txn_reset(i32*) #1

declare dso_local i8* @svn_cstring_tokenize(i8*, i8**) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_cstring_atoi64(i64*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @svn_checksum_parse_hex(%struct.TYPE_11__**, i32, i8*, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @svn_fs_fs__id_txn_parse(i32*, i8*) #1

declare dso_local i32 @svn__base36toui64(i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
