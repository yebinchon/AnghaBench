; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_dechunk_buckets.c_serf_dechunk_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_dechunk_buckets.c_serf_dechunk_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i8*, i32 }

@SERF_NEWLINE_CRLF = common dso_local global i32 0, align 4
@SERF_LINEBUF_READY = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@APR_EOF = common dso_local global i32 0, align 4
@SERF_ERROR_TRUNCATED_HTTP_RESPONSE = common dso_local global i32 0, align 4
@APR_EGENERAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i8**, i32*)* @serf_dechunk_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serf_dechunk_read(%struct.TYPE_5__* %0, i32 %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %10, align 8
  br label %15

15:                                               ; preds = %4, %88, %197
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %195 [
    i32 129, label %19
    i32 131, label %93
    i32 128, label %145
    i32 130, label %192
  ]

19:                                               ; preds = %15
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SERF_NEWLINE_CRLF, align 4
  %26 = call i32 @serf_linebuf_fetch(%struct.TYPE_7__* %21, i32 %24, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @SERF_BUCKET_READ_ERROR(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %5, align 4
  br label %198

32:                                               ; preds = %19
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @SERF_LINEBUF_READY, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %90

39:                                               ; preds = %32
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = icmp eq i64 %44, 8
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* @ERANGE, align 4
  %48 = call i32 @APR_FROM_OS_ERROR(i32 %47)
  store i32 %48, i32* %5, align 4
  br label %198

49:                                               ; preds = %39
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %53, i64 %58
  store i8 0, i8* %59, align 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @apr_strtoi64(i8* %63, i32* null, i32 16)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @errno, align 4
  %68 = load i32, i32* @ERANGE, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %49
  %71 = load i32, i32* @ERANGE, align 4
  %72 = call i32 @APR_FROM_OS_ERROR(i32 %71)
  store i32 %72, i32* %5, align 4
  br label %198

73:                                               ; preds = %49
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i32 130, i32* %80, align 8
  %81 = load i32, i32* @APR_EOF, align 4
  store i32 %81, i32* %11, align 4
  br label %85

82:                                               ; preds = %73
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i32 131, i32* %84, align 8
  br label %85

85:                                               ; preds = %82, %78
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %85
  br label %15

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %89, %32
  %91 = load i32*, i32** %9, align 8
  store i32 0, i32* %91, align 4
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %5, align 4
  br label %198

93:                                               ; preds = %15
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp sgt i32 %94, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %99, %93
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load i8**, i8*** %8, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = call i32 @serf_bucket_read(i32 %106, i32 %107, i8** %108, i32* %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @SERF_BUCKET_READ_ERROR(i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %103
  %115 = load i32, i32* %11, align 4
  store i32 %115, i32* %5, align 4
  br label %198

116:                                              ; preds = %103
  %117 = load i32*, i32** %9, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %121, %118
  store i32 %122, i32* %120, align 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %116
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  store i32 128, i32* %129, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  store i32 2, i32* %131, align 4
  br label %132

132:                                              ; preds = %127, %116
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @APR_STATUS_IS_EOF(i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = load i32, i32* @SERF_ERROR_TRUNCATED_HTTP_RESPONSE, align 4
  store i32 %142, i32* %5, align 4
  br label %198

143:                                              ; preds = %137, %132
  %144 = load i32, i32* %11, align 4
  store i32 %144, i32* %5, align 4
  br label %198

145:                                              ; preds = %15
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i8**, i8*** %8, align 8
  %153 = load i32*, i32** %9, align 8
  %154 = call i32 @serf_bucket_read(i32 %148, i32 %151, i8** %152, i32* %153)
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @SERF_BUCKET_READ_ERROR(i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %145
  %159 = load i32, i32* %11, align 4
  store i32 %159, i32* %5, align 4
  br label %198

160:                                              ; preds = %145
  %161 = load i32*, i32** %9, align 8
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = sub nsw i32 %165, %162
  store i32 %166, i32* %164, align 4
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %160
  %172 = load i32, i32* %11, align 4
  %173 = call i32 @APR_STATUS_IS_EOF(i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %171
  %176 = load i32, i32* @SERF_ERROR_TRUNCATED_HTTP_RESPONSE, align 4
  store i32 %176, i32* %5, align 4
  br label %198

177:                                              ; preds = %171, %160
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %177
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  store i32 129, i32* %184, align 8
  br label %185

185:                                              ; preds = %182, %177
  %186 = load i32*, i32** %9, align 8
  store i32 0, i32* %186, align 4
  %187 = load i32, i32* %11, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %185
  %190 = load i32, i32* %11, align 4
  store i32 %190, i32* %5, align 4
  br label %198

191:                                              ; preds = %185
  br label %197

192:                                              ; preds = %15
  %193 = load i32*, i32** %9, align 8
  store i32 0, i32* %193, align 4
  %194 = load i32, i32* @APR_EOF, align 4
  store i32 %194, i32* %5, align 4
  br label %198

195:                                              ; preds = %15
  %196 = load i32, i32* @APR_EGENERAL, align 4
  store i32 %196, i32* %5, align 4
  br label %198

197:                                              ; preds = %191
  br label %15

198:                                              ; preds = %195, %192, %189, %175, %158, %143, %141, %114, %90, %70, %46, %30
  %199 = load i32, i32* %5, align 4
  ret i32 %199
}

declare dso_local i32 @serf_linebuf_fetch(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @SERF_BUCKET_READ_ERROR(i32) #1

declare dso_local i32 @APR_FROM_OS_ERROR(i32) #1

declare dso_local i32 @apr_strtoi64(i8*, i32*, i32) #1

declare dso_local i32 @serf_bucket_read(i32, i32, i8**, i32*) #1

declare dso_local i32 @APR_STATUS_IS_EOF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
