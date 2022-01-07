; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/rpc/extr_t_rpc.c_rawtest.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/rpc/extr_t_rpc.c_rawtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Cannot create server %d\00", align 1
@PROGNUM = common dso_local global i32 0, align 4
@VERSNUM = common dso_local global i32 0, align 4
@server = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Cannot register server %d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"clnt_raw_create\00", align 1
@PLUSONE = common dso_local global i32 0, align 4
@xdr_int = common dso_local global i64 0, align 8
@tout = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"clnt_call: %s\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Got %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"expected %d got %d\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @rawtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rawtest(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @atoi(i8* %11)
  store i32 %12, i32* %5, align 4
  br label %14

13:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %13, %10
  %15 = call i32* (...) @svc_raw_create()
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* @EXIT_FAILURE, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 (i32, i8*, i32, ...) @ERRX(i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @PROGNUM, align 4
  %25 = load i32, i32* @VERSNUM, align 4
  %26 = load i32, i32* @server, align 4
  %27 = call i32 @svc_reg(i32* %23, i32 %24, i32 %25, i32 %26, i32* null)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @EXIT_FAILURE, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 (i32, i8*, i32, ...) @ERRX(i32 %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %22
  %34 = load i32, i32* @PROGNUM, align 4
  %35 = load i32, i32* @VERSNUM, align 4
  %36 = call i32* @clnt_raw_create(i32 %34, i32 %35)
  store i32* %36, i32** %3, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* @EXIT_FAILURE, align 4
  %41 = call i32 @clnt_spcreateerror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %42 = call i32 (i32, i8*, i32, ...) @ERRX(i32 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %33
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* @PLUSONE, align 4
  %46 = load i64, i64* @xdr_int, align 8
  %47 = trunc i64 %46 to i32
  %48 = bitcast i32* %5 to i8*
  %49 = load i64, i64* @xdr_int, align 8
  %50 = trunc i64 %49 to i32
  %51 = bitcast i32* %6 to i8*
  %52 = load i32, i32* @tout, align 4
  %53 = call i32 @clnt_call(i32* %44, i32 %45, i32 %47, i8* %48, i32 %50, i8* %51, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @RPC_SUCCESS, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %43
  %58 = load i32, i32* @EXIT_FAILURE, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @clnt_sperrno(i32 %59)
  %61 = call i32 (i32, i8*, i32, ...) @ERRX(i32 %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %57, %43
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @DPRINTF(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %63)
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @clnt_destroy(i32* %65)
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @svc_destroy(i32* %67)
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %62
  %74 = load i32, i32* @EXIT_FAILURE, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 (i32, i8*, i32, ...) @ERRX(i32 %74, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %62
  %79 = load i32, i32* @EXIT_SUCCESS, align 4
  ret i32 %79
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32* @svc_raw_create(...) #1

declare dso_local i32 @ERRX(i32, i8*, i32, ...) #1

declare dso_local i32 @svc_reg(i32*, i32, i32, i32, i32*) #1

declare dso_local i32* @clnt_raw_create(i32, i32) #1

declare dso_local i32 @clnt_spcreateerror(i8*) #1

declare dso_local i32 @clnt_call(i32*, i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @clnt_sperrno(i32) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @clnt_destroy(i32*) #1

declare dso_local i32 @svc_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
