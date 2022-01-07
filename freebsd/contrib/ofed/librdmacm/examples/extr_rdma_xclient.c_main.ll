; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rdma_xclient.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rdma_xclient.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@RDMA_PS_TCP = common dso_local global i32 0, align 4
@hints = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@IBV_QPT_RC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"s:p:c:\00", align 1
@optarg = common dso_local global i32* null, align 8
@server = common dso_local global i32* null, align 8
@port = common dso_local global i32 0, align 4
@RDMA_PS_IB = common dso_local global i32 0, align 4
@IBV_QPT_XRC_SEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%s: start\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%s: end %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"usage: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"\09[-s server]\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"\09[-p port_number]\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"\09[-c communication type]\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"\09    r - RC: reliable-connected (default)\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"\09    x - XRC: extended-reliable-connected\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* @RDMA_PS_TCP, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hints, i32 0, i32 1), align 4
  %9 = load i32, i32* @IBV_QPT_RC, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hints, i32 0, i32 0), align 4
  br label %10

10:                                               ; preds = %35, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %36

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %34 [
    i32 115, label %17
    i32 112, label %19
    i32 99, label %23
  ]

17:                                               ; preds = %15
  %18 = load i32*, i32** @optarg, align 8
  store i32* %18, i32** @server, align 8
  br label %35

19:                                               ; preds = %15
  %20 = load i32, i32* @port, align 4
  %21 = load i32*, i32** @optarg, align 8
  %22 = call i32 @strncpy(i32 %20, i32* %21, i32 3)
  br label %35

23:                                               ; preds = %15
  %24 = load i32*, i32** @optarg, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @tolower(i32 %26) #4
  switch i32 %27, label %32 [
    i32 114, label %28
    i32 120, label %29
  ]

28:                                               ; preds = %23
  br label %33

29:                                               ; preds = %23
  %30 = load i32, i32* @RDMA_PS_IB, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hints, i32 0, i32 1), align 4
  %31 = load i32, i32* @IBV_QPT_XRC_SEND, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hints, i32 0, i32 0), align 4
  br label %33

32:                                               ; preds = %23
  br label %48

33:                                               ; preds = %29, %28
  br label %35

34:                                               ; preds = %15
  br label %48

35:                                               ; preds = %33, %19, %17
  br label %10

36:                                               ; preds = %10
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  %41 = call i32 (...) @test()
  store i32 %41, i32* %7, align 4
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %44, i32 %45)
  %47 = load i32, i32* %7, align 4
  ret i32 %47

48:                                               ; preds = %34, %32
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  %58 = call i32 @exit(i32 1) #5
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strncpy(i32, i32*, i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @tolower(i32) #2

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @test(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
