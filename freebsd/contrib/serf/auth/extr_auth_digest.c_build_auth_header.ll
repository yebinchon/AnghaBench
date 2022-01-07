; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/auth/extr_auth_digest.c_build_auth_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/auth/extr_auth_digest.c_build_auth_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32 }

@APR_MD5_DIGESTSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Digest realm=\22%s\22, username=\22%s\22, nonce=\22%s\22, uri=\22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"%s, nc=%08x, cnonce=\22%s\22, qop=\22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%s:%s:%08x:%s:%s:%s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s:%s:%s\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"%s, response=\22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"%s, opaque=\22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"%s, algorithm=\22%s\22\00", align 1
@APR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8**, %struct.TYPE_3__*, i8*, i8*, i32*)* @build_auth_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @build_auth_header(i8** %0, %struct.TYPE_3__* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load i32, i32* @APR_MD5_DIGESTSIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %15, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %16, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = call i64 @build_digest_ha2(i8** %13, i8* %24, i8* %25, i32 %28, i32* %29)
  store i64 %30, i64* %18, align 8
  %31 = load i64, i64* %18, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i64, i64* %18, align 8
  store i64 %34, i64* %6, align 8
  store i32 1, i32* %19, align 4
  br label %162

35:                                               ; preds = %5
  %36 = load i32*, i32** %11, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_psprintf(i32* %36, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %41, i8* %46, i32 %49, i8* %50)
  store i8* %51, i8** %12, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %105

56:                                               ; preds = %35
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %56
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @random_cnonce(i32 %64)
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %61, %56
  %69 = load i32*, i32** %11, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i8*
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_psprintf(i32* %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %70, i8* %75, i32 %78, i32 %81)
  store i8* %82, i8** %12, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load i8*, i8** %13, align 8
  %104 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_psprintf(i32* %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %88, i8* %93, i32 %96, i32 %99, i32 %102, i8* %103)
  store i8* %104, i8** %14, align 8
  br label %119

105:                                              ; preds = %35
  %106 = load i32*, i32** %11, align 8
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to i8*
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = inttoptr i64 %115 to i8*
  %117 = load i8*, i8** %13, align 8
  %118 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_psprintf(i32* %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %111, i8* %116, i8* %117)
  store i8* %118, i8** %14, align 8
  br label %119

119:                                              ; preds = %105, %68
  %120 = load i8*, i8** %14, align 8
  %121 = load i8*, i8** %14, align 8
  %122 = call i32 @strlen(i8* %121)
  %123 = call i64 @apr_md5(i8* %23, i8* %120, i32 %122)
  store i64 %123, i64* %18, align 8
  %124 = load i64, i64* %18, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = load i64, i64* %18, align 8
  store i64 %127, i64* %6, align 8
  store i32 1, i32* %19, align 4
  br label %162

128:                                              ; preds = %119
  %129 = load i32*, i32** %11, align 8
  %130 = call i8* @hex_encode(i8* %23, i32* %129)
  store i8* %130, i8** %17, align 8
  %131 = load i32*, i32** %11, align 8
  %132 = load i8*, i8** %12, align 8
  %133 = load i8*, i8** %17, align 8
  %134 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_psprintf(i32* %131, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %132, i8* %133)
  store i8* %134, i8** %12, align 8
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %146

139:                                              ; preds = %128
  %140 = load i32*, i32** %11, align 8
  %141 = load i8*, i8** %12, align 8
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_psprintf(i32* %140, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %141, i8* %144)
  store i8* %145, i8** %12, align 8
  br label %146

146:                                              ; preds = %139, %128
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %158

151:                                              ; preds = %146
  %152 = load i32*, i32** %11, align 8
  %153 = load i8*, i8** %12, align 8
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_psprintf(i32* %152, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %153, i8* %156)
  store i8* %157, i8** %12, align 8
  br label %158

158:                                              ; preds = %151, %146
  %159 = load i8*, i8** %12, align 8
  %160 = load i8**, i8*** %7, align 8
  store i8* %159, i8** %160, align 8
  %161 = load i64, i64* @APR_SUCCESS, align 8
  store i64 %161, i64* %6, align 8
  store i32 1, i32* %19, align 4
  br label %162

162:                                              ; preds = %158, %126, %33
  %163 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %163)
  %164 = load i64, i64* %6, align 8
  ret i64 %164
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @build_digest_ha2(i8**, i8*, i8*, i32, i32*) #2

declare dso_local i8* @apr_psprintf(i32*, i8*, i8*, i8*, ...) #2

declare dso_local i32 @random_cnonce(i32) #2

declare dso_local i64 @apr_md5(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @hex_encode(i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
