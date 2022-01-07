; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_bench_http.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_bench_http.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_config = type { i32 }
%struct.event_base = type { i32 }
%struct.evhttp = type { i32 }

@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"-%c requires argument.\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Missing port\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Bad port\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Missing content length\0A\00", align 1
@content_len = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"Bad content length\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Illegal argument \22%c\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"creating event_base failed. Exiting.\0A\00", align 1
@content = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"Cannot allocate content\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"/ind\00", align 1
@http_basic_cb = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"/ind - basic content (memory copy)\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"/ref\00", align 1
@http_ref_cb = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [34 x i8] c"/ref - basic content (reference)\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"Serving %d bytes on port %d using %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"IOCP\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@EVENT_BASE_FLAG_STARTUP_IOCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.event_config*, align 8
  %7 = alloca %struct.event_base*, align 8
  %8 = alloca %struct.evhttp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = call %struct.event_config* (...) @event_config_new()
  store %struct.event_config* %15, %struct.event_config** %6, align 8
  store i32 0, i32* %11, align 4
  store i16 8080, i16* %12, align 2
  store i8* null, i8** %13, align 8
  %16 = load i32, i32* @SIGPIPE, align 4
  %17 = load i32, i32* @SIG_IGN, align 4
  %18 = call i64 @signal(i32 %16, i32 %17)
  %19 = load i64, i64* @SIG_ERR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %211

22:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %23

23:                                               ; preds = %142, %22
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %145

27:                                               ; preds = %23
  %28 = load i8**, i8*** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 45
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %142

37:                                               ; preds = %27
  %38 = load i8**, i8*** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 112
  br i1 %47, label %51, label %48

48:                                               ; preds = %37
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %49, 108
  br i1 %50, label %51, label %61

51:                                               ; preds = %48, %37
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  %54 = load i32, i32* %4, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i32, i32* @stderr, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = call i32 @exit(i32 1) #3
  unreachable

61:                                               ; preds = %51, %48
  %62 = load i32, i32* %10, align 4
  switch i32 %62, label %136 [
    i32 112, label %63
    i32 108, label %99
  ]

63:                                               ; preds = %61
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  %66 = load i32, i32* %4, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %63
  %69 = load i8**, i8*** %5, align 8
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %69, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %68, %63
  %77 = load i32, i32* @stderr, align 4
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %79 = call i32 @exit(i32 1) #3
  unreachable

