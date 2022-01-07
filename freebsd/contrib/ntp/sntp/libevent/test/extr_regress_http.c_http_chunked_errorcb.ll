; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_chunked_errorcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_chunked_errorcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.evhttp_request = type { i32 }

@test_ok = common dso_local global i32 0, align 4
@BEV_EVENT_EOF = common dso_local global i16 0, align 2
@ALL_DATA_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Transfer-Encoding\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"chunked\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@EVBUFFER_EOL_CRLF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"This is funny\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"12\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"but not hilarious.\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"bwv 1052.\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i16, i8*)* @http_chunked_errorcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_chunked_errorcb(%struct.bufferevent* %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.evhttp_request*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.bufferevent* %0, %struct.bufferevent** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  store %struct.evhttp_request* null, %struct.evhttp_request** %7, align 8
  %10 = load i32, i32* @test_ok, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %162

13:                                               ; preds = %3
  store i32 -1, i32* @test_ok, align 4
  %14 = load i16, i16* %5, align 2
  %15 = sext i16 %14 to i32
  %16 = load i16, i16* @BEV_EVENT_EOF, align 2
  %17 = sext i16 %16 to i32
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %161

20:                                               ; preds = %13
  %21 = call %struct.evhttp_request* @evhttp_request_new(i32* null, i32* null)
  store %struct.evhttp_request* %21, %struct.evhttp_request** %7, align 8
  %22 = load %struct.evhttp_request*, %struct.evhttp_request** %7, align 8
  %23 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %24 = call i32 @bufferevent_get_input(%struct.bufferevent* %23)
  %25 = call i32 @evhttp_parse_firstline_(%struct.evhttp_request* %22, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @ALL_DATA_READ, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %162

30:                                               ; preds = %20
  %31 = load %struct.evhttp_request*, %struct.evhttp_request** %7, align 8
  %32 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %33 = call i32 @bufferevent_get_input(%struct.bufferevent* %32)
  %34 = call i32 @evhttp_parse_headers_(%struct.evhttp_request* %31, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @ALL_DATA_READ, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %162

39:                                               ; preds = %30
  %40 = load %struct.evhttp_request*, %struct.evhttp_request** %7, align 8
  %41 = call i32 @evhttp_request_get_input_headers(%struct.evhttp_request* %40)
  %42 = call i8* @evhttp_find_header(i32 %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* %42, i8** %8, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = load i8*, i8** %8, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %39
  br label %162

50:                                               ; preds = %45
  %51 = load %struct.evhttp_request*, %struct.evhttp_request** %7, align 8
  %52 = call i32 @evhttp_request_get_input_headers(%struct.evhttp_request* %51)
  %53 = call i8* @evhttp_find_header(i32 %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i8* %53, i8** %8, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = load i8*, i8** %8, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56, %50
  br label %162

61:                                               ; preds = %56
  %62 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %63 = call i32 @bufferevent_get_input(%struct.bufferevent* %62)
  %64 = load i32, i32* @EVBUFFER_EOL_CRLF, align 4
  %65 = call i8* @evbuffer_readln(i32 %63, i32* null, i32 %64)
  store i8* %65, i8** %8, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %162

69:                                               ; preds = %61
  %70 = load i8*, i8** %8, align 8
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @free(i8* %74)
  br label %162

76:                                               ; preds = %69
  %77 = load i8*, i8** %8, align 8
  %78 = call i32 @free(i8* %77)
  %79 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %80 = call i32 @bufferevent_get_input(%struct.bufferevent* %79)
  %81 = call i64 @evbuffer_pullup(i32 %80, i32 13)
  %82 = inttoptr i64 %81 to i8*
  %83 = call i64 @strncmp(i8* %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 13)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %162

86:                                               ; preds = %76
  %87 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %88 = call i32 @bufferevent_get_input(%struct.bufferevent* %87)
  %89 = call i32 @evbuffer_drain(i32 %88, i32 15)
  %90 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %91 = call i32 @bufferevent_get_input(%struct.bufferevent* %90)
  %92 = load i32, i32* @EVBUFFER_EOL_CRLF, align 4
  %93 = call i8* @evbuffer_readln(i32 %91, i32* null, i32 %92)
  store i8* %93, i8** %8, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  br label %162

97:                                               ; preds = %86
  %98 = load i8*, i8** %8, align 8
  %99 = call i64 @strcmp(i8* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  br label %162

102:                                              ; preds = %97
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 @free(i8* %103)
  %105 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %106 = call i32 @bufferevent_get_input(%struct.bufferevent* %105)
  %107 = call i64 @evbuffer_pullup(i32 %106, i32 18)
  %108 = inttoptr i64 %107 to i8*
  %109 = call i64 @strncmp(i8* %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 18)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  br label %162

112:                                              ; preds = %102
  %113 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %114 = call i32 @bufferevent_get_input(%struct.bufferevent* %113)
  %115 = call i32 @evbuffer_drain(i32 %114, i32 20)
  %116 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %117 = call i32 @bufferevent_get_input(%struct.bufferevent* %116)
  %118 = load i32, i32* @EVBUFFER_EOL_CRLF, align 4
  %119 = call i8* @evbuffer_readln(i32 %117, i32* null, i32 %118)
  store i8* %119, i8** %8, align 8
  %120 = load i8*, i8** %8, align 8
  %121 = icmp eq i8* %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  br label %162

123:                                              ; preds = %112
  %124 = load i8*, i8** %8, align 8
  %125 = call i64 @strcmp(i8* %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i8*, i8** %8, align 8
  %129 = call i32 @free(i8* %128)
  br label %162

130:                                              ; preds = %123
  %131 = load i8*, i8** %8, align 8
  %132 = call i32 @free(i8* %131)
  %133 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %134 = call i32 @bufferevent_get_input(%struct.bufferevent* %133)
  %135 = call i64 @evbuffer_pullup(i32 %134, i32 8)
  %136 = inttoptr i64 %135 to i8*
  %137 = call i64 @strncmp(i8* %136, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 8)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  br label %162

140:                                              ; preds = %130
  %141 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %142 = call i32 @bufferevent_get_input(%struct.bufferevent* %141)
  %143 = call i32 @evbuffer_drain(i32 %142, i32 10)
  %144 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %145 = call i32 @bufferevent_get_input(%struct.bufferevent* %144)
  %146 = load i32, i32* @EVBUFFER_EOL_CRLF, align 4
  %147 = call i8* @evbuffer_readln(i32 %145, i32* null, i32 %146)
  store i8* %147, i8** %8, align 8
  %148 = load i8*, i8** %8, align 8
  %149 = icmp eq i8* %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %140
  br label %162

151:                                              ; preds = %140
  %152 = load i8*, i8** %8, align 8
  %153 = call i64 @strcmp(i8* %152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = load i8*, i8** %8, align 8
  %157 = call i32 @free(i8* %156)
  br label %162

158:                                              ; preds = %151
  %159 = load i8*, i8** %8, align 8
  %160 = call i32 @free(i8* %159)
  store i32 2, i32* @test_ok, align 4
  br label %161

161:                                              ; preds = %158, %13
  br label %162

162:                                              ; preds = %161, %155, %150, %139, %127, %122, %111, %101, %96, %85, %73, %68, %60, %49, %38, %29, %12
  %163 = load %struct.evhttp_request*, %struct.evhttp_request** %7, align 8
  %164 = icmp ne %struct.evhttp_request* %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load %struct.evhttp_request*, %struct.evhttp_request** %7, align 8
  %167 = call i32 @evhttp_request_free(%struct.evhttp_request* %166)
  br label %168

168:                                              ; preds = %165, %162
  %169 = load i8*, i8** %6, align 8
  %170 = call i32 @event_base_loopexit(i8* %169, i32* null)
  ret void
}

declare dso_local %struct.evhttp_request* @evhttp_request_new(i32*, i32*) #1

declare dso_local i32 @evhttp_parse_firstline_(%struct.evhttp_request*, i32) #1

declare dso_local i32 @bufferevent_get_input(%struct.bufferevent*) #1

declare dso_local i32 @evhttp_parse_headers_(%struct.evhttp_request*, i32) #1

declare dso_local i8* @evhttp_find_header(i32, i8*) #1

declare dso_local i32 @evhttp_request_get_input_headers(%struct.evhttp_request*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @evbuffer_readln(i32, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @evbuffer_pullup(i32, i32) #1

declare dso_local i32 @evbuffer_drain(i32, i32) #1

declare dso_local i32 @evhttp_request_free(%struct.evhttp_request*) #1

declare dso_local i32 @event_base_loopexit(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
