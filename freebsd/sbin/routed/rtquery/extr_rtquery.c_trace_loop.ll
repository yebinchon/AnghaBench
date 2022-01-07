; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/rtquery/extr_rtquery.c_trace_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/rtquery/extr_rtquery.c_trace_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in = type { i32, i64, i32 }
%struct.sockaddr = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"-t requires UID 0\0A\00", align 1
@ripv2 = common dso_local global i64 0, align 8
@RIPv2 = common dso_local global i32 0, align 4
@OMSG = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RIPv1 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@IPPORT_RESERVED = common dso_local global i64 0, align 8
@soc = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EADDRINUSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @trace_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trace_loop(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.sockaddr_in, align 8
  %4 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  %5 = call i64 (...) @geteuid()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @stderr, align 4
  %9 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @exit(i32 1) #3
  unreachable

11:                                               ; preds = %1
  %12 = load i64, i64* @ripv2, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, i32* @RIPv2, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OMSG, i32 0, i32 0), align 4
  br label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @RIPv1, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @OMSG, i32 0, i32 0), align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = call i32 @memset(%struct.sockaddr_in* %3, i32 0, i32 24)
  %20 = load i32, i32* @AF_INET, align 4
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  store i32 %20, i32* %21, align 8
  %22 = load i64, i64* @IPPORT_RESERVED, align 8
  %23 = sub nsw i64 %22, 1
  %24 = call i8* @htons(i64 %23)
  %25 = ptrtoint i8* %24 to i64
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i64 %25, i64* %26, align 8
  br label %27

27:                                               ; preds = %43, %18
  %28 = load i32, i32* @soc, align 4
  %29 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %30 = call i64 @bind(i32 %28, %struct.sockaddr* %29, i32 24)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %27
  %33 = load i64, i64* @errno, align 8
  %34 = load i64, i64* @EADDRINUSE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36, %32
  %41 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 @exit(i32 2) #3
  unreachable

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @ntohs(i64 %45)
  %47 = sub nsw i64 %46, 1
  %48 = call i8* @htons(i64 %47)
  %49 = ptrtoint i8* %48 to i64
  %50 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i64 %49, i64* %50, align 8
  br label %27

51:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %52

52:                                               ; preds = %64, %51
  %53 = load i8**, i8*** %2, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load i8**, i8*** %2, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i32 1
  store i8** %58, i8*** %2, align 8
  %59 = load i8*, i8** %57, align 8
  %60 = ptrtoint i8* %59 to i32
  %61 = call i64 @out(i32 %60)
  %62 = icmp sle i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %56
  br label %52

65:                                               ; preds = %52
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @exit(i32 %66) #3
  unreachable
}

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @ntohs(i64) #1

declare dso_local i64 @out(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
