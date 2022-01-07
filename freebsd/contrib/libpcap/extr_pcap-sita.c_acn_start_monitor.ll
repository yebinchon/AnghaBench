; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-sita.c_acn_start_monitor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-sita.c_acn_start_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32)* @acn_start_monitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acn_start_monitor(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [8 x i8], align 1
  %12 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @find_unit_by_fd(i32 %13, i32* null, i32* null, %struct.TYPE_3__** %12)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %5
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  store i8 77, i8* %20, align 1
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @htonl(i32 %21)
  %23 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 1
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = load i32, i32* %8, align 4
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 5
  store i8 %26, i8* %27, align 1
  %28 = load i32, i32* %9, align 4
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 6
  store i8 %29, i8* %30, align 1
  %31 = load i32, i32* %10, align 4
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 7
  store i8 %32, i8* %33, align 1
  %34 = load i32, i32* %6, align 4
  %35 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %36 = call i32 @send_to_fd(i32 %34, i32 8, i8* %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %19, %5
  ret void
}

declare dso_local i32 @find_unit_by_fd(i32, i32*, i32*, %struct.TYPE_3__**) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @send_to_fd(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
