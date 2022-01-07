; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_close_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_close_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, %struct.TYPE_13__*, i32, i64, i32, i32, i32, i64, i32, i64, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i8*, i8*, %struct.TYPE_12__, %struct.TYPE_16__*, i32, %struct.TYPE_16__*, i32, %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_13__*, i32, i32, i32* }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"PUT\00", align 1
@svn_ra_serf__expect_empty_body = common dso_local global i32 0, align 4
@create_empty_put_body = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1
@SVN_SVNDIFF_MIME_TYPE = common dso_local global i8* null, align 8
@setup_put_headers = common dso_local global i32 0, align 4
@svn_checksum_md5 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Checksum mismatch for '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*)* @close_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @close_file(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %8, align 8
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %3
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 9
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i64, i64* @TRUE, align 8
  store i64 %35, i64* %9, align 8
  br label %36

36:                                               ; preds = %34, %29, %24, %3
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i64, i64* %9, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %132

44:                                               ; preds = %41, %36
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 11
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %132, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = call %struct.TYPE_14__* @svn_ra_serf__create_handler(i32 %54, i32* %55)
  store %struct.TYPE_14__* %56, %struct.TYPE_14__** %10, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %58, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 9
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @svn_ra_serf__expect_empty_body, align 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 7
  store %struct.TYPE_14__* %67, %struct.TYPE_14__** %69, align 8
  %70 = load i64, i64* %9, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %49
  %73 = load i32, i32* @create_empty_put_body, align 4
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 5
  store %struct.TYPE_16__* %76, %struct.TYPE_16__** %78, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %80, align 8
  br label %98

81:                                               ; preds = %49
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 10
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @svn_stream_close(i32 %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 6
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 5
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 7
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @svn_ra_serf__request_body_get_delegate(i32* %88, %struct.TYPE_16__** %90, i64 %93)
  %95 = load i8*, i8** @SVN_SVNDIFF_MIME_TYPE, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %81, %72
  %99 = load i32, i32* @setup_put_headers, align 4
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 3
  store %struct.TYPE_16__* %102, %struct.TYPE_16__** %104, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = call i32 @svn_ra_serf__context_run_one(%struct.TYPE_14__* %105, i32* %106)
  %108 = call i32 @SVN_ERR(i32 %107)
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 9
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %98
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %113
  store i32 201, i32* %11, align 4
  br label %120

119:                                              ; preds = %113, %98
  store i32 204, i32* %11, align 4
  br label %120

120:                                              ; preds = %119, %118
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %120
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %129 = call i32 @svn_ra_serf__unexpected_status(%struct.TYPE_14__* %128)
  %130 = call i32* @svn_error_trace(i32 %129)
  store i32* %130, i32** %4, align 8
  br label %236

131:                                              ; preds = %120
  br label %132

132:                                              ; preds = %131, %44, %41
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 7
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 7
  %140 = load i64, i64* %139, align 8
  %141 = load i32*, i32** %7, align 8
  %142 = call i32 @svn_ra_serf__request_body_cleanup(i64 %140, i32* %141)
  %143 = call i32 @SVN_ERR(i32 %142)
  br label %144

144:                                              ; preds = %137, %132
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @apr_hash_count(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %190

150:                                              ; preds = %144
  %151 = load i32*, i32** %7, align 8
  %152 = call %struct.TYPE_15__* @apr_pcalloc(i32* %151, i32 32)
  store %struct.TYPE_15__* %152, %struct.TYPE_15__** %12, align 8
  %153 = load i32*, i32** %7, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 5
  store i32* %153, i32** %155, align 8
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 4
  store i32 %158, i32* %160, align 4
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 8
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %167, align 8
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 2
  store %struct.TYPE_13__* %168, %struct.TYPE_13__** %170, align 8
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 4
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %187 = load i32*, i32** %7, align 8
  %188 = call i32 @proppatch_resource(i32 %185, %struct.TYPE_15__* %186, i32* %187)
  %189 = call i32 @SVN_ERR(i32 %188)
  br label %190

190:                                              ; preds = %150, %144
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %228

195:                                              ; preds = %190
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %228

200:                                              ; preds = %195
  %201 = load i32, i32* @svn_checksum_md5, align 4
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = load i32*, i32** %7, align 8
  %206 = call i32 @svn_checksum_parse_hex(i32** %13, i32 %201, i8* %204, i32* %205)
  %207 = call i32 @SVN_ERR(i32 %206)
  %208 = load i32*, i32** %13, align 8
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = call i32 @svn_checksum_match(i32* %208, i64 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %227, label %214

214:                                              ; preds = %200
  %215 = load i32*, i32** %13, align 8
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 3
  %218 = load i64, i64* %217, align 8
  %219 = load i32*, i32** %7, align 8
  %220 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load i32*, i32** %7, align 8
  %225 = call i32 @svn_dirent_local_style(i32 %223, i32* %224)
  %226 = call i32* @svn_checksum_mismatch_err(i32* %215, i64 %218, i32* %219, i32 %220, i32 %225)
  store i32* %226, i32** %4, align 8
  br label %236

227:                                              ; preds = %200
  br label %228

228:                                              ; preds = %227, %195, %190
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %233, -1
  store i32 %234, i32* %232, align 4
  %235 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %235, i32** %4, align 8
  br label %236

236:                                              ; preds = %228, %214, %127
  %237 = load i32*, i32** %4, align 8
  ret i32* %237
}

declare dso_local %struct.TYPE_14__* @svn_ra_serf__create_handler(i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_close(i32) #1

declare dso_local i32 @svn_ra_serf__request_body_get_delegate(i32*, %struct.TYPE_16__**, i64) #1

declare dso_local i32 @svn_ra_serf__context_run_one(%struct.TYPE_14__*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_ra_serf__unexpected_status(%struct.TYPE_14__*) #1

declare dso_local i32 @svn_ra_serf__request_body_cleanup(i64, i32*) #1

declare dso_local i64 @apr_hash_count(i32) #1

declare dso_local %struct.TYPE_15__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @proppatch_resource(i32, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @svn_checksum_parse_hex(i32**, i32, i8*, i32*) #1

declare dso_local i32 @svn_checksum_match(i32*, i64) #1

declare dso_local i32* @svn_checksum_mismatch_err(i32*, i64, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