80:                                               ; preds = %68
  %81 = load i8**, i8*** %5, align 8
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %81, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @strtol(i8* %86, i8** %13, i32 10)
  %88 = trunc i64 %87 to i32
  %89 = trunc i32 %88 to i16
  store i16 %89, i16* %12, align 2
  %90 = load i8*, i8** %13, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %80
  %95 = load i32, i32* @stderr, align 4
  %96 = call i32 (i32, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %97 = call i32 @exit(i32 1) #3
  unreachable

98:                                               ; preds = %80
  br label %141

99:                                               ; preds = %61
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  %102 = load i32, i32* %4, align 4
  %103 = icmp sge i32 %101, %102
  br i1 %103, label %112, label %104

104:                                              ; preds = %99
  %105 = load i8**, i8*** %5, align 8
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %105, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %116, label %112

112:                                              ; preds = %104, %99
  %113 = load i32, i32* @stderr, align 4
  %114 = call i32 (i32, i8*, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %115 = call i32 @exit(i32 1) #3
  unreachable

116:                                              ; preds = %104
  %117 = load i8**, i8*** %5, align 8
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %117, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = call i64 @strtol(i8* %122, i8** %13, i32 10)
  store i64 %123, i64* @content_len, align 8
  %124 = load i8*, i8** %13, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %116
  %129 = load i64, i64* @content_len, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %128, %116
  %132 = load i32, i32* @stderr, align 4
  %133 = call i32 (i32, i8*, ...) @fprintf(i32 %132, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %134 = call i32 @exit(i32 1) #3
  unreachable

135:                                              ; preds = %128
  br label %141

136:                                              ; preds = %61
  %137 = load i32, i32* @stderr, align 4
  %138 = load i32, i32* %10, align 4
  %139 = call i32 (i32, i8*, ...) @fprintf(i32 %137, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %138)
  %140 = call i32 @exit(i32 1) #3
  unreachable

141:                                              ; preds = %135, %98
  br label %142

142:                                              ; preds = %141, %36
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4
  br label %23

145:                                              ; preds = %23
  %146 = load %struct.event_config*, %struct.event_config** %6, align 8
  %147 = call %struct.event_base* @event_base_new_with_config(%struct.event_config* %146)
  store %struct.event_base* %147, %struct.event_base** %7, align 8
  %148 = load %struct.event_base*, %struct.event_base** %7, align 8
  %149 = icmp ne %struct.event_base* %148, null
  br i1 %149, label %153, label %150

150:                                              ; preds = %145
  %151 = load i32, i32* @stderr, align 4
  %152 = call i32 (i32, i8*, ...) @fprintf(i32 %151, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %211

153:                                              ; preds = %145
  %154 = load %struct.event_base*, %struct.event_base** %7, align 8
  %155 = call %struct.evhttp* @evhttp_new(%struct.event_base* %154)
  store %struct.evhttp* %155, %struct.evhttp** %8, align 8
  %156 = load i64, i64* @content_len, align 8
  %157 = call i32* @malloc(i64 %156)
  store i32* %157, i32** @content, align 8
  %158 = load i32*, i32** @content, align 8
  %159 = icmp eq i32* %158, null
  br i1 %159, label %160, label %164

160:                                              ; preds = %153
  %161 = load i32, i32* @stderr, align 4
  %162 = call i32 (i32, i8*, ...) @fprintf(i32 %161, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %163 = call i32 @exit(i32 1) #3
  unreachable

164:                                              ; preds = %153
  store i32 0, i32* %14, align 4
  store i32 0, i32* %14, align 4
  br label %165

165:                                              ; preds = %177, %164
  %166 = load i32, i32* %14, align 4
  %167 = load i64, i64* @content_len, align 8
  %168 = trunc i64 %167 to i32
  %169 = icmp slt i32 %166, %168
  br i1 %169, label %170, label %180

170:                                              ; preds = %165
  %171 = load i32, i32* %14, align 4
  %172 = and i32 %171, 255
  %173 = load i32*, i32** @content, align 8
  %174 = load i32, i32* %14, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 %172, i32* %176, align 4
  br label %177

177:                                              ; preds = %170
  %178 = load i32, i32* %14, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %14, align 4
  br label %165

180:                                              ; preds = %165
  br label %181

181:                                              ; preds = %180
  %182 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %183 = load i32, i32* @http_basic_cb, align 4
  %184 = call i32 @evhttp_set_cb(%struct.evhttp* %182, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %183, i32* null)
  %185 = load i32, i32* @stderr, align 4
  %186 = call i32 (i32, i8*, ...) @fprintf(i32 %185, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %187 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %188 = load i32, i32* @http_ref_cb, align 4
  %189 = call i32 @evhttp_set_cb(%struct.evhttp* %187, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %188, i32* null)
  %190 = load i32, i32* @stderr, align 4
  %191 = call i32 (i32, i8*, ...) @fprintf(i32 %190, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %192 = load i32, i32* @stderr, align 4
  %193 = load i64, i64* @content_len, align 8
  %194 = trunc i64 %193 to i32
  %195 = load i16, i16* %12, align 2
  %196 = zext i16 %195 to i32
  %197 = load i32, i32* %11, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %181
  br label %203

200:                                              ; preds = %181
  %201 = load %struct.event_base*, %struct.event_base** %7, align 8
  %202 = call i8* @event_base_get_method(%struct.event_base* %201)
  br label %203

203:                                              ; preds = %200, %199
  %204 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), %199 ], [ %202, %200 ]
  %205 = call i32 (i32, i8*, ...) @fprintf(i32 %192, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i32 %194, i32 %196, i8* %204)
  %206 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %207 = load i16, i16* %12, align 2
  %208 = call i32 @evhttp_bind_socket(%struct.evhttp* %206, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i16 zeroext %207)
  %209 = load %struct.event_base*, %struct.event_base** %7, align 8
  %210 = call i32 @event_base_dispatch(%struct.event_base* %209)
  store i32 0, i32* %3, align 4
  br label %211

211:                                              ; preds = %203, %150, %21
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local %struct.event_config* @event_config_new(...) #1

declare dso_local i64 @signal(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local %struct.event_base* @event_base_new_with_config(%struct.event_config*) #1

declare dso_local %struct.evhttp* @evhttp_new(%struct.event_base*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @evhttp_set_cb(%struct.evhttp*, i8*, i32, i32*) #1

declare dso_local i8* @event_base_get_method(%struct.event_base*) #1

declare dso_local i32 @evhttp_bind_socket(%struct.evhttp*, i8*, i16 zeroext) #1

declare dso_local i32 @event_base_dispatch(%struct.event_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
