; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ipfilter/ipsend/extr_sirix.c_initdevice.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ipfilter/ipsend/extr_sirix.c_initdevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_raw = type { i32, i32, i32 }

@PF_RAW = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@RAWPROTO_DRAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"socket(PF_RAW, SOCK_RAW, RAWPROTO_DRAIN)\00", align 1
@AF_RAW = common dso_local global i32 0, align 4
@ETHERTYPE_IP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"bind AF_RAW\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @initdevice(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_raw, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @PF_RAW, align 4
  %9 = load i32, i32* @SOCK_RAW, align 4
  %10 = load i32, i32* @RAWPROTO_DRAIN, align 4
  %11 = call i32 @socket(i32 %8, i32 %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @perror(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %34

15:                                               ; preds = %2
  %16 = call i32 @memset(%struct.sockaddr_raw* %7, i32 0, i32 12)
  %17 = load i32, i32* @AF_RAW, align 4
  %18 = getelementptr inbounds %struct.sockaddr_raw, %struct.sockaddr_raw* %7, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @ETHERTYPE_IP, align 4
  %20 = getelementptr inbounds %struct.sockaddr_raw, %struct.sockaddr_raw* %7, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.sockaddr_raw, %struct.sockaddr_raw* %7, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @strncpy(i32 %22, i8* %23, i32 4)
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @bind(i32 %25, %struct.sockaddr_raw* %7, i32 12)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %15
  %29 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @close(i32 %30)
  store i32 -1, i32* %3, align 4
  br label %34

32:                                               ; preds = %15
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %28, %13
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @memset(%struct.sockaddr_raw*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr_raw*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
