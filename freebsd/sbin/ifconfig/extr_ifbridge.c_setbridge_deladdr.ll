; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifbridge.c_setbridge_deladdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifbridge.c_setbridge_deladdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afswtch = type { i32 }
%struct.ifbareq = type { i32 }
%struct.ether_addr = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"invalid address: %s\00", align 1
@BRDGDADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"BRDGDADDR %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, %struct.afswtch*)* @setbridge_deladdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setbridge_deladdr(i8* %0, i32 %1, i32 %2, %struct.afswtch* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.afswtch*, align 8
  %9 = alloca %struct.ifbareq, align 4
  %10 = alloca %struct.ether_addr*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.afswtch* %3, %struct.afswtch** %8, align 8
  %11 = call i32 @memset(%struct.ifbareq* %9, i32 0, i32 4)
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct.ether_addr* @ether_aton(i8* %12)
  store %struct.ether_addr* %13, %struct.ether_addr** %10, align 8
  %14 = load %struct.ether_addr*, %struct.ether_addr** %10, align 8
  %15 = icmp eq %struct.ether_addr* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %16, %4
  %20 = getelementptr inbounds %struct.ifbareq, %struct.ifbareq* %9, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ether_addr*, %struct.ether_addr** %10, align 8
  %23 = getelementptr inbounds %struct.ether_addr, %struct.ether_addr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @memcpy(i32 %21, i32 %24, i32 4)
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @BRDGDADDR, align 4
  %28 = call i64 @do_cmd(i32 %26, i32 %27, %struct.ifbareq* %9, i32 4, i32 1)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %30, %19
  ret void
}

declare dso_local i32 @memset(%struct.ifbareq*, i32, i32) #1

declare dso_local %struct.ether_addr* @ether_aton(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @do_cmd(i32, i32, %struct.ifbareq*, i32, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
