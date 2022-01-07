; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udpong.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udpong.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"s:b:B:C:S:p:T:\00", align 1
@optarg = common dso_local global i8* null, align 8
@dst_addr = common dso_local global i8* null, align 8
@src_addr = common dso_local global i8* null, align 8
@buffer_size = common dso_local global i8* null, align 8
@custom = common dso_local global i32 0, align 4
@transfer_count = common dso_local global i8* null, align 8
@transfer_size = common dso_local global i32 0, align 4
@CTRL_MSG_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"size must be at least %d bytes\0A\00", align 1
@port = common dso_local global i8* null, align 8
@SWITCH_FALLTHROUGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"usage: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"\09[-s server_address]\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"\09[-b bind_address]\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"\09[-B buffer_size]\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"\09[-C transfer_count]\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"\09[-S transfer_size]\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"\09[-p port_number]\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"\09[-T test_option]\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"\09    s|sockets - use standard tcp/ip sockets\0A\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"\09    a|async - asynchronous operation (use poll)\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"\09    b|blocking - use blocking calls\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"\09    n|nonblocking - use nonblocking calls\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"\09    e|echo - server echoes all messages\0A\00", align 1
@flags = common dso_local global i64 0, align 8
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
  br label %8

8:                                                ; preds = %64, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @getopt(i32 %9, i8** %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %6, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %65

13:                                               ; preds = %8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %46 [
    i32 115, label %15
    i32 98, label %17
    i32 66, label %19
    i32 67, label %22
    i32 83, label %25
    i32 112, label %37
    i32 84, label %39
  ]

15:                                               ; preds = %13
  %16 = load i8*, i8** @optarg, align 8
  store i8* %16, i8** @dst_addr, align 8
  br label %64

17:                                               ; preds = %13
  %18 = load i8*, i8** @optarg, align 8
  store i8* %18, i8** @src_addr, align 8
  br label %64

19:                                               ; preds = %13
  %20 = load i8*, i8** @optarg, align 8
  %21 = call i8* @atoi(i8* %20)
  store i8* %21, i8** @buffer_size, align 8
  br label %64

22:                                               ; preds = %13
  store i32 1, i32* @custom, align 4
  %23 = load i8*, i8** @optarg, align 8
  %24 = call i8* @atoi(i8* %23)
  store i8* %24, i8** @transfer_count, align 8
  br label %64

25:                                               ; preds = %13
  store i32 1, i32* @custom, align 4
  %26 = load i8*, i8** @optarg, align 8
  %27 = call i8* @atoi(i8* %26)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* @transfer_size, align 4
  %29 = load i32, i32* @transfer_size, align 4
  %30 = load i32, i32* @CTRL_MSG_SIZE, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32, i32* @CTRL_MSG_SIZE, align 4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = call i32 @exit(i32 1) #3
  unreachable

36:                                               ; preds = %25
  br label %64

37:                                               ; preds = %13
  %38 = load i8*, i8** @optarg, align 8
  store i8* %38, i8** @port, align 8
  br label %64

39:                                               ; preds = %13
  %40 = load i8*, i8** @optarg, align 8
  %41 = call i32 @set_test_opt(i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  br label %64

44:                                               ; preds = %39
  %45 = load i32, i32* @SWITCH_FALLTHROUGH, align 4
  br label %46

46:                                               ; preds = %13, %44
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0))
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0))
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0))
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0))
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0))
  %63 = call i32 @exit(i32 1) #3
  unreachable

64:                                               ; preds = %43, %37, %36, %22, %19, %17, %15
  br label %8

65:                                               ; preds = %8
  %66 = load i64, i64* @flags, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 -1, i32* @poll_timeout, align 4
  br label %69

69:                                               ; preds = %68, %65
  %70 = load i8*, i8** @dst_addr, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = call i32 (...) @client_run()
  br label %76

74:                                               ; preds = %69
  %75 = call i32 (...) @svr_run()
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @set_test_opt(i8*) #1

declare dso_local i32 @client_run(...) #1

declare dso_local i32 @svr_run(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
