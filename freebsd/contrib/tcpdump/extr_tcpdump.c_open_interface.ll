; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_tcpdump.c_open_interface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_tcpdump.c_open_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@pflag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"No such device\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@Bflag = common dso_local global i64 0, align 8
@Iflag = common dso_local global i64 0, align 8
@Jflag = common dso_local global i64 0, align 8
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@PCAP_ERROR = common dso_local global i32 0, align 4
@PCAP_ERROR_NO_SUCH_DEVICE = common dso_local global i32 0, align 4
@PCAP_ERROR_PERM_DENIED = common dso_local global i32 0, align 4
@PCAP_ERROR_RFMON_NOTSUP = common dso_local global i32 0, align 4
@PCAP_WARNING = common dso_local global i32 0, align 4
@PCAP_WARNING_PROMISC_NOTSUP = common dso_local global i32 0, align 4
@Qflag = common dso_local global i32 0, align 4
@immediate_mode = common dso_local global i64 0, align 8
@jflag = common dso_local global i32 0, align 4
@supports_monitor_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_3__*, i8*)* @open_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_interface(i8* %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  store i8 0, i8* %9, align 1
  %10 = load i8*, i8** %5, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @pflag, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = load i8*, i8** %7, align 8
  %19 = call i32* @pcap_open_live(i8* %10, i32 %13, i32 %17, i32 1000, i8* %18)
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load i8*, i8** %7, align 8
  %24 = call i32* @strstr(i8* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32* null, i32** %4, align 8
  br label %39

27:                                               ; preds = %22
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %27, %3
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 (i8*, i8*, ...) @warning(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i32*, i32** %8, align 8
  store i32* %38, i32** %4, align 8
  br label %39

39:                                               ; preds = %37, %26
  %40 = load i32*, i32** %4, align 8
  ret i32* %40
}

declare dso_local i32* @pcap_open_live(i8*, i32, i32, i32, i8*) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @error(i8*, i8*, ...) #1

declare dso_local i32 @warning(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
