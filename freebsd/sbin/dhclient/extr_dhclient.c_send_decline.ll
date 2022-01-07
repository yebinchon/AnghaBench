; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_send_decline.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_send_decline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface_info = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"DHCPDECLINE on %s to %s port %d\00", align 1
@inaddr_broadcast = common dso_local global i32 0, align 4
@REMOTE_PORT = common dso_local global i32 0, align 4
@privfd = common dso_local global i32 0, align 4
@inaddr_any = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_decline(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.interface_info*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.interface_info*
  store %struct.interface_info* %5, %struct.interface_info** %3, align 8
  %6 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %7 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @inaddr_broadcast, align 4
  %10 = call i32 @inet_ntoa(i32 %9)
  %11 = load i32, i32* @REMOTE_PORT, align 4
  %12 = call i32 @note(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %10, i32 %11)
  %13 = load i32, i32* @privfd, align 4
  %14 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %15 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %19 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @inaddr_any, align 4
  %24 = load i32, i32* @inaddr_broadcast, align 4
  %25 = call i32 @send_packet_unpriv(i32 %13, i32* %17, i32 %22, i32 %23, i32 %24)
  ret void
}

declare dso_local i32 @note(i8*, i32, i32, i32) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @send_packet_unpriv(i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
