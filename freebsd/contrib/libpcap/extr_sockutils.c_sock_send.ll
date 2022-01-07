; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sockutils.c_sock_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sockutils.c_sock_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Can't send more than %u bytes with sock_recv\00", align 1
@errno = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"send(): \00", align 1
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@WSAECONNABORTED = common dso_local global i32 0, align 4
@WSAECONNRESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sock_send(i32 %0, i8* %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @INT_MAX, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %5
  %19 = load i8*, i8** %10, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i8*, i8** %10, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i64, i64* @INT_MAX, align 8
  %25 = call i32 @pcap_snprintf(i8* %22, i32 %23, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %24)
  br label %26

26:                                               ; preds = %21, %18
  store i32 -1, i32* %6, align 4
  br label %64

27:                                               ; preds = %5
  %28 = load i64, i64* %9, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %60, %27
  %31 = load i32, i32* %7, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @send(i32 %31, i8* %32, i32 %33, i32 0)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  %38 = load i32, i32* @errno, align 4
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* @ECONNRESET, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @EPIPE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %37
  store i32 -2, i32* %6, align 4
  br label %64

47:                                               ; preds = %42
  %48 = load i32, i32* %14, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @sock_fmterror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %48, i8* %49, i32 %50)
  store i32 -1, i32* %6, align 4
  br label %64

52:                                               ; preds = %30
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %12, align 4
  %55 = sub nsw i32 %54, %53
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %8, align 8
  br label %60

60:                                               ; preds = %52
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %30, label %63

63:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %63, %47, %46, %26
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @send(i32, i8*, i32, i32) #1

declare dso_local i32 @sock_fmterror(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
