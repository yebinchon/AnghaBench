; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/ypxfr/extr_ypxfr_main.c_ypxfr_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/ypxfr/extr_ypxfr_main.c_ypxfr_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*)* }
%struct.TYPE_5__ = type { i64 }
%struct.timeval = type { i32, i64 }

@RPC_ANYSOCK = common dso_local global i32 0, align 4
@dbp = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"failed to unlink %s\00", align 1
@errno = common dso_local global i32 0, align 4
@ypxfr_prognum = common dso_local global i64 0, align 8
@ypxfr_callback_addr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to establish callback handle\00", align 1
@ypxfr_resp = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"callback failed\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Exiting: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*)* @ypxfr_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ypxfr_exit(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timeval, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @RPC_ANYSOCK, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dbp, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dbp, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %16, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dbp, align 8
  %19 = call i32 %17(%struct.TYPE_6__* %18)
  br label %20

20:                                               ; preds = %14, %11
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @unlink(i8* %21)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @strerror(i32 %25)
  %27 = call i32 @yp_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %20
  br label %29

29:                                               ; preds = %28, %2
  %30 = load i64, i64* @ypxfr_prognum, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 20, i32* %33, align 8
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load i64, i64* @ypxfr_prognum, align 8
  %36 = bitcast %struct.timeval* %7 to { i32, i64 }*
  %37 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %36, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32* @clntudp_create(i32* @ypxfr_callback_addr, i64 %35, i32 1, i32 %38, i64 %40, i32* %6)
  store i32* %41, i32** %5, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = call i32 @clnt_spcreateerror(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %45 = call i32 @yp_error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = call i32 @exit(i32 1) #3
  unreachable

47:                                               ; preds = %32
  %48 = load i64, i64* %3, align 8
  store i64 %48, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ypxfr_resp, i32 0, i32 0), align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i32* @yppushproc_xfrresp_1(%struct.TYPE_5__* @ypxfr_resp, i32* %49)
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @clnt_sperror(i32* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %55 = call i32 @yp_error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @clnt_destroy(i32* %56)
  %58 = call i32 @exit(i32 1) #3
  unreachable

59:                                               ; preds = %47
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @clnt_destroy(i32* %60)
  br label %66

62:                                               ; preds = %29
  %63 = load i64, i64* %3, align 8
  %64 = call i32 @ypxfrerr_string(i64 %63)
  %65 = call i32 @yp_error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %62, %59
  %67 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @yp_error(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32* @clntudp_create(i32*, i64, i32, i32, i64, i32*) #1

declare dso_local i32 @clnt_spcreateerror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @yppushproc_xfrresp_1(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @clnt_sperror(i32*, i8*) #1

declare dso_local i32 @clnt_destroy(i32*) #1

declare dso_local i32 @ypxfrerr_string(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
