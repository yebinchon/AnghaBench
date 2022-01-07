; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_packet.c_assemble_hw_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_packet.c_assemble_hw_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ether_header* }
%struct.ether_header = type { i8*, i8*, i32 }

@ETHERTYPE_IP = common dso_local global i32 0, align 4
@ETHER_HEADER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @assemble_hw_header(%struct.interface_info* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.interface_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ether_header, align 8
  store %struct.interface_info* %0, %struct.interface_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @memset(i8* %9, i32 255, i32 8)
  %11 = load %struct.interface_info*, %struct.interface_info** %4, align 8
  %12 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = icmp eq i64 %15, 8
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %7, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.interface_info*, %struct.interface_info** %4, align 8
  %21 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.ether_header*, %struct.ether_header** %22, align 8
  %24 = call i32 @memcpy(i8* %19, %struct.ether_header* %23, i32 8)
  br label %29

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %7, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @memset(i8* %27, i32 0, i32 8)
  br label %29

29:                                               ; preds = %25, %17
  %30 = load i32, i32* @ETHERTYPE_IP, align 4
  %31 = call i32 @htons(i32 %30)
  %32 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %7, i32 0, i32 2
  store i32 %31, i32* %32, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = load i32, i32* @ETHER_HEADER_SIZE, align 4
  %39 = call i32 @memcpy(i8* %37, %struct.ether_header* %7, i32 %38)
  %40 = load i32, i32* @ETHER_HEADER_SIZE, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, %40
  store i32 %43, i32* %41, align 4
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, %struct.ether_header*, i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
