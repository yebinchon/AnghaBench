; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/extr_context.c_serf_event_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/extr_context.c_serf_event_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 (i32, %struct.TYPE_17__*, i32*)* }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_12__, i8*, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32*, i32*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32, i32, i32, i64, %struct.TYPE_15__* }

@APR_SUCCESS = common dso_local global i64 0, align 8
@SERF_IO_CONN = common dso_local global i64 0, align 8
@APR_POLL_SOCKET = common dso_local global i8* null, align 8
@APR_POLLHUP = common dso_local global i32 0, align 4
@SERF_IO_LISTENER = common dso_local global i64 0, align 8
@SERF_IO_CLIENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @serf_event_trigger(%struct.TYPE_15__* %0, i8* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  %15 = bitcast %struct.TYPE_17__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 32, i1 false)
  %16 = load i64, i64* @APR_SUCCESS, align 8
  store i64 %16, i64* %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %10, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SERF_IO_CONN, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %126

24:                                               ; preds = %3
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %11, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 5
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  store %struct.TYPE_15__* %31, %struct.TYPE_15__** %12, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %24
  %37 = load i8*, i8** @APR_POLL_SOCKET, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 3
  store i8* %37, i8** %38, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = load i32 (i32, %struct.TYPE_17__*, i32*)*, i32 (i32, %struct.TYPE_17__*, i32*)** %49, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 2
  %56 = call i32 %50(i32 %53, %struct.TYPE_17__* %8, i32* %55)
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %4, align 8
  br label %169

60:                                               ; preds = %24
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %60
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @APR_POLLHUP, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69, %60
  %77 = load i64, i64* @APR_SUCCESS, align 8
  store i64 %77, i64* %4, align 8
  br label %169

78:                                               ; preds = %69
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @serf__process_connection(%struct.TYPE_16__* %86, i32 %89)
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load i64, i64* @APR_SUCCESS, align 8
  %94 = icmp ne i64 %90, %93
  br i1 %94, label %95, label %125

95:                                               ; preds = %78
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %121

100:                                              ; preds = %95
  %101 = load i8*, i8** @APR_POLL_SOCKET, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 3
  store i8* %101, i8** %102, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  store i32 %110, i32* %111, align 4
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = load i32 (i32, %struct.TYPE_17__*, i32*)*, i32 (i32, %struct.TYPE_17__*, i32*)** %113, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 2
  %120 = call i32 %114(i32 %117, %struct.TYPE_17__* %8, i32* %119)
  br label %121

121:                                              ; preds = %100, %95
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %4, align 8
  br label %169

125:                                              ; preds = %78
  br label %167

126:                                              ; preds = %3
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @SERF_IO_LISTENER, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %144

132:                                              ; preds = %126
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  store i32* %136, i32** %13, align 8
  %137 = load i32*, i32** %13, align 8
  %138 = call i64 @serf__process_listener(i32* %137)
  store i64 %138, i64* %9, align 8
  %139 = load i64, i64* %9, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %132
  %142 = load i64, i64* %9, align 8
  store i64 %142, i64* %4, align 8
  br label %169

143:                                              ; preds = %132
  br label %166

144:                                              ; preds = %126
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @SERF_IO_CLIENT, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %165

150:                                              ; preds = %144
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  store i32* %154, i32** %14, align 8
  %155 = load i32*, i32** %14, align 8
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i64 @serf__process_client(i32* %155, i32 %158)
  store i64 %159, i64* %9, align 8
  %160 = load i64, i64* %9, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %150
  %163 = load i64, i64* %9, align 8
  store i64 %163, i64* %4, align 8
  br label %169

164:                                              ; preds = %150
  br label %165

165:                                              ; preds = %164, %144
  br label %166

166:                                              ; preds = %165, %143
  br label %167

167:                                              ; preds = %166, %125
  %168 = load i64, i64* %9, align 8
  store i64 %168, i64* %4, align 8
  br label %169

169:                                              ; preds = %167, %162, %141, %121, %76, %36
  %170 = load i64, i64* %4, align 8
  ret i64 %170
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @serf__process_connection(%struct.TYPE_16__*, i32) #2

declare dso_local i64 @serf__process_listener(i32*) #2

declare dso_local i64 @serf__process_client(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
