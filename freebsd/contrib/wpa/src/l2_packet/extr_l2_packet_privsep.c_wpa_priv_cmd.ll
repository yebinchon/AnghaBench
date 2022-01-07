; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_privsep.c_wpa_priv_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_privsep.c_wpa_priv_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2_packet_data = type { i32, i32 }
%struct.msghdr = type { i32, i32, i32*, %struct.iovec* }
%struct.iovec = type { i32*, i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"L2: sendmsg(cmd): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2_packet_data*, i32, i8*, i64)* @wpa_priv_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_priv_cmd(%struct.l2_packet_data* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2_packet_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.msghdr, align 8
  %11 = alloca [2 x %struct.iovec], align 16
  store %struct.l2_packet_data* %0, %struct.l2_packet_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %11, i64 0, i64 0
  %13 = getelementptr inbounds %struct.iovec, %struct.iovec* %12, i32 0, i32 0
  store i32* %7, i32** %13, align 16
  %14 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %11, i64 0, i64 0
  %15 = getelementptr inbounds %struct.iovec, %struct.iovec* %14, i32 0, i32 1
  store i32 4, i32* %15, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to i32*
  %18 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %11, i64 0, i64 1
  %19 = getelementptr inbounds %struct.iovec, %struct.iovec* %18, i32 0, i32 0
  store i32* %17, i32** %19, align 16
  %20 = load i64, i64* %9, align 8
  %21 = trunc i64 %20 to i32
  %22 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %11, i64 0, i64 1
  %23 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = call i32 @os_memset(%struct.msghdr* %10, i32 0, i32 24)
  %25 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %11, i64 0, i64 0
  %26 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 3
  store %struct.iovec* %25, %struct.iovec** %26, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 2, i32 1
  %31 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load %struct.l2_packet_data*, %struct.l2_packet_data** %6, align 8
  %33 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 2
  store i32* %33, i32** %34, align 8
  %35 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 1
  store i32 4, i32* %35, align 4
  %36 = load %struct.l2_packet_data*, %struct.l2_packet_data** %6, align 8
  %37 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @sendmsg(i32 %38, %struct.msghdr* %10, i32 0)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %4
  %42 = load i32, i32* @MSG_ERROR, align 4
  %43 = load i32, i32* @errno, align 4
  %44 = call i32 @strerror(i32 %43)
  %45 = call i32 @wpa_printf(i32 %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %44)
  store i32 -1, i32* %5, align 4
  br label %47

46:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %41
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @os_memset(%struct.msghdr*, i32, i32) #1

declare dso_local i64 @sendmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
