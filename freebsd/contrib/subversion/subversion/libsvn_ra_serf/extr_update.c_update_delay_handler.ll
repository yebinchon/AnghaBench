; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_update.c_update_delay_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_update.c_update_delay_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i64, i32, %struct.TYPE_15__* (i32*, i32*, i32, i32*)* }
%struct.TYPE_13__ = type { i64, i64, i8*, i32, i64 }

@REQUEST_COUNT_TO_RESUME = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@PARSE_CHUNK_SIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@SPILLBUF_BLOCKSIZE = common dso_local global i32 0, align 4
@SPILLBUF_MAXBUFFSIZE = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_15__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (i32*, i32*, i8*, i32*)* @update_delay_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @update_delay_handler(i32* %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %10, align 8
  store i32* null, i32** %12, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %162, label %25

25:                                               ; preds = %4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %25
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_15__* (i32*, i32*, i32, i32*)*, %struct.TYPE_15__* (i32*, i32*, i32, i32*)** %34, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call %struct.TYPE_15__* %35(i32* %36, i32* %37, i32 %40, i32* %41)
  %43 = call %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__* %42)
  store %struct.TYPE_15__* %43, %struct.TYPE_15__** %5, align 8
  br label %203

44:                                               ; preds = %25
  br label %45

45:                                               ; preds = %150, %44
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %50, %55
  %57 = load i64, i64* @REQUEST_COUNT_TO_RESUME, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %151

