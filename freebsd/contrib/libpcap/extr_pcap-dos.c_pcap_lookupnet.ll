; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dos.c_pcap_lookupnet.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dos.c_pcap_lookupnet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_watt_is_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"pcap_open_offline() or pcap_activate() must be called first\00", align 1
@_w32_sin_mask = common dso_local global i32 0, align 4
@my_ip_addr = common dso_local global i32 0, align 4
@IN_CLASSA_NET = common dso_local global i32 0, align 4
@IN_CLASSB_NET = common dso_local global i32 0, align 4
@IN_CLASSC_NET = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"inet class for 0x%lx unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcap_lookupnet(i8* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* @_watt_is_init, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i8*, i8** %9, align 8
  %16 = call i32 @strcpy(i8* %15, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %62

17:                                               ; preds = %4
  %18 = load i32, i32* @_w32_sin_mask, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* @my_ip_addr, align 4
  %20 = load i32, i32* %10, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %17
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @IN_CLASSA(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @IN_CLASSA_NET, align 4
  store i32 %30, i32* %11, align 4
  br label %52

31:                                               ; preds = %24
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @IN_CLASSB(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @IN_CLASSB_NET, align 4
  store i32 %37, i32* %11, align 4
  br label %51

38:                                               ; preds = %31
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @IN_CLASSC(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @IN_CLASSC_NET, align 4
  store i32 %44, i32* %11, align 4
  br label %50

45:                                               ; preds = %38
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @pcap_snprintf(i8* %46, i32 %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  store i32 -1, i32* %5, align 4
  br label %62

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %36
  br label %52

52:                                               ; preds = %51, %29
  br label %53

53:                                               ; preds = %52, %17
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @htonl(i32 %54)
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @htonl(i32 %57)
  %59 = load i32*, i32** %8, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @ARGSUSED(i8* %60)
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %53, %45, %14
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @IN_CLASSA(i32) #1

declare dso_local i64 @IN_CLASSB(i32) #1

declare dso_local i64 @IN_CLASSC(i32) #1

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ARGSUSED(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
