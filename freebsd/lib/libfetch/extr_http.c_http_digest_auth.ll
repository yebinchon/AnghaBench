; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_http.c_http_digest_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_http.c_http_digest_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32, i32, i64*, i64* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.url = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"realm/nonce not set in challenge\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s%s%s%s\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c",algorithm=\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c",opaque=\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%x%lx\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"HA1: [%s]\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.9 = private unnamed_addr constant [103 x i8] c"%s: Digest username=\22%s\22,realm=\22%s\22,nonce=\22%s\22,uri=\22%s\22,response=\22%s\22,qop=\22auth\22, cnonce=\22%s\22, nc=%s%s\00", align 1
@.str.10 = private unnamed_addr constant [72 x i8] c"%s: Digest username=\22%s\22,realm=\22%s\22,nonce=\22%s\22,uri=\22%s\22,response=\22%s\22%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.url*)* @http_digest_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_digest_auth(i32* %0, i8* %1, %struct.TYPE_6__* %2, %struct.TYPE_5__* %3, %struct.url* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.url*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [10 x i8], align 1
  %14 = alloca [40 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %10, align 8
  store %struct.url* %4, %struct.url** %11, align 8
  store i8* null, i8** %15, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %5
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22, %5
  %28 = call i32 (i8*, ...) @DEBUGF(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %183

29:                                               ; preds = %22
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 5
  %32 = load i64*, i64** %31, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %36 = bitcast i8* %35 to i64*
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 5
  store i64* %36, i64** %38, align 8
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 5
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 5
  %49 = load i64*, i64** %48, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %39
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  br label %65

64:                                               ; preds = %39
  br label %65

65:                                               ; preds = %64, %60
  %66 = phi i8* [ %63, %60 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %64 ]
  %67 = call i64 @asprintf(i8** %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %46, i64* %49, i8* %55, i8* %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 -1, i32* %6, align 4
  br label %183

70:                                               ; preds = %65
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 4
  %73 = load i64*, i64** %72, align 8
  %74 = icmp ne i64* %73, null
  br i1 %74, label %82, label %75

75:                                               ; preds = %70
  %76 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %77 = bitcast i8* %76 to i64*
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 4
  store i64* %77, i64** %79, align 8
  %80 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  store i8 0, i8* %80, align 1
  %81 = getelementptr inbounds [40 x i8], [40 x i8]* %14, i64 0, i64 0
  store i8 0, i8* %81, align 16
  br label %96

82:                                               ; preds = %70
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  %87 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %90)
  %92 = getelementptr inbounds [40 x i8], [40 x i8]* %14, i64 0, i64 0
  %93 = call i32 (...) @getpid()
  %94 = call i64 @time(i32 0)
  %95 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %93, i64 %94)
  br label %96

96:                                               ; preds = %82, %75
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 5
  %99 = load i64*, i64** %98, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds [40 x i8], [40 x i8]* %14, i64 0, i64 0
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @DigestCalcHA1(i64* %99, i32 %102, i32 %105, i32 %108, i32 %111, i8* %112, i32 %113)
  %115 = load i32, i32* %16, align 4
  %116 = call i32 (i8*, ...) @DEBUGF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %16, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %122 = getelementptr inbounds [40 x i8], [40 x i8]* %14, i64 0, i64 0
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 4
  %125 = load i64*, i64** %124, align 8
  %126 = load %struct.url*, %struct.url** %11, align 8
  %127 = getelementptr inbounds %struct.url, %struct.url* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %17, align 4
  %130 = call i32 @DigestCalcResponse(i32 %117, i32 %120, i8* %121, i8* %122, i64* %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %128, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %129)
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 4
  %133 = load i64*, i64** %132, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %157

137:                                              ; preds = %96
  %138 = load i32*, i32** %7, align 8
  %139 = load i8*, i8** %8, align 8
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.url*, %struct.url** %11, align 8
  %150 = getelementptr inbounds %struct.url, %struct.url* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %17, align 4
  %153 = getelementptr inbounds [40 x i8], [40 x i8]* %14, i64 0, i64 0
  %154 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %155 = load i8*, i8** %15, align 8
  %156 = call i32 (i32*, i8*, i8*, i32, i32, i32, i32, i32, i8*, ...) @http_cmd(i32* %138, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.9, i64 0, i64 0), i8* %139, i32 %142, i32 %145, i32 %148, i32 %151, i32 %152, i8* %153, i8* %154, i8* %155)
  store i32 %156, i32* %12, align 4
  br label %175

157:                                              ; preds = %96
  %158 = load i32*, i32** %7, align 8
  %159 = load i8*, i8** %8, align 8
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.url*, %struct.url** %11, align 8
  %170 = getelementptr inbounds %struct.url, %struct.url* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %17, align 4
  %173 = load i8*, i8** %15, align 8
  %174 = call i32 (i32*, i8*, i8*, i32, i32, i32, i32, i32, i8*, ...) @http_cmd(i32* %158, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.10, i64 0, i64 0), i8* %159, i32 %162, i32 %165, i32 %168, i32 %171, i32 %172, i8* %173)
  store i32 %174, i32* %12, align 4
  br label %175

175:                                              ; preds = %157, %137
  %176 = load i8*, i8** %15, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i8*, i8** %15, align 8
  %180 = call i32 @free(i8* %179)
  br label %181

181:                                              ; preds = %178, %175
  %182 = load i32, i32* %12, align 4
  store i32 %182, i32* %6, align 4
  br label %183

183:                                              ; preds = %181, %69, %27
  %184 = load i32, i32* %6, align 4
  ret i32 %184
}

declare dso_local i32 @DEBUGF(i8*, ...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*, i64*, i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i64 @time(i32) #1

declare dso_local i32 @DigestCalcHA1(i64*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @DigestCalcResponse(i32, i32, i8*, i8*, i64*, i8*, i32, i8*, i32) #1

declare dso_local i32 @http_cmd(i32*, i8*, i8*, i32, i32, i32, i32, i32, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
