; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_bench_http.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_bench_http.c_main.c"
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
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = call %struct.event_config* (...) @event_config_new()
  store %struct.event_config* %15, %struct.event_config** %6, align 8
  store i32 0, i32* %11, align 4
  store i32 8080, i32* %12, align 4
  store i8* null, i8** %13, align 8
  %16 = load i32, i32* @SIGPIPE, align 4
  %17 = load i32, i32* @SIG_IGN, align 4
  %18 = call i64 @signal(i32 %16, i32 %17)
  %19 = load i64, i64* @SIG_ERR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %209

22:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %23

23:                                               ; preds = %141, %22
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %144

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
  br label %141

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
  switch i32 %62, label %135 [
    i32 112, label %63
    i32 108, label %98
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
  store i32 %88, i32* %12, align 4
  %89 = load i8*, i8** %13, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %80
  %94 = load i32, i32* @stderr, align 4
  %95 = call i32 (i32, i8*, ...) @fprintf(i32 %94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %96 = call i32 @exit(i32 1) #3
  unreachable

97:                                               ; preds = %80
  br label %140

98:                                               ; preds = %61
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  %101 = load i32, i32* %4, align 4
  %102 = icmp sge i32 %100, %101
  br i1 %102, label %111, label %103

103:                                              ; preds = %98
  %104 = load i8**, i8*** %5, align 8
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %104, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %115, label %111

111:                                              ; preds = %103, %98
  %112 = load i32, i32* @stderr, align 4
  %113 = call i32 (i32, i8*, ...) @fprintf(i32 %112, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %114 = call i32 @exit(i32 1) #3
  unreachable

115:                                              ; preds = %103
  %116 = load i8**, i8*** %5, align 8
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %116, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @strtol(i8* %121, i8** %13, i32 10)
  store i64 %122, i64* @content_len, align 8
  %123 = load i8*, i8** %13, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %115
  %128 = load i64, i64* @content_len, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %127, %115
  %131 = load i32, i32* @stderr, align 4
  %132 = call i32 (i32, i8*, ...) @fprintf(i32 %131, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %133 = call i32 @exit(i32 1) #3
  unreachable

134:                                              ; preds = %127
  br label %140

135:                                              ; preds = %61
  %136 = load i32, i32* @stderr, align 4
  %137 = load i32, i32* %10, align 4
  %138 = call i32 (i32, i8*, ...) @fprintf(i32 %136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %137)
  %139 = call i32 @exit(i32 1) #3
  unreachable

140:                                              ; preds = %134, %97
  br label %141

141:                                              ; preds = %140, %36
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %23

144:                                              ; preds = %23
  %145 = load %struct.event_config*, %struct.event_config** %6, align 8
  %146 = call %struct.event_base* @event_base_new_with_config(%struct.event_config* %145)
  store %struct.event_base* %146, %struct.event_base** %7, align 8
  %147 = load %struct.event_base*, %struct.event_base** %7, align 8
  %148 = icmp ne %struct.event_base* %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %144
  %150 = load i32, i32* @stderr, align 4
  %151 = call i32 (i32, i8*, ...) @fprintf(i32 %150, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %209

152:                                              ; preds = %144
  %153 = load %struct.event_base*, %struct.event_base** %7, align 8
  %154 = call %struct.evhttp* @evhttp_new(%struct.event_base* %153)
  store %struct.evhttp* %154, %struct.evhttp** %8, align 8
  %155 = load i64, i64* @content_len, align 8
  %156 = call i32* @malloc(i64 %155)
  store i32* %156, i32** @content, align 8
  %157 = load i32*, i32** @content, align 8
  %158 = icmp eq i32* %157, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %152
  %160 = load i32, i32* @stderr, align 4
  %161 = call i32 (i32, i8*, ...) @fprintf(i32 %160, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %162 = call i32 @exit(i32 1) #3
  unreachable

163:                                              ; preds = %152
  store i32 0, i32* %14, align 4
  store i32 0, i32* %14, align 4
  br label %164

164:                                              ; preds = %176, %163
  %165 = load i32, i32* %14, align 4
  %166 = load i64, i64* @content_len, align 8
  %167 = trunc i64 %166 to i32
  %168 = icmp slt i32 %165, %167
  br i1 %168, label %169, label %179

169:                                              ; preds = %164
  %170 = load i32, i32* %14, align 4
  %171 = and i32 %170, 255
  %172 = load i32*, i32** @content, align 8
  %173 = load i32, i32* %14, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  store i32 %171, i32* %175, align 4
  br label %176

176:                                              ; preds = %169
  %177 = load i32, i32* %14, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %14, align 4
  br label %164

179:                                              ; preds = %164
  br label %180

180:                                              ; preds = %179
  %181 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %182 = load i32, i32* @http_basic_cb, align 4
  %183 = call i32 @evhttp_set_cb(%struct.evhttp* %181, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %182, i32* null)
  %184 = load i32, i32* @stderr, align 4
  %185 = call i32 (i32, i8*, ...) @fprintf(i32 %184, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %186 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %187 = load i32, i32* @http_ref_cb, align 4
  %188 = call i32 @evhttp_set_cb(%struct.evhttp* %186, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %187, i32* null)
  %189 = load i32, i32* @stderr, align 4
  %190 = call i32 (i32, i8*, ...) @fprintf(i32 %189, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %191 = load i32, i32* @stderr, align 4
  %192 = load i64, i64* @content_len, align 8
  %193 = trunc i64 %192 to i32
  %194 = load i32, i32* %12, align 4
  %195 = load i32, i32* %11, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %180
  br label %201

198:                                              ; preds = %180
  %199 = load %struct.event_base*, %struct.event_base** %7, align 8
  %200 = call i8* @event_base_get_method(%struct.event_base* %199)
  br label %201

201:                                              ; preds = %198, %197
  %202 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), %197 ], [ %200, %198 ]
  %203 = call i32 (i32, i8*, ...) @fprintf(i32 %191, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i32 %193, i32 %194, i8* %202)
  %204 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %205 = load i32, i32* %12, align 4
  %206 = call i32 @evhttp_bind_socket(%struct.evhttp* %204, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %205)
  %207 = load %struct.event_base*, %struct.event_base** %7, align 8
  %208 = call i32 @event_base_dispatch(%struct.event_base* %207)
  store i32 0, i32* %3, align 4
  br label %209

209:                                              ; preds = %201, %149, %21
  %210 = load i32, i32* %3, align 4
  ret i32 %210
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

declare dso_local i32 @evhttp_bind_socket(%struct.evhttp*, i8*, i32) #1

declare dso_local i32 @event_base_dispatch(%struct.event_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
