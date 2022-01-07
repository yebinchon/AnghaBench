; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_mckey.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_mckey.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i32, %struct.sockaddr*, i32, %struct.sockaddr* }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"m:M:sb:c:C:S:p:\00", align 1
@optarg = common dso_local global i8* null, align 8
@dst_addr = common dso_local global i8* null, align 8
@unmapped_addr = common dso_local global i32 0, align 4
@is_sender = common dso_local global i32 0, align 4
@src_addr = common dso_local global i8* null, align 8
@test = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@connections = common dso_local global i8* null, align 8
@message_count = common dso_local global i8* null, align 8
@message_size = common dso_local global i8* null, align 8
@port_space = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"usage: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"\09-m multicast_address\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"\09[-M unmapped_multicast_address]\0A\09 replaces -m and requires -b\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"\09[-s(ender)]\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"\09[-b bind_address]\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"\09[-c connections]\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"\09[-C message_count]\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"\09[-S message_size]\0A\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"\09[-p port_space - %#x for UDP (default), %#x for IPOIB]\0A\00", align 1
@RDMA_PS_UDP = common dso_local global i32 0, align 4
@RDMA_PS_IPOIB = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [63 x i8] c"unmapped multicast address requires binding to source address\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"failed to create event channel\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"test complete\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"return status %d\0A\00", align 1

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
  br label %8

8:                                                ; preds = %50, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @getopt(i32 %9, i8** %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %6, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %51

13:                                               ; preds = %8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %34 [
    i32 109, label %15
    i32 77, label %17
    i32 115, label %19
    i32 98, label %20
    i32 99, label %22
    i32 67, label %25
    i32 83, label %28
    i32 112, label %31
  ]

15:                                               ; preds = %13
  %16 = load i8*, i8** @optarg, align 8
  store i8* %16, i8** @dst_addr, align 8
  br label %50

17:                                               ; preds = %13
  store i32 1, i32* @unmapped_addr, align 4
  %18 = load i8*, i8** @optarg, align 8
  store i8* %18, i8** @dst_addr, align 8
  br label %50

19:                                               ; preds = %13
  store i32 1, i32* @is_sender, align 4
  br label %50

20:                                               ; preds = %13
  %21 = load i8*, i8** @optarg, align 8
  store i8* %21, i8** @src_addr, align 8
  store %struct.sockaddr* bitcast (i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test, i32 0, i32 4) to %struct.sockaddr*), %struct.sockaddr** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test, i32 0, i32 5), align 8
  br label %50

22:                                               ; preds = %13
  %23 = load i8*, i8** @optarg, align 8
  %24 = call i8* @atoi(i8* %23)
  store i8* %24, i8** @connections, align 8
  br label %50

25:                                               ; preds = %13
  %26 = load i8*, i8** @optarg, align 8
  %27 = call i8* @atoi(i8* %26)
  store i8* %27, i8** @message_count, align 8
  br label %50

28:                                               ; preds = %13
  %29 = load i8*, i8** @optarg, align 8
  %30 = call i8* @atoi(i8* %29)
  store i8* %30, i8** @message_size, align 8
  br label %50

31:                                               ; preds = %13
  %32 = load i8*, i8** @optarg, align 8
  %33 = call i32 @strtol(i8* %32, i32* null, i32 0)
  store i32 %33, i32* @port_space, align 4
  br label %50

34:                                               ; preds = %13
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %46 = load i32, i32* @RDMA_PS_UDP, align 4
  %47 = load i32, i32* @RDMA_PS_IPOIB, align 4
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0), i32 %46, i32 %47)
  %49 = call i32 @exit(i32 1) #3
  unreachable

50:                                               ; preds = %31, %28, %25, %22, %20, %19, %17, %15
  br label %8

51:                                               ; preds = %8
  %52 = load i32, i32* @unmapped_addr, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i8*, i8** @src_addr, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.10, i64 0, i64 0))
  %59 = call i32 @exit(i32 1) #3
  unreachable

60:                                               ; preds = %54, %51
  store %struct.sockaddr* bitcast (i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test, i32 0, i32 2) to %struct.sockaddr*), %struct.sockaddr** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test, i32 0, i32 3), align 8
  %61 = load i8*, i8** @connections, align 8
  store i8* %61, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test, i32 0, i32 1), align 8
  %62 = call i32 (...) @rdma_create_event_channel()
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test, i32 0, i32 0), align 8
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test, i32 0, i32 0), align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = call i32 @perror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  %67 = call i32 @exit(i32 1) #3
  unreachable

68:                                               ; preds = %60
  %69 = call i64 (...) @alloc_nodes()
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = call i32 @exit(i32 1) #3
  unreachable

73:                                               ; preds = %68
  %74 = call i32 (...) @run()
  store i32 %74, i32* %7, align 4
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %76 = call i32 (...) @destroy_nodes()
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test, i32 0, i32 0), align 8
  %78 = call i32 @rdma_destroy_event_channel(i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @rdma_create_event_channel(...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @alloc_nodes(...) #1

declare dso_local i32 @run(...) #1

declare dso_local i32 @destroy_nodes(...) #1

declare dso_local i32 @rdma_destroy_event_channel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
