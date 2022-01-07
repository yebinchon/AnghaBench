; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rpc.sprayd/extr_sprayd.c_spray_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rpc.sprayd/extr_sprayd.c_spray_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.timeval = type { i32, i32 }
%struct.svc_req = type { i32 }

@spray_service.scum = internal global %struct.TYPE_5__ zeroinitializer, align 4
@spray_service.clear = internal global %struct.timeval zeroinitializer, align 4
@spray_service.get = internal global %struct.timeval zeroinitializer, align 4
@xdr_void = common dso_local global i64 0, align 8
@xdr_spraycumul = common dso_local global i64 0, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"bad svc_sendreply\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_req*, i32*)* @spray_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spray_service(%struct.svc_req* %0, i32* %1) #0 {
  %3 = alloca %struct.svc_req*, align 8
  %4 = alloca i32*, align 8
  store %struct.svc_req* %0, %struct.svc_req** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %6 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %23 [
    i32 130, label %8
    i32 131, label %10
    i32 128, label %15
    i32 129, label %18
  ]

8:                                                ; preds = %2
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spray_service.scum, i32 0, i32 1), align 4
  %9 = call i32 @gettimeofday(%struct.timeval* @spray_service.clear, i32 0)
  br label %10

10:                                               ; preds = %2, %8
  %11 = load i32*, i32** %4, align 8
  %12 = load i64, i64* @xdr_void, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @svc_sendreply(i32* %11, i32 %13, %struct.TYPE_5__* null)
  br label %37

15:                                               ; preds = %2
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spray_service.scum, i32 0, i32 1), align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spray_service.scum, i32 0, i32 1), align 4
  br label %37

18:                                               ; preds = %2
  %19 = call i32 @gettimeofday(%struct.timeval* @spray_service.get, i32 0)
  %20 = call i32 @timersub(%struct.timeval* @spray_service.get, %struct.timeval* @spray_service.clear, %struct.timeval* @spray_service.get)
  %21 = load i32, i32* getelementptr inbounds (%struct.timeval, %struct.timeval* @spray_service.get, i32 0, i32 1), align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spray_service.scum, i32 0, i32 0, i32 1), align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.timeval, %struct.timeval* @spray_service.get, i32 0, i32 0), align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spray_service.scum, i32 0, i32 0, i32 0), align 4
  br label %26

23:                                               ; preds = %2
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @svcerr_noproc(i32* %24)
  br label %37

26:                                               ; preds = %18
  %27 = load i32*, i32** %4, align 8
  %28 = load i64, i64* @xdr_spraycumul, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @svc_sendreply(i32* %27, i32 %29, %struct.TYPE_5__* @spray_service.scum)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @svcerr_systemerr(i32* %33)
  %35 = load i32, i32* @LOG_WARNING, align 4
  %36 = call i32 @syslog(i32 %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %10, %15, %23, %32, %26
  ret void
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32) #1

declare dso_local i32 @svc_sendreply(i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @timersub(%struct.timeval*, %struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @svcerr_noproc(i32*) #1

declare dso_local i32 @svcerr_systemerr(i32*) #1

declare dso_local i32 @syslog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
