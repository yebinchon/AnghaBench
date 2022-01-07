; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_network.c_netflush.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_network.c_netflush.c"
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
@peerdied = common dso_local global i32 0, align 4
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
  br i1 %24, label %25, label %43

25:                                               ; preds = %22
  %26 = load i64, i64* @errno, align 8
  %27 = load i64, i64* @ENOBUFS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @EWOULDBLOCK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = call i32 (...) @setcommandmode()
  %35 = load i32, i32* @hostname, align 4
  %36 = call i32 @perror(i32 %35)
  %37 = load i32, i32* @net, align 4
  %38 = call i32 @NetClose(i32 %37)
  %39 = call i32 @ring_clear_mark(%struct.TYPE_7__* @netoring)
  %40 = load i32, i32* @peerdied, align 4
  %41 = call i32 @longjmp(i32 %40, i32 -1)
  br label %42

42:                                               ; preds = %33, %29, %25
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %22
  %44 = load i64, i64* @netdata, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i32, i32* %2, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @netoring, i32 0, i32 0), align 8
  %51 = load i32, i32* %2, align 4
  %52 = call i32 @Dump(i8 signext 62, i64 %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %46, %43
  %54 = load i32, i32* %2, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @ring_consumed(%struct.TYPE_7__* @netoring, i32 %57)
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %2, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = call i32 @ring_full_consecutive(%struct.TYPE_7__* @netoring)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 @netflush()
  br label %67

67:                                               ; preds = %65, %62, %56
  store i32 1, i32* %1, align 4
  br label %69

68:                                               ; preds = %53
  store i32 0, i32* %1, align 4
  br label %69

69:                                               ; preds = %68, %67
  %70 = load i32, i32* %1, align 4
  ret i32 %70
}

declare dso_local i32 @ring_full_consecutive(%struct.TYPE_7__*) #1

declare dso_local i32 @ring_at_mark(%struct.TYPE_7__*) #1

declare dso_local i32 @send(i32, i8*, i32, i32) #1

declare dso_local i32 @setcommandmode(...) #1

declare dso_local i32 @perror(i32) #1

declare dso_local i32 @NetClose(i32) #1

declare dso_local i32 @ring_clear_mark(%struct.TYPE_7__*) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @Dump(i8 signext, i64, i32) #1

declare dso_local i32 @ring_consumed(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
