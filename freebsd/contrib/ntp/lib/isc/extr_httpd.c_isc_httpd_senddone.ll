; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_httpd.c_isc_httpd_senddone.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_httpd.c_isc_httpd_senddone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i64, i32, i32, i32 (i32*, i32)*, i32 }
%struct.TYPE_14__ = type { i8*, i64 }
%struct.TYPE_13__ = type { i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"senddone\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"senddone unlinked header\00", align 1
@link = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"senddone free callback performed\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"senddone body buffer unlinked\00", align 1
@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@HTTPD_CLOSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"senddone restarting recv on socket\00", align 1
@HTTP_RECVLEN = common dso_local global i64 0, align 8
@isc_httpd_recvdone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_16__*)* @isc_httpd_senddone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isc_httpd_senddone(i32* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %5, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %13 = bitcast %struct.TYPE_16__* %12 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %7, align 8
  %14 = call i32 @ENTER(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %16 = call i32 @ISC_HTTPD_ISSEND(%struct.TYPE_15__* %15)
  %17 = call i32 @INSIST(i32 %16)
  %18 = call i32 @NOTICE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 6
  %24 = load i32, i32* @link, align 4
  %25 = call i32 @ISC_LIST_UNLINK(i32 %21, i32* %23, i32 %24)
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 5
  %28 = load i32 (i32*, i32)*, i32 (i32*, i32)** %27, align 8
  %29 = icmp ne i32 (i32*, i32)* %28, null
  br i1 %29, label %30, label %48

30:                                               ; preds = %2
  store i32* null, i32** %8, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 3
  %33 = call i64 @isc_buffer_length(i32* %32)
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 3
  store i32* %37, i32** %8, align 8
  br label %38

38:                                               ; preds = %35, %30
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 5
  %41 = load i32 (i32*, i32)*, i32 (i32*, i32)** %40, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 %41(i32* %42, i32 %45)
  %47 = call i32 @NOTICE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %38, %2
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 3
  %51 = load i32, i32* @link, align 4
  %52 = call i64 @ISC_LINK_LINKED(i32* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 3
  %60 = load i32, i32* @link, align 4
  %61 = call i32 @ISC_LIST_UNLINK(i32 %57, i32* %59, i32 %60)
  %62 = call i32 @NOTICE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %63

63:                                               ; preds = %54, %48
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ISC_R_SUCCESS, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = call i32 @destroy_client(%struct.TYPE_15__** %5)
  br label %101

71:                                               ; preds = %63
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @HTTPD_CLOSE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = call i32 @destroy_client(%struct.TYPE_15__** %5)
  br label %101

80:                                               ; preds = %71
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %82 = call i32 @ISC_HTTPD_SETRECV(%struct.TYPE_15__* %81)
  %83 = call i32 @NOTICE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %85 = call i32 @reset_client(%struct.TYPE_15__* %84)
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  store i8* %89, i8** %90, align 8
  %91 = load i64, i64* @HTTP_RECVLEN, align 8
  %92 = sub nsw i64 %91, 1
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  store i64 %92, i64* %93, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %3, align 8
  %98 = load i32, i32* @isc_httpd_recvdone, align 4
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %100 = call i32 @isc_socket_recv(i32 %96, %struct.TYPE_14__* %6, i32 1, i32* %97, i32 %98, %struct.TYPE_15__* %99)
  br label %101

101:                                              ; preds = %80, %78, %69
  %102 = call i32 @isc_event_free(%struct.TYPE_16__** %4)
  %103 = call i32 @EXIT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ENTER(i8*) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @ISC_HTTPD_ISSEND(%struct.TYPE_15__*) #1

declare dso_local i32 @NOTICE(i8*) #1

declare dso_local i32 @ISC_LIST_UNLINK(i32, i32*, i32) #1

declare dso_local i64 @isc_buffer_length(i32*) #1

declare dso_local i64 @ISC_LINK_LINKED(i32*, i32) #1

declare dso_local i32 @destroy_client(%struct.TYPE_15__**) #1

declare dso_local i32 @ISC_HTTPD_SETRECV(%struct.TYPE_15__*) #1

declare dso_local i32 @reset_client(%struct.TYPE_15__*) #1

declare dso_local i32 @isc_socket_recv(i32, %struct.TYPE_14__*, i32, i32*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @isc_event_free(%struct.TYPE_16__**) #1

declare dso_local i32 @EXIT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
