; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rstream.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rstream.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@SOCK_STREAM = common dso_local global i32 0, align 4
@ai_hints = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@RDMA_PS_TCP = common dso_local global i32 0, align 4
@rai_hints = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [23 x i8] c"s:b:f:B:i:I:C:S:p:k:T:\00", align 1
@optarg = common dso_local global i8* null, align 8
@dst_addr = common dso_local global i8* null, align 8
@src_addr = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@AI_NUMERICHOST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@RAI_NUMERICHOST = common dso_local global i32 0, align 4
@RAI_FAMILY = common dso_local global i32 0, align 4
@AF_IB = common dso_local global i32 0, align 4
@use_rgai = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Warning: unknown address format\0A\00", align 1
@buffer_size = common dso_local global i8* null, align 8
@inline_size = common dso_local global i8* null, align 8
@custom = common dso_local global i32 0, align 4
@iterations = common dso_local global i8* null, align 8
@transfer_count = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@size_option = common dso_local global i32 0, align 4
@transfer_size = common dso_local global i8* null, align 8
@port = common dso_local global i8* null, align 8
@keepalive = common dso_local global i8* null, align 8
@SWITCH_FALLTHROUGH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"usage: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"\09[-s server_address]\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"\09[-b bind_address]\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"\09[-f address_format]\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"\09    name, ip, ipv6, or gid\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"\09[-B buffer_size]\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"\09[-i inline_size]\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"\09[-I iterations]\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"\09[-C transfer_count]\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"\09[-S transfer_size or all]\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"\09[-p port_number]\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"\09[-k keepalive_time]\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"\09[-T test_option]\0A\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"\09    s|sockets - use standard tcp/ip sockets\0A\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"\09    a|async - asynchronous operation (use poll)\0A\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"\09    b|blocking - use blocking calls\0A\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"\09    f|fork - fork server processing\0A\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"\09    n|nonblocking - use nonblocking calls\0A\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"\09    r|resolve - use rdma cm to resolve address\0A\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"\09    v|verify - verify data\0A\00", align 1
@flags = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@poll_timeout = common dso_local global i32 0, align 4

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
  %8 = load i32, i32* @SOCK_STREAM, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ai_hints, i32 0, i32 1), align 4
  %9 = load i32, i32* @RDMA_PS_TCP, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rai_hints, i32 0, i32 2), align 4
  br label %10

10:                                               ; preds = %99, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %100

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %74 [
    i32 115, label %17
    i32 98, label %19
    i32 102, label %21
    i32 66, label %41
    i32 105, label %44
    i32 73, label %47
    i32 67, label %50
    i32 83, label %53
    i32 112, label %62
    i32 107, label %64
    i32 84, label %67
  ]

17:                                               ; preds = %15
  %18 = load i8*, i8** @optarg, align 8
  store i8* %18, i8** @dst_addr, align 8
  br label %99

19:                                               ; preds = %15
  %20 = load i8*, i8** @optarg, align 8
  store i8* %20, i8** @src_addr, align 8
  br label %99

21:                                               ; preds = %15
  %22 = load i8*, i8** @optarg, align 8
  %23 = call i32 @strncasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %22, i32 2)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @AI_NUMERICHOST, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ai_hints, i32 0, i32 0), align 4
  br label %40

27:                                               ; preds = %21
  %28 = load i8*, i8** @optarg, align 8
  %29 = call i32 @strncasecmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %28, i32 3)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @RAI_NUMERICHOST, align 4
  %33 = load i32, i32* @RAI_FAMILY, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rai_hints, i32 0, i32 0), align 4
  %35 = load i32, i32* @AF_IB, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rai_hints, i32 0, i32 1), align 4
  store i32 1, i32* @use_rgai, align 4
  br label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 @fprintf(i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %31
  br label %40

40:                                               ; preds = %39, %25
  br label %99

41:                                               ; preds = %15
  %42 = load i8*, i8** @optarg, align 8
  %43 = call i8* @atoi(i8* %42)
  store i8* %43, i8** @buffer_size, align 8
  br label %99

44:                                               ; preds = %15
  %45 = load i8*, i8** @optarg, align 8
  %46 = call i8* @atoi(i8* %45)
  store i8* %46, i8** @inline_size, align 8
  br label %99

47:                                               ; preds = %15
  store i32 1, i32* @custom, align 4
  %48 = load i8*, i8** @optarg, align 8
  %49 = call i8* @atoi(i8* %48)
  store i8* %49, i8** @iterations, align 8
  br label %99

50:                                               ; preds = %15
  store i32 1, i32* @custom, align 4
  %51 = load i8*, i8** @optarg, align 8
  %52 = call i8* @atoi(i8* %51)
  store i8* %52, i8** @transfer_count, align 8
  br label %99

53:                                               ; preds = %15
  %54 = load i8*, i8** @optarg, align 8
  %55 = call i32 @strncasecmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %54, i32 3)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  store i32 1, i32* @size_option, align 4
  br label %61

58:                                               ; preds = %53
  store i32 1, i32* @custom, align 4
  %59 = load i8*, i8** @optarg, align 8
  %60 = call i8* @atoi(i8* %59)
  store i8* %60, i8** @transfer_size, align 8
  br label %61

61:                                               ; preds = %58, %57
  br label %99

62:                                               ; preds = %15
  %63 = load i8*, i8** @optarg, align 8
  store i8* %63, i8** @port, align 8
  br label %99

64:                                               ; preds = %15
  %65 = load i8*, i8** @optarg, align 8
  %66 = call i8* @atoi(i8* %65)
  store i8* %66, i8** @keepalive, align 8
  br label %99

67:                                               ; preds = %15
  %68 = load i8*, i8** @optarg, align 8
  %69 = call i32 @set_test_opt(i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  br label %99

72:                                               ; preds = %67
  %73 = load i32, i32* @SWITCH_FALLTHROUGH, align 4
  br label %74

74:                                               ; preds = %15, %72
  %75 = load i8**, i8*** %5, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %77)
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0))
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.19, i64 0, i64 0))
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0))
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i64 0, i64 0))
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i64 0, i64 0))
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.23, i64 0, i64 0))
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i64 0, i64 0))
  %98 = call i32 @exit(i32 1) #3
  unreachable

99:                                               ; preds = %71, %64, %62, %61, %50, %47, %44, %41, %40, %19, %17
  br label %10

100:                                              ; preds = %10
  %101 = load i32, i32* @flags, align 4
  %102 = load i32, i32* @MSG_DONTWAIT, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  store i32 -1, i32* @poll_timeout, align 4
  br label %106

106:                                              ; preds = %105, %100
  %107 = call i32 (...) @run()
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  ret i32 %108
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @set_test_opt(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @run(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
