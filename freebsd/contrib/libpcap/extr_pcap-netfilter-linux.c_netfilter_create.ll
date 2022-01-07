; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-netfilter-linux.c_netfilter_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-netfilter-linux.c_netfilter_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@NFLOG_IFACE = common dso_local global i32 0, align 4
@NFQUEUE_IFACE = common dso_local global i32 0, align 4
@netfilter_activate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @netfilter_create(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i8* @strrchr(i8* %10, i8 signext 47)
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %8, align 8
  br label %16

16:                                               ; preds = %14, %3
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* @NFLOG_IFACE, align 4
  %19 = call i64 @strncmp(i8* %17, i32 %18, i32 3)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 3
  store i8* %23, i8** %8, align 8
  br label %35

24:                                               ; preds = %16
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* @NFQUEUE_IFACE, align 4
  %27 = call i64 @strncmp(i8* %25, i32 %26, i32 3)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 3
  store i8* %31, i8** %8, align 8
  br label %34

32:                                               ; preds = %24
  %33 = load i32*, i32** %7, align 8
  store i32 0, i32* %33, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %59

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %21
  %36 = load i8*, i8** %8, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 58
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i8*, i8** %8, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32*, i32** %7, align 8
  store i32 0, i32* %46, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %59

47:                                               ; preds = %40, %35
  %48 = load i32*, i32** %7, align 8
  store i32 1, i32* %48, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = call %struct.TYPE_4__* @pcap_create_common(i8* %49, i32 4)
  store %struct.TYPE_4__* %50, %struct.TYPE_4__** %9, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %52 = icmp eq %struct.TYPE_4__* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %59

54:                                               ; preds = %47
  %55 = load i32, i32* @netfilter_activate, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %58, %struct.TYPE_4__** %4, align 8
  br label %59

59:                                               ; preds = %54, %53, %45, %32
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  ret %struct.TYPE_4__* %60
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @pcap_create_common(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
