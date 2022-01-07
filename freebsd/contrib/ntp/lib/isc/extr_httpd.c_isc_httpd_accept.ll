; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_httpd.c_isc_httpd_accept.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_httpd.c_isc_httpd_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32 (i32*, i32)* }
%struct.TYPE_22__ = type { i32, i32, i64, i32, i32, i32*, i32, i64, %struct.TYPE_21__* }
%struct.TYPE_20__ = type { i8*, i64 }
%struct.TYPE_19__ = type { i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"accept shutting down, goto out\00", align 1
@ISC_R_CANCELED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"accept canceled, goto out\00", align 1
@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"accept returned failure, goto requeue\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"accept failed to allocate memory, goto requeue\00", align 1
@link = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"httpd\00", align 1
@HTTP_SENDGROW = common dso_local global i32 0, align 4
@HTTP_RECVLEN = common dso_local global i64 0, align 8
@isc_httpd_recvdone = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"accept queued recv on socket\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"accept could not reaccept due to failure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_23__*)* @isc_httpd_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isc_httpd_accept(i32* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_20__, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  store %struct.TYPE_21__* %13, %struct.TYPE_21__** %6, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %15 = bitcast %struct.TYPE_23__* %14 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %9, align 8
  %16 = call i32 @ENTER(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %19 = call i32 @LOCK(i32* %18)
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %21 = call i64 @MSHUTTINGDOWN(%struct.TYPE_21__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = call i32 @NOTICE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %176

25:                                               ; preds = %2
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ISC_R_CANCELED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 @NOTICE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %176

33:                                               ; preds = %25
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ISC_R_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = call i32 @NOTICE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %163

41:                                               ; preds = %33
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @isc_socket_getpeername(i32 %44, i32* %10)
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 5
  %48 = load i32 (i32*, i32)*, i32 (i32*, i32)** %47, align 8
  %49 = icmp ne i32 (i32*, i32)* %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %41
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 5
  %53 = load i32 (i32*, i32)*, i32 (i32*, i32)** %52, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i32 %53(i32* %10, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %50
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 1
  %62 = call i32 @isc_socket_detach(i32* %61)
  br label %163

63:                                               ; preds = %50, %41
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i8* @isc_mem_get(i32 %66, i32 56)
  %68 = bitcast i8* %67 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %68, %struct.TYPE_22__** %7, align 8
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %70 = icmp eq %struct.TYPE_22__* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = call i32 @NOTICE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 1
  %75 = call i32 @isc_socket_detach(i32* %74)
  br label %163

76:                                               ; preds = %63
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 8
  store %struct.TYPE_21__* %77, %struct.TYPE_21__** %79, align 8
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %81 = load i32, i32* @link, align 4
  %82 = call i32 @ISC_LINK_INIT(%struct.TYPE_22__* %80, i32 %81)
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %87 = load i32, i32* @link, align 4
  %88 = call i32 @ISC_LIST_APPEND(i32 %85, %struct.TYPE_22__* %86, i32 %87)
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %90 = call i32 @ISC_HTTPD_SETRECV(%struct.TYPE_22__* %89)
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @isc_socket_setname(i32 %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* null)
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 7
  store i64 0, i64* %101, align 8
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @HTTP_SENDGROW, align 4
  %106 = call i8* @isc_mem_get(i32 %104, i32 %105)
  %107 = bitcast i8* %106 to i32*
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 5
  store i32* %107, i32** %109, align 8
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 5
  %112 = load i32*, i32** %111, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %123

114:                                              ; preds = %76
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %119 = call i32 @isc_mem_put(i32 %117, %struct.TYPE_22__* %118, i32 56)
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 1
  %122 = call i32 @isc_socket_detach(i32* %121)
  br label %163

123:                                              ; preds = %76
  %124 = load i32, i32* @HTTP_SENDGROW, align 4
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 6
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 5
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @isc_buffer_init(i32* %128, i32* %131, i32 %134)
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @ISC_LIST_INIT(i32 %138)
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 3
  %142 = call i32 @isc_buffer_initnull(i32* %141)
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %144 = call i32 @reset_client(%struct.TYPE_22__* %143)
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = inttoptr i64 %147 to i8*
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  store i8* %148, i8** %149, align 8
  %150 = load i64, i64* @HTTP_RECVLEN, align 8
  %151 = sub nsw i64 %150, 1
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  store i64 %151, i64* %152, align 8
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %3, align 8
  %157 = load i32, i32* @isc_httpd_recvdone, align 4
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %159 = call i64 @isc_socket_recv(i32 %155, %struct.TYPE_20__* %8, i32 1, i32* %156, i32 %157, %struct.TYPE_22__* %158)
  store i64 %159, i64* %5, align 8
  %160 = load i64, i64* %5, align 8
  %161 = call i32 @POST(i64 %160)
  %162 = call i32 @NOTICE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %163

163:                                              ; preds = %123, %114, %71, %59, %39
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %3, align 8
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %169 = call i64 @isc_socket_accept(i32 %166, i32* %167, void (i32*, %struct.TYPE_23__*)* @isc_httpd_accept, %struct.TYPE_21__* %168)
  store i64 %169, i64* %5, align 8
  %170 = load i64, i64* %5, align 8
  %171 = load i64, i64* @ISC_R_SUCCESS, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %163
  %174 = call i32 @NOTICE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %175

175:                                              ; preds = %173, %163
  br label %176

176:                                              ; preds = %175, %31, %23
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 0
  %179 = call i32 @UNLOCK(i32* %178)
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %181 = call i32 @httpdmgr_destroy(%struct.TYPE_21__* %180)
  %182 = call i32 @isc_event_free(%struct.TYPE_23__** %4)
  %183 = call i32 @EXIT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ENTER(i8*) #1

declare dso_local i32 @LOCK(i32*) #1

declare dso_local i64 @MSHUTTINGDOWN(%struct.TYPE_21__*) #1

declare dso_local i32 @NOTICE(i8*) #1

declare dso_local i32 @isc_socket_getpeername(i32, i32*) #1

declare dso_local i32 @isc_socket_detach(i32*) #1

declare dso_local i8* @isc_mem_get(i32, i32) #1

declare dso_local i32 @ISC_LINK_INIT(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ISC_LIST_APPEND(i32, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @ISC_HTTPD_SETRECV(%struct.TYPE_22__*) #1

declare dso_local i32 @isc_socket_setname(i32, i8*, i32*) #1

declare dso_local i32 @isc_mem_put(i32, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @isc_buffer_init(i32*, i32*, i32) #1

declare dso_local i32 @ISC_LIST_INIT(i32) #1

declare dso_local i32 @isc_buffer_initnull(i32*) #1

declare dso_local i32 @reset_client(%struct.TYPE_22__*) #1

declare dso_local i64 @isc_socket_recv(i32, %struct.TYPE_20__*, i32, i32*, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @POST(i64) #1

declare dso_local i64 @isc_socket_accept(i32, i32*, void (i32*, %struct.TYPE_23__*)*, %struct.TYPE_21__*) #1

declare dso_local i32 @UNLOCK(i32*) #1

declare dso_local i32 @httpdmgr_destroy(%struct.TYPE_21__*) #1

declare dso_local i32 @isc_event_free(%struct.TYPE_23__**) #1

declare dso_local i32 @EXIT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
