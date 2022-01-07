; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-bt-monitor-linux.c_bt_monitor_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-bt-monitor-linux.c_bt_monitor_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@INTERFACE_NAME = common dso_local global i32 0, align 4
@bt_monitor_activate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @bt_monitor_create(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i8* @strrchr(i8* %10, i8 signext 47)
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %9, align 8
  br label %16

16:                                               ; preds = %14, %3
  %17 = load i8*, i8** %9, align 8
  %18 = load i32, i32* @INTERFACE_NAME, align 4
  %19 = call i64 @strcmp(i8* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32*, i32** %7, align 8
  store i32 0, i32* %22, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %35

23:                                               ; preds = %16
  %24 = load i32*, i32** %7, align 8
  store i32 1, i32* %24, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call %struct.TYPE_4__* @pcap_create_common(i8* %25, i32 0)
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %8, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = icmp eq %struct.TYPE_4__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %35

30:                                               ; preds = %23
  %31 = load i32, i32* @bt_monitor_activate, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %4, align 8
  br label %35

35:                                               ; preds = %30, %29, %21
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  ret %struct.TYPE_4__* %36
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local %struct.TYPE_4__* @pcap_create_common(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
