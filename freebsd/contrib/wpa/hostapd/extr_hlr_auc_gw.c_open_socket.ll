; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hlr_auc_gw.c_open_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hlr_auc_gw.c_open_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32 }
%struct.sockaddr = type { i32 }

@PF_UNIX = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"socket(PF_UNIX)\00", align 1
@AF_UNIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"hlr-auc-gw: bind(PF_UNIX)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @open_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_socket(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sockaddr_un, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i32, i32* @PF_UNIX, align 4
  %7 = load i32, i32* @SOCK_DGRAM, align 4
  %8 = call i32 @socket(i32 %6, i32 %7, i32 0)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %31

13:                                               ; preds = %1
  %14 = call i32 @memset(%struct.sockaddr_un* %4, i32 0, i32 8)
  %15 = load i32, i32* @AF_UNIX, align 4
  %16 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @os_strlcpy(i32 %18, i8* %19, i32 4)
  %21 = load i32, i32* %5, align 4
  %22 = bitcast %struct.sockaddr_un* %4 to %struct.sockaddr*
  %23 = call i64 @bind(i32 %21, %struct.sockaddr* %22, i32 8)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %13
  %26 = call i32 @perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @close(i32 %27)
  store i32 -1, i32* %2, align 4
  br label %31

29:                                               ; preds = %13
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %25, %11
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i32 @os_strlcpy(i32, i8*, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
