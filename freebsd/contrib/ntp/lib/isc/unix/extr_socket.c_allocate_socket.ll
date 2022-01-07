; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_socket.c_allocate_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_socket.c_allocate_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_10__, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32*, i32, i32, i32, i32*, i32, i32*, i64, i32, %struct.TYPE_11__*, i64 }
%struct.TYPE_10__ = type { i64, i64 }

@ISC_R_NOMEMORY = common dso_local global i64 0, align 8
@link = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@ISC_EVENTATTR_NOPURGE = common dso_local global i32 0, align 4
@ISC_SOCKEVENT_INTR = common dso_local global i32 0, align 4
@ISC_SOCKEVENT_INTW = common dso_local global i32 0, align 4
@ISCAPI_SOCKET_MAGIC = common dso_local global i64 0, align 8
@SOCKET_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, i32, %struct.TYPE_12__**)* @allocate_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @allocate_socket(%struct.TYPE_11__* %0, i32 %1, %struct.TYPE_12__** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__**, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_12__** %2, %struct.TYPE_12__*** %7, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @isc_mem_get(i32 %13, i32 200)
  %15 = bitcast i8* %14 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %8, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %17 = icmp eq %struct.TYPE_12__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i64, i64* @ISC_R_NOMEMORY, align 8
  store i64 %19, i64* %4, align 8
  br label %208

20:                                               ; preds = %3
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 26
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 25
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %31, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 24
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  store i32 -1, i32* %36, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 23
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 22
  store i32* null, i32** %40, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %42 = load i32, i32* @link, align 4
  %43 = call i32 @ISC_LINK_INIT(%struct.TYPE_12__* %41, i32 %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %45, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 3
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %47, align 8
  store i32 0, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %20
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i8* @isc_mem_get(i32 %58, i32 %59)
  %61 = bitcast i8* %60 to %struct.TYPE_12__*
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 4
  store %struct.TYPE_12__* %61, %struct.TYPE_12__** %63, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = icmp eq %struct.TYPE_12__* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %55
  %69 = load i64, i64* @ISC_R_NOMEMORY, align 8
  store i64 %69, i64* %9, align 8
  br label %169

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70, %20
  store i32 0, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %71
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i8* @isc_mem_get(i32 %82, i32 %83)
  %85 = bitcast i8* %84 to %struct.TYPE_12__*
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 3
  store %struct.TYPE_12__* %85, %struct.TYPE_12__** %87, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = icmp eq %struct.TYPE_12__* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %79
  %93 = load i64, i64* @ISC_R_NOMEMORY, align 8
  store i64 %93, i64* %9, align 8
  br label %169

94:                                               ; preds = %79
  br label %95

95:                                               ; preds = %94, %71
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 21
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @memset(i32 %98, i32 0, i32 4)
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 20
  store i32* null, i32** %101, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 19
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @ISC_LIST_INIT(i32 %104)
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 18
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ISC_LIST_INIT(i32 %108)
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 17
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @ISC_LIST_INIT(i32 %112)
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 16
  store i32* null, i32** %115, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 15
  store i64 0, i64* %117, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 14
  store i64 0, i64* %119, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 13
  store i64 0, i64* %121, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 12
  store i64 0, i64* %123, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 11
  store i64 0, i64* %125, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 10
  store i64 0, i64* %127, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 9
  store i64 0, i64* %129, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 8
  %132 = call i64 @isc_mutex_init(i32* %131)
  store i64 %132, i64* %9, align 8
  %133 = load i64, i64* %9, align 8
  %134 = load i64, i64* @ISC_R_SUCCESS, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %95
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  store i64 0, i64* %139, align 8
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  store i64 0, i64* %142, align 8
  br label %169

143:                                              ; preds = %95
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 7
  %146 = load i32, i32* @ISC_EVENTATTR_NOPURGE, align 4
  %147 = load i32, i32* @ISC_SOCKEVENT_INTR, align 4
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %150 = call i32 @ISC_EVENT_INIT(i32* %145, i32 4, i32 %146, i32* null, i32 %147, i32* null, %struct.TYPE_12__* %148, %struct.TYPE_12__* %149, i32* null, i32* null)
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 6
  %153 = load i32, i32* @ISC_EVENTATTR_NOPURGE, align 4
  %154 = load i32, i32* @ISC_SOCKEVENT_INTW, align 4
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %157 = call i32 @ISC_EVENT_INIT(i32* %152, i32 4, i32 %153, i32* null, i32 %154, i32* null, %struct.TYPE_12__* %155, %struct.TYPE_12__* %156, i32* null, i32* null)
  %158 = load i64, i64* @ISCAPI_SOCKET_MAGIC, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 1
  store i64 %158, i64* %161, align 8
  %162 = load i64, i64* @SOCKET_MAGIC, align 8
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 5
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  store i64 %162, i64* %165, align 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %167 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  store %struct.TYPE_12__* %166, %struct.TYPE_12__** %167, align 8
  %168 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %168, i64* %4, align 8
  br label %208

169:                                              ; preds = %136, %92, %68
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 4
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %171, align 8
  %173 = icmp ne %struct.TYPE_12__* %172, null
  br i1 %173, label %174, label %185

174:                                              ; preds = %169
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 4
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %179, align 8
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @isc_mem_put(i32 %177, %struct.TYPE_12__* %180, i32 %183)
  br label %185

185:                                              ; preds = %174, %169
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 3
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %187, align 8
  %189 = icmp ne %struct.TYPE_12__* %188, null
  br i1 %189, label %190, label %201

190:                                              ; preds = %185
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 3
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %195, align 8
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @isc_mem_put(i32 %193, %struct.TYPE_12__* %196, i32 %199)
  br label %201

201:                                              ; preds = %190, %185
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %206 = call i32 @isc_mem_put(i32 %204, %struct.TYPE_12__* %205, i32 200)
  %207 = load i64, i64* %9, align 8
  store i64 %207, i64* %4, align 8
  br label %208

208:                                              ; preds = %201, %143, %18
  %209 = load i64, i64* %4, align 8
  ret i64 %209
}

declare dso_local i8* @isc_mem_get(i32, i32) #1

declare dso_local i32 @ISC_LINK_INIT(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ISC_LIST_INIT(i32) #1

declare dso_local i64 @isc_mutex_init(i32*) #1

declare dso_local i32 @ISC_EVENT_INIT(i32*, i32, i32, i32*, i32, i32*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @isc_mem_put(i32, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
