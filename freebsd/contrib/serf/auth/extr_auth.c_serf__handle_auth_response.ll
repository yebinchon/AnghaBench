; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/auth/extr_auth.c_serf__handle_auth_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/auth/extr_auth.c_serf__handle_auth_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_19__*, i32, i32, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 (%struct.TYPE_20__*, i32, i32, %struct.TYPE_19__*, %struct.TYPE_17__*, i32*, i32*)* }
%struct.TYPE_16__ = type { i32, i32 }

@APR_SUCCESS = common dso_local global i64 0, align 8
@APR_EOF = common dso_local global i64 0, align 8
@HOST = common dso_local global i32 0, align 4
@PROXY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @serf__handle_auth_response(i32* %0, %struct.TYPE_17__* %1, i32* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_16__, align 4
  %14 = alloca i64 (%struct.TYPE_20__*, i32, i32, %struct.TYPE_19__*, %struct.TYPE_17__*, i32*, i32*)*, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca %struct.TYPE_21__*, align 8
  %18 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i32*, i32** %7, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = call i64 @serf_bucket_response_status(i32* %20, %struct.TYPE_16__* %13)
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* %12, align 8
  %23 = call i64 @SERF_BUCKET_READ_ERROR(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i64, i64* %12, align 8
  store i64 %26, i64* %6, align 8
  br label %190

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %12, align 8
  %33 = call i64 @APR_STATUS_IS_EOF(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %12, align 8
  %37 = call i64 @APR_STATUS_IS_EAGAIN(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %31
  %40 = load i64, i64* %12, align 8
  store i64 %40, i64* %6, align 8
  br label %190

41:                                               ; preds = %35, %27
  %42 = load i32*, i32** %9, align 8
  %43 = call i64 @serf_bucket_response_wait_for_headers(i32* %42)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load i64, i64* %12, align 8
  %48 = call i64 @APR_STATUS_IS_EOF(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %12, align 8
  store i64 %51, i64* %6, align 8
  br label %190

52:                                               ; preds = %46
  %53 = load i64, i64* @APR_SUCCESS, align 8
  store i64 %53, i64* %6, align 8
  br label %190

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 401
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 407
  br i1 %61, label %62, label %113

62:                                               ; preds = %58, %54
  %63 = load i32*, i32** %9, align 8
  %64 = call i64 @discard_body(i32* %63)
  store i64 %64, i64* %12, align 8
  %65 = load i32*, i32** %7, align 8
  store i32 1, i32* %65, align 4
  %66 = load i64, i64* %12, align 8
  %67 = call i64 @APR_STATUS_IS_EOF(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %62
  %70 = load i64, i64* %12, align 8
  store i64 %70, i64* %6, align 8
  br label %190

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = call i64 @dispatch_auth(i32 %73, %struct.TYPE_17__* %74, i32* %75, i8* %76, i32* %77)
  store i64 %78, i64* %12, align 8
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* @APR_SUCCESS, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = load i64, i64* %12, align 8
  store i64 %83, i64* %6, align 8
  br label %190

84:                                               ; preds = %71
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %84
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %91, align 8
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @serf__ssltunnel_request_create(%struct.TYPE_19__* %92, i32 %95, i32 %98)
  br label %111

100:                                              ; preds = %84
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %102, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @serf_connection_priority_request_create(%struct.TYPE_19__* %103, i32 %106, i32 %109)
  br label %111

111:                                              ; preds = %100, %89
  %112 = load i64, i64* @APR_EOF, align 8
  store i64 %112, i64* %6, align 8
  br label %190

113:                                              ; preds = %58
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %115, align 8
  store %struct.TYPE_19__* %116, %struct.TYPE_19__** %15, align 8
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %118, align 8
  store %struct.TYPE_18__* %119, %struct.TYPE_18__** %16, align 8
  %120 = load i64, i64* @APR_SUCCESS, align 8
  store i64 %120, i64* %18, align 8
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %122 = call %struct.TYPE_21__* @serf__get_authn_info_for_server(%struct.TYPE_19__* %121)
  store %struct.TYPE_21__* %122, %struct.TYPE_21__** %17, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %124, align 8
  %126 = icmp ne %struct.TYPE_20__* %125, null
  br i1 %126, label %127, label %145

127:                                              ; preds = %113
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 0
  %132 = load i64 (%struct.TYPE_20__*, i32, i32, %struct.TYPE_19__*, %struct.TYPE_17__*, i32*, i32*)*, i64 (%struct.TYPE_20__*, i32, i32, %struct.TYPE_19__*, %struct.TYPE_17__*, i32*, i32*)** %131, align 8
  store i64 (%struct.TYPE_20__*, i32, i32, %struct.TYPE_19__*, %struct.TYPE_17__*, i32*, i32*)* %132, i64 (%struct.TYPE_20__*, i32, i32, %struct.TYPE_19__*, %struct.TYPE_17__*, i32*, i32*)** %14, align 8
  %133 = load i64 (%struct.TYPE_20__*, i32, i32, %struct.TYPE_19__*, %struct.TYPE_17__*, i32*, i32*)*, i64 (%struct.TYPE_20__*, i32, i32, %struct.TYPE_19__*, %struct.TYPE_17__*, i32*, i32*)** %14, align 8
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %135, align 8
  %137 = load i32, i32* @HOST, align 4
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %142 = load i32*, i32** %9, align 8
  %143 = load i32*, i32** %11, align 8
  %144 = call i64 %133(%struct.TYPE_20__* %136, i32 %137, i32 %139, %struct.TYPE_19__* %140, %struct.TYPE_17__* %141, i32* %142, i32* %143)
  store i64 %144, i64* %18, align 8
  br label %145

145:                                              ; preds = %127, %113
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  store %struct.TYPE_21__* %147, %struct.TYPE_21__** %17, align 8
  %148 = load i64, i64* %18, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %173, label %150

150:                                              ; preds = %145
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %152, align 8
  %154 = icmp ne %struct.TYPE_20__* %153, null
  br i1 %154, label %155, label %173

155:                                              ; preds = %150
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 0
  %160 = load i64 (%struct.TYPE_20__*, i32, i32, %struct.TYPE_19__*, %struct.TYPE_17__*, i32*, i32*)*, i64 (%struct.TYPE_20__*, i32, i32, %struct.TYPE_19__*, %struct.TYPE_17__*, i32*, i32*)** %159, align 8
  store i64 (%struct.TYPE_20__*, i32, i32, %struct.TYPE_19__*, %struct.TYPE_17__*, i32*, i32*)* %160, i64 (%struct.TYPE_20__*, i32, i32, %struct.TYPE_19__*, %struct.TYPE_17__*, i32*, i32*)** %14, align 8
  %161 = load i64 (%struct.TYPE_20__*, i32, i32, %struct.TYPE_19__*, %struct.TYPE_17__*, i32*, i32*)*, i64 (%struct.TYPE_20__*, i32, i32, %struct.TYPE_19__*, %struct.TYPE_17__*, i32*, i32*)** %14, align 8
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %163, align 8
  %165 = load i32, i32* @PROXY, align 4
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %170 = load i32*, i32** %9, align 8
  %171 = load i32*, i32** %11, align 8
  %172 = call i64 %161(%struct.TYPE_20__* %164, i32 %165, i32 %167, %struct.TYPE_19__* %168, %struct.TYPE_17__* %169, i32* %170, i32* %171)
  store i64 %172, i64* %18, align 8
  br label %173

173:                                              ; preds = %155, %150, %145
  %174 = load i64, i64* %18, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %187

176:                                              ; preds = %173
  %177 = load i32*, i32** %9, align 8
  %178 = call i64 @discard_body(i32* %177)
  store i64 %178, i64* %12, align 8
  %179 = load i32*, i32** %7, align 8
  store i32 1, i32* %179, align 4
  %180 = load i64, i64* %12, align 8
  %181 = call i64 @APR_STATUS_IS_EOF(i64 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %185, label %183

183:                                              ; preds = %176
  %184 = load i64, i64* %12, align 8
  store i64 %184, i64* %6, align 8
  br label %190

185:                                              ; preds = %176
  %186 = load i64, i64* %18, align 8
  store i64 %186, i64* %6, align 8
  br label %190

187:                                              ; preds = %173
  br label %188

188:                                              ; preds = %187
  %189 = load i64, i64* @APR_SUCCESS, align 8
  store i64 %189, i64* %6, align 8
  br label %190

190:                                              ; preds = %188, %185, %183, %111, %82, %69, %52, %50, %39, %25
  %191 = load i64, i64* %6, align 8
  ret i64 %191
}

declare dso_local i64 @serf_bucket_response_status(i32*, %struct.TYPE_16__*) #1

declare dso_local i64 @SERF_BUCKET_READ_ERROR(i64) #1

declare dso_local i64 @APR_STATUS_IS_EOF(i64) #1

declare dso_local i64 @APR_STATUS_IS_EAGAIN(i64) #1

declare dso_local i64 @serf_bucket_response_wait_for_headers(i32*) #1

declare dso_local i64 @discard_body(i32*) #1

declare dso_local i64 @dispatch_auth(i32, %struct.TYPE_17__*, i32*, i8*, i32*) #1

declare dso_local i32 @serf__ssltunnel_request_create(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @serf_connection_priority_request_create(%struct.TYPE_19__*, i32, i32) #1

declare dso_local %struct.TYPE_21__* @serf__get_authn_info_for_server(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
