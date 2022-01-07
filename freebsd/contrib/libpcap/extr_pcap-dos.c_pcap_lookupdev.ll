; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dos.c_pcap_lookupdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dos.c_pcap_lookupdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64, i64 (%struct.device*)*, %struct.device* }

@dev_base = common dso_local global i64 0, align 8
@probed_dev = common dso_local global %struct.device* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"No driver found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pcap_lookupdev(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.device*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i64, i64* @dev_base, align 8
  %6 = inttoptr i64 %5 to %struct.device*
  store %struct.device* %6, %struct.device** %4, align 8
  br label %7

7:                                                ; preds = %29, %1
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = icmp ne %struct.device* %8, null
  br i1 %9, label %10, label %33

10:                                               ; preds = %7
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 1
  %13 = load i64 (%struct.device*)*, i64 (%struct.device*)** %12, align 8
  %14 = call i32 @PCAP_ASSERT(i64 (%struct.device*)* %13)
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 1
  %17 = load i64 (%struct.device*)*, i64 (%struct.device*)** %16, align 8
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i64 %17(%struct.device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %10
  %22 = call i32 (...) @FLUSHK()
  %23 = load %struct.device*, %struct.device** %4, align 8
  store %struct.device* %23, %struct.device** @probed_dev, align 8
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %2, align 8
  br label %40

28:                                               ; preds = %10
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = getelementptr inbounds %struct.device, %struct.device* %30, i32 0, i32 2
  %32 = load %struct.device*, %struct.device** %31, align 8
  store %struct.device* %32, %struct.device** %4, align 8
  br label %7

33:                                               ; preds = %7
  %34 = load i8*, i8** %3, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @strcpy(i8* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %33
  store i8* null, i8** %2, align 8
  br label %40

40:                                               ; preds = %39, %21
  %41 = load i8*, i8** %2, align 8
  ret i8* %41
}

declare dso_local i32 @PCAP_ASSERT(i64 (%struct.device*)*) #1

declare dso_local i32 @FLUSHK(...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
