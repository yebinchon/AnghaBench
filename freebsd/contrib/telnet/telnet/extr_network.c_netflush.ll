; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_network.c_netflush.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_network.c_netflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@netoring = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@net = common dso_local global i32 0, align 4
@MSG_OOB = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@hostname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Connection closed by foreign host.\0A\00", align 1
@netdata = common dso_local global i64 0, align 8
@encrypt_output = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netflush() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @ring_full_consecutive(%struct.TYPE_7__* @netoring)
  store i32 %4, i32* %2, align 4
  store i32 %4, i32* %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %0
  %7 = call i32 @ring_at_mark(%struct.TYPE_7__* @netoring)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = load i32, i32* @net, align 4
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @netoring, i32 0, i32 0), align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @send(i32 %10, i8* %12, i32 %13, i32 0)
  store i32 %14, i32* %2, align 4
  br label %21

15:                                               ; preds = %6
  %16 = load i32, i32* @net, align 4
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @netoring, i32 0, i32 0), align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = load i32, i32* @MSG_OOB, align 4
  %20 = call i32 @send(i32 %16, i8* %18, i32 1, i32 %19)
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %15, %9
  br label %22

22:                                               ; preds = %21, %0
  %23 = load i32, i32* %2, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = load i64, i64* @errno, align 8
  %27 = load i64, i64* @ENOBUFS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @EWOULDBLOCK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = call i32 (...) @setcommandmode()
  %35 = load i32, i32* @hostname, align 4
  %36 = call i32 @perror(i32 %35)
  %37 = load i32, i32* @net, align 4
  %38 = call i32 @NetClose(i32 %37)
  %39 = call i32 @ring_clear_mark(%struct.TYPE_7__* @netoring)
  %40 = call i32 @ExitString(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %41

41:                                               ; preds = %33, %29, %25
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %22
  %43 = load i64, i64* @netdata, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i32, i32* %2, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @netoring, i32 0, i32 0), align 8
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @Dump(i8 signext 62, i64 %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %45, %42
  %53 = load i32, i32* %2, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @ring_consumed(%struct.TYPE_7__* @netoring, i32 %56)
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %2, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = call i32 @ring_full_consecutive(%struct.TYPE_7__* @netoring)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 @netflush()
  br label %66

66:                                               ; preds = %64, %61, %55
  store i32 1, i32* %1, align 4
  br label %68

67:                                               ; preds = %52
  store i32 0, i32* %1, align 4
  br label %68

68:                                               ; preds = %67, %66
  %69 = load i32, i32* %1, align 4
  ret i32 %69
}

declare dso_local i32 @ring_full_consecutive(%struct.TYPE_7__*) #1

declare dso_local i32 @ring_at_mark(%struct.TYPE_7__*) #1

declare dso_local i32 @send(i32, i8*, i32, i32) #1

declare dso_local i32 @setcommandmode(...) #1

declare dso_local i32 @perror(i32) #1

declare dso_local i32 @NetClose(i32) #1

declare dso_local i32 @ring_clear_mark(%struct.TYPE_7__*) #1

declare dso_local i32 @ExitString(i8*, i32) #1

declare dso_local i32 @Dump(i8 signext, i64, i32) #1

declare dso_local i32 @ring_consumed(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