59:                                               ; preds = %45
  %60 = load i8*, i8** @FALSE, align 8
  store i8* %60, i8** %15, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* @PARSE_CHUNK_SIZE, align 4
  %63 = call i64 @serf_bucket_read(i32* %61, i32 %62, i8** %13, i64* %14)
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i64 @SERF_BUCKET_READ_ERROR(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i64, i64* %11, align 8
  %69 = call %struct.TYPE_15__* @svn_ra_serf__wrap_err(i64 %68, i32* null)
  store %struct.TYPE_15__* %69, %struct.TYPE_15__** %5, align 8
  br label %203

70:                                               ; preds = %59
  %71 = load i64, i64* %11, align 8
  %72 = call i64 @APR_STATUS_IS_EOF(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i8*, i8** @TRUE, align 8
  store i8* %75, i8** %15, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 2
  store i8* %75, i8** %79, align 8
  br label %80

80:                                               ; preds = %74, %70
  br label %81

81:                                               ; preds = %80
  %82 = load i32*, i32** %12, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32*, i32** %9, align 8
  %86 = call i32* @svn_pool_create(i32* %85)
  store i32* %86, i32** %12, align 8
  br label %90

87:                                               ; preds = %81
  %88 = load i32*, i32** %12, align 8
  %89 = call i32 @svn_pool_clear(i32* %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i64, i64* %14, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load i8*, i8** %15, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i64, i64* %11, align 8
  %98 = call %struct.TYPE_15__* @svn_ra_serf__wrap_err(i64 %97, i32* null)
  store %struct.TYPE_15__* %98, %struct.TYPE_15__** %5, align 8
  br label %203

99:                                               ; preds = %93, %90
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = load i8*, i8** %13, align 8
  %103 = load i64, i64* %14, align 8
  %104 = load i8*, i8** %15, align 8
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @serf_request_get_alloc(i32* %105)
  %107 = load i32*, i32** %12, align 8
  %108 = call %struct.TYPE_15__* @process_buffer(%struct.TYPE_14__* %100, i32* %101, i8* %102, i64 %103, i8* %104, i32 %106, i32* %107)
  store %struct.TYPE_15__* %108, %struct.TYPE_15__** %16, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %110 = icmp ne %struct.TYPE_15__* %109, null
  br i1 %110, label %111, label %120

111:                                              ; preds = %99
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i64 @SERF_BUCKET_READ_ERROR(i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %119 = call %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__* %118)
  store %struct.TYPE_15__* %119, %struct.TYPE_15__** %5, align 8
  br label %203

120:                                              ; preds = %111, %99
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %122 = icmp ne %struct.TYPE_15__* %121, null
  br i1 %122, label %123, label %132

123:                                              ; preds = %120
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i64 @APR_STATUS_IS_EAGAIN(i64 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %131 = call i32 @svn_error_clear(%struct.TYPE_15__* %130)
  br label %149

132:                                              ; preds = %123, %120
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %134 = icmp ne %struct.TYPE_15__* %133, null
  br i1 %134, label %135, label %146

135:                                              ; preds = %132
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i64 @APR_STATUS_IS_EOF(i64 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %135
  %142 = load i32*, i32** %12, align 8
  %143 = call i32 @svn_pool_destroy(i32* %142)
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %145 = call %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__* %144)
  store %struct.TYPE_15__* %145, %struct.TYPE_15__** %5, align 8
  br label %203

146:                                              ; preds = %135, %132
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %148 = call %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__* %147)
  store %struct.TYPE_15__* %148, %struct.TYPE_15__** %5, align 8
  br label %203

149:                                              ; preds = %129
  br label %150

150:                                              ; preds = %149
  br label %45

151:                                              ; preds = %45
  %152 = load i32, i32* @SPILLBUF_BLOCKSIZE, align 4
  %153 = load i32, i32* @SPILLBUF_MAXBUFFSIZE, align 4
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = call i64 @svn_spillbuf__create(i32 %152, i32 %153, i32 %158)
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 1
  store i64 %159, i64* %161, align 8
  br label %162

162:                                              ; preds = %151, %4
  br label %163

163:                                              ; preds = %181, %162
  %164 = load i32*, i32** %7, align 8
  %165 = load i32, i32* @PARSE_CHUNK_SIZE, align 4
  %166 = mul nsw i32 8, %165
  %167 = call i64 @serf_bucket_read(i32* %164, i32 %166, i8** %17, i64* %18)
  store i64 %167, i64* %11, align 8
  %168 = load i64, i64* %11, align 8
  %169 = call i64 @SERF_BUCKET_READ_ERROR(i64 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %180, label %171

171:                                              ; preds = %163
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i8*, i8** %17, align 8
  %176 = load i64, i64* %18, align 8
  %177 = load i32*, i32** %9, align 8
  %178 = call i32 @svn_spillbuf__write(i64 %174, i8* %175, i64 %176, i32* %177)
  %179 = call i32 @SVN_ERR(i32 %178)
  br label %180

180:                                              ; preds = %171, %163
  br label %181

181:                                              ; preds = %180
  %182 = load i64, i64* %11, align 8
  %183 = load i64, i64* @APR_SUCCESS, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %163, label %185

185:                                              ; preds = %181
  %186 = load i64, i64* %11, align 8
  %187 = call i64 @APR_STATUS_IS_EOF(i64 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %185
  %190 = load i8*, i8** @TRUE, align 8
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 2
  store i8* %190, i8** %194, align 8
  br label %195

195:                                              ; preds = %189, %185
  %196 = load i64, i64* %11, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = load i64, i64* %11, align 8
  %200 = call %struct.TYPE_15__* @svn_ra_serf__wrap_err(i64 %199, i32* null)
  store %struct.TYPE_15__* %200, %struct.TYPE_15__** %5, align 8
  br label %203

201:                                              ; preds = %195
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_15__* %202, %struct.TYPE_15__** %5, align 8
  br label %203

203:                                              ; preds = %201, %198, %146, %141, %117, %96, %67, %32
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  ret %struct.TYPE_15__* %204
}

declare dso_local %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__*) #1

declare dso_local i64 @serf_bucket_read(i32*, i32, i8**, i64*) #1

declare dso_local i64 @SERF_BUCKET_READ_ERROR(i64) #1

declare dso_local %struct.TYPE_15__* @svn_ra_serf__wrap_err(i64, i32*) #1

declare dso_local i64 @APR_STATUS_IS_EOF(i64) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local %struct.TYPE_15__* @process_buffer(%struct.TYPE_14__*, i32*, i8*, i64, i8*, i32, i32*) #1

declare dso_local i32 @serf_request_get_alloc(i32*) #1

declare dso_local i64 @APR_STATUS_IS_EAGAIN(i64) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_15__*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i64 @svn_spillbuf__create(i32, i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_spillbuf__write(i64, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
