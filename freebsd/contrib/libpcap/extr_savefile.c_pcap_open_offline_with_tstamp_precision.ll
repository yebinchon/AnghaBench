; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_savefile.c_pcap_open_offline_with_tstamp_precision.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_savefile.c_pcap_open_offline_with_tstamp_precision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"A null pointer was supplied as the file name\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pcap_open_offline_with_tstamp_precision(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %15 = call i32 @pcap_snprintf(i8* %13, i32 %14, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %59

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 45
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32*, i32** @stdin, align 8
  store i32* %29, i32** %8, align 8
  br label %42

30:                                               ; preds = %22, %16
  %31 = load i8*, i8** %5, align 8
  %32 = call i32* @fopen(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %38 = load i32, i32* @errno, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @pcap_fmt_errmsg_for_errno(i8* %36, i32 %37, i32 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  store i32* null, i32** %4, align 8
  br label %59

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41, %28
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = call i32* @pcap_fopen_offline_with_tstamp_precision(i32* %43, i32 %44, i8* %45)
  store i32* %46, i32** %9, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = load i32*, i32** %8, align 8
  %51 = load i32*, i32** @stdin, align 8
  %52 = icmp ne i32* %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @fclose(i32* %54)
  br label %56

56:                                               ; preds = %53, %49
  br label %57

57:                                               ; preds = %56, %42
  %58 = load i32*, i32** %9, align 8
  store i32* %58, i32** %4, align 8
  br label %59

59:                                               ; preds = %57, %35, %12
  %60 = load i32*, i32** %4, align 8
  ret i32* %60
}

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i8*, i32, i32, i8*, i8*) #1

declare dso_local i32* @pcap_fopen_offline_with_tstamp_precision(i32*, i32, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
