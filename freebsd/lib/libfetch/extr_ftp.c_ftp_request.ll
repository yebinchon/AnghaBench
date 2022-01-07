; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_ftp.c_ftp_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_ftp.c_ftp_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.url_stat = type { i32 }
%struct.url = type { i8*, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@SCHEME_HTTP = common dso_local global i8* null, align 8
@SCHEME_HTTPS = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"STAT\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"RETR\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@fetchLastErrCode = common dso_local global i64 0, align 8
@FETCH_PROTO = common dso_local global i64 0, align 8
@FETCH_UNAVAIL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"STOR\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"APPE\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ftp_request(%struct.url* %0, i8* %1, %struct.url_stat* %2, %struct.url* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.url*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.url_stat*, align 8
  %10 = alloca %struct.url*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  store %struct.url* %0, %struct.url** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.url_stat* %2, %struct.url_stat** %9, align 8
  store %struct.url* %3, %struct.url** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load %struct.url*, %struct.url** %10, align 8
  %15 = icmp ne %struct.url* %14, null
  br i1 %15, label %16, label %52

16:                                               ; preds = %5
  %17 = load %struct.url*, %struct.url** %10, align 8
  %18 = getelementptr inbounds %struct.url, %struct.url* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i8*, i8** @SCHEME_HTTP, align 8
  %21 = call i64 @strcmp(i8* %19, i8* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load %struct.url*, %struct.url** %10, align 8
  %25 = getelementptr inbounds %struct.url, %struct.url* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** @SCHEME_HTTPS, align 8
  %28 = call i64 @strcmp(i8* %26, i8* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %23, %16
  %31 = load i8*, i8** %8, align 8
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load %struct.url*, %struct.url** %7, align 8
  %36 = load %struct.url_stat*, %struct.url_stat** %9, align 8
  %37 = load %struct.url*, %struct.url** %10, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = call i32* @http_request(%struct.url* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.url_stat* %36, %struct.url* %37, i8* %38)
  store i32* %39, i32** %6, align 8
  br label %132

40:                                               ; preds = %30
  %41 = load i8*, i8** %8, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load %struct.url*, %struct.url** %7, align 8
  %46 = load %struct.url_stat*, %struct.url_stat** %9, align 8
  %47 = load %struct.url*, %struct.url** %10, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = call i32* @http_request(%struct.url* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.url_stat* %46, %struct.url* %47, i8* %48)
  store i32* %49, i32** %6, align 8
  br label %132

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51, %23, %5
  %53 = load %struct.url*, %struct.url** %7, align 8
  %54 = load %struct.url*, %struct.url** %10, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = call %struct.TYPE_7__* @ftp_cached_connect(%struct.url* %53, %struct.url* %54, i8* %55)
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %12, align 8
  %57 = load %struct.url*, %struct.url** %10, align 8
  %58 = icmp ne %struct.url* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.url*, %struct.url** %10, align 8
  %61 = call i32 @fetchFreeURL(%struct.url* %60)
  br label %62

62:                                               ; preds = %59, %52
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %64 = icmp eq %struct.TYPE_7__* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32* null, i32** %6, align 8
  br label %132

66:                                               ; preds = %62
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %68 = load %struct.url*, %struct.url** %7, align 8
  %69 = getelementptr inbounds %struct.url, %struct.url* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ftp_cwd(%struct.TYPE_7__* %67, i32 %70)
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %129

74:                                               ; preds = %66
  %75 = load %struct.url_stat*, %struct.url_stat** %9, align 8
  %76 = icmp ne %struct.url_stat* %75, null
  br i1 %76, label %77, label %94

77:                                               ; preds = %74
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %79 = load %struct.url*, %struct.url** %7, align 8
  %80 = getelementptr inbounds %struct.url, %struct.url* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.url_stat*, %struct.url_stat** %9, align 8
  %83 = call i32 @ftp_stat(%struct.TYPE_7__* %78, i32 %81, %struct.url_stat* %82)
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %94

85:                                               ; preds = %77
  %86 = load i64, i64* @fetchLastErrCode, align 8
  %87 = load i64, i64* @FETCH_PROTO, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load i64, i64* @fetchLastErrCode, align 8
  %91 = load i64, i64* @FETCH_UNAVAIL, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %129

94:                                               ; preds = %89, %85, %77, %74
  %95 = load i8*, i8** %8, align 8
  %96 = call i64 @strcmp(i8* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %100, align 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %104 = call i32 @ftp_disconnect(%struct.TYPE_7__* %103)
  store i32* inttoptr (i64 1 to i32*), i32** %6, align 8
  br label %132

105:                                              ; preds = %94
  %106 = load i8*, i8** %8, align 8
  %107 = call i64 @strcmp(i8* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = load i8*, i8** %8, align 8
  %111 = call i64 @strcmp(i8* %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %109, %105
  %114 = load i32, i32* @O_WRONLY, align 4
  store i32 %114, i32* %13, align 4
  br label %117

115:                                              ; preds = %109
  %116 = load i32, i32* @O_RDONLY, align 4
  store i32 %116, i32* %13, align 4
  br label %117

117:                                              ; preds = %115, %113
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = load %struct.url*, %struct.url** %7, align 8
  %121 = getelementptr inbounds %struct.url, %struct.url* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load %struct.url*, %struct.url** %7, align 8
  %125 = getelementptr inbounds %struct.url, %struct.url* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i8*, i8** %11, align 8
  %128 = call i32* @ftp_transfer(%struct.TYPE_7__* %118, i8* %119, i32 %122, i32 %123, i32 %126, i8* %127)
  store i32* %128, i32** %6, align 8
  br label %132

129:                                              ; preds = %93, %73
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %131 = call i32 @ftp_disconnect(%struct.TYPE_7__* %130)
  store i32* null, i32** %6, align 8
  br label %132

132:                                              ; preds = %129, %117, %98, %65, %44, %34
  %133 = load i32*, i32** %6, align 8
  ret i32* %133
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @http_request(%struct.url*, i8*, %struct.url_stat*, %struct.url*, i8*) #1

declare dso_local %struct.TYPE_7__* @ftp_cached_connect(%struct.url*, %struct.url*, i8*) #1

declare dso_local i32 @fetchFreeURL(%struct.url*) #1

declare dso_local i32 @ftp_cwd(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ftp_stat(%struct.TYPE_7__*, i32, %struct.url_stat*) #1

declare dso_local i32 @ftp_disconnect(%struct.TYPE_7__*) #1

declare dso_local i32* @ftp_transfer(%struct.TYPE_7__*, i8*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
