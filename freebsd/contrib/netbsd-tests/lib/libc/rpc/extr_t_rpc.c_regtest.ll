; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/rpc/extr_t_rpc.c_regtest.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/rpc/extr_t_rpc.c_regtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@server = common dso_local global i32 0, align 4
@PROGNUM = common dso_local global i32 0, align 4
@VERSNUM = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Cannot create server %d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Calling svc_run\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"svc_run returned %d!\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Fork failed (%s)\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Initializing client\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"clnt_raw_create\00", align 1
@PLUSONE = common dso_local global i32 0, align 4
@xdr_int = common dso_local global i64 0, align 8
@tout = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"clnt_call: %s\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Got %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"expected %d got %d\00", align 1
@DESTROY = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i64 0, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@SVC_FDSET_POLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32)* @regtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regtest(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @atoi(i8* %17)
  store i32 %18, i32* %10, align 4
  br label %20

19:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %19, %16
  %21 = load i32, i32* @server, align 4
  %22 = load i32, i32* @PROGNUM, align 4
  %23 = load i32, i32* @VERSNUM, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @svc_create(i32 %21, i32 %22, i32 %23, i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @EXIT_FAILURE, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @SKIPX(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %27, %20
  %32 = call i32 (...) @fork()
  store i32 %32, i32* %13, align 4
  switch i32 %32, label %44 [
    i32 0, label %33
    i32 -1, label %39
  ]

33:                                               ; preds = %31
  %34 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %35 = call i32 (...) @svc_run()
  %36 = load i32, i32* @EXIT_FAILURE, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 (i32, i8*, i32, ...) @ERRX(i32 %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %31, %33
  %40 = load i32, i32* @EXIT_FAILURE, align 4
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 @strerror(i32 %41)
  %43 = call i32 (i32, i8*, i32, ...) @ERRX(i32 %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %31, %39
  %45 = call i32 @sleep(i32 1)
  br label %46

46:                                               ; preds = %44
  %47 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* @PROGNUM, align 4
  %50 = load i32, i32* @VERSNUM, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = call i32* @clnt_create(i8* %48, i32 %49, i32 %50, i8* %51)
  store i32* %52, i32** %9, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load i32, i32* @EXIT_FAILURE, align 4
  %57 = call i32 @clnt_spcreateerror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %58 = call i32 (i32, i8*, i32, ...) @ERRX(i32 %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %55, %46
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* @PLUSONE, align 4
  %62 = load i64, i64* @xdr_int, align 8
  %63 = trunc i64 %62 to i32
  %64 = bitcast i32* %10 to i8*
  %65 = load i64, i64* @xdr_int, align 8
  %66 = trunc i64 %65 to i32
  %67 = bitcast i32* %11 to i8*
  %68 = load i32, i32* @tout, align 4
  %69 = call i32 @clnt_call(i32* %60, i32 %61, i32 %63, i8* %64, i32 %66, i8* %67, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @RPC_SUCCESS, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %59
  %74 = load i32, i32* @EXIT_FAILURE, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @clnt_sperrno(i32 %75)
  %77 = call i32 (i32, i8*, i32, ...) @ERRX(i32 %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %73, %59
  %79 = load i32, i32* %11, align 4
  %80 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load i32, i32* @EXIT_FAILURE, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 (i32, i8*, i32, ...) @ERRX(i32 %86, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %85, %78
  %91 = load i32*, i32** %9, align 8
  %92 = load i32, i32* @DESTROY, align 4
  %93 = load i64, i64* @xdr_void, align 8
  %94 = trunc i64 %93 to i32
  %95 = load i64, i64* @xdr_void, align 8
  %96 = trunc i64 %95 to i32
  %97 = load i32, i32* @tout, align 4
  %98 = call i32 @clnt_call(i32* %91, i32 %92, i32 %94, i8* null, i32 %96, i8* null, i32 %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @RPC_SUCCESS, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %90
  %103 = load i32, i32* @EXIT_FAILURE, align 4
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @clnt_sperrno(i32 %104)
  %106 = call i32 (i32, i8*, i32, ...) @ERRX(i32 %103, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %102, %90
  %108 = load i32*, i32** %9, align 8
  %109 = call i32 @clnt_destroy(i32* %108)
  %110 = load i32, i32* @EXIT_SUCCESS, align 4
  ret i32 %110
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @svc_create(i32, i32, i32, i8*) #1

declare dso_local i32 @SKIPX(i32, i8*, i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @svc_run(...) #1

declare dso_local i32 @ERRX(i32, i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32* @clnt_create(i8*, i32, i32, i8*) #1

declare dso_local i32 @clnt_spcreateerror(i8*) #1

declare dso_local i32 @clnt_call(i32*, i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @clnt_sperrno(i32) #1

declare dso_local i32 @clnt_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
