; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sf-pcapng.c_read_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sf-pcapng.c_read_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"error reading dump file\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"truncated dump file; tried to read %lu bytes, only got %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i32, i8*)* @read_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_bytes(i32* %0, i8* %1, i64 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i64 @fread(i8* %13, i32 1, i64 %14, i32* %15)
  store i64 %16, i64* %12, align 8
  %17 = load i64, i64* %12, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %5
  %21 = load i32*, i32** %7, align 8
  %22 = call i64 @ferror(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i8*, i8** %11, align 8
  %26 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @pcap_fmt_errmsg_for_errno(i8* %25, i32 %26, i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %42

29:                                               ; preds = %20
  %30 = load i64, i64* %12, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %44

36:                                               ; preds = %32, %29
  %37 = load i8*, i8** %11, align 8
  %38 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %12, align 8
  %41 = call i32 @pcap_snprintf(i8* %37, i32 %38, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i64 %39, i64 %40)
  br label %42

42:                                               ; preds = %36, %24
  store i32 -1, i32* %6, align 4
  br label %44

43:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %44

44:                                               ; preds = %43, %42, %35
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i8*, i32, i32, i8*) #1

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
