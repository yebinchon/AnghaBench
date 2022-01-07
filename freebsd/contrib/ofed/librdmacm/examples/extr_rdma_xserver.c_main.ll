; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rdma_xserver.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rdma_xserver.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@RAI_PASSIVE = common dso_local global i32 0, align 4
@hints = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RDMA_PS_TCP = common dso_local global i32 0, align 4
@IBV_QPT_RC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"p:c:\00", align 1
@optarg = common dso_local global i32* null, align 8
@port = common dso_local global i32* null, align 8
@RDMA_PS_IB = common dso_local global i32 0, align 4
@IBV_QPT_XRC_RECV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%s: start\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%s: end %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"usage: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"\09[-p port_number]\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"\09[-c communication type]\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"\09    r - RC: reliable-connected (default)\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"\09    x - XRC: extended-reliable-connected\0A\00", align 1

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
  %8 = load i32, i32* @RAI_PASSIVE, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hints, i32 0, i32 2), align 4
  %9 = load i32, i32* @RDMA_PS_TCP, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hints, i32 0, i32 1), align 4
  %10 = load i32, i32* @IBV_QPT_RC, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hints, i32 0, i32 0), align 4
  br label %11

11:                                               ; preds = %32, %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %33

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %31 [
    i32 112, label %18
    i32 99, label %20
  ]

18:                                               ; preds = %16
  %19 = load i32*, i32** @optarg, align 8
  store i32* %19, i32** @port, align 8
  br label %32

20:                                               ; preds = %16
  %21 = load i32*, i32** @optarg, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @tolower(i32 %23) #4
  switch i32 %24, label %29 [
    i32 114, label %25
    i32 120, label %26
  ]

25:                                               ; preds = %20
  br label %30

26:                                               ; preds = %20
  %27 = load i32, i32* @RDMA_PS_IB, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hints, i32 0, i32 1), align 4
  %28 = load i32, i32* @IBV_QPT_XRC_RECV, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hints, i32 0, i32 0), align 4
  br label %30

29:                                               ; preds = %20
  br label %45

30:                                               ; preds = %26, %25
  br label %32

31:                                               ; preds = %16
  br label %45

32:                                               ; preds = %30, %18
  br label %11

33:                                               ; preds = %11
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = call i32 (...) @test()
  store i32 %38, i32* %7, align 4
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %41, i32 %42)
  %44 = load i32, i32* %7, align 4
  ret i32 %44

45:                                               ; preds = %31, %29
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %48)
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  %54 = call i32 @exit(i32 1) #5
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

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
