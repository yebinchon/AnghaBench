; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_socket.c_cmsg_space.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_socket.c_cmsg_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i8*, i32 }
%struct.cmsghdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cmsg_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmsg_space(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.msghdr, align 8
  %5 = alloca %struct.cmsghdr*, align 8
  %6 = alloca [1028 x i8], align 16
  store i32 %0, i32* %3, align 4
  %7 = call i32 @memset(%struct.msghdr* %4, i32 0, i32 16)
  %8 = getelementptr inbounds [1028 x i8], [1028 x i8]* %6, i64 0, i64 0
  %9 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %4, i32 0, i32 0
  store i8* %8, i8** %9, align 8
  %10 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %4, i32 0, i32 1
  store i32 1028, i32* %10, align 8
  %11 = getelementptr inbounds [1028 x i8], [1028 x i8]* %6, i64 0, i64 0
  %12 = bitcast i8* %11 to %struct.cmsghdr*
  store %struct.cmsghdr* %12, %struct.cmsghdr** %5, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @cmsg_len(i32 %13)
  %15 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %16 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %18 = call %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr* %4, %struct.cmsghdr* %17)
  store %struct.cmsghdr* %18, %struct.cmsghdr** %5, align 8
  %19 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %20 = icmp ne %struct.cmsghdr* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %23 = bitcast %struct.cmsghdr* %22 to i8*
  %24 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %4, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = ptrtoint i8* %23 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %2, align 4
  br label %31

30:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %21
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @memset(%struct.msghdr*, i32, i32) #1

declare dso_local i32 @cmsg_len(i32) #1

declare dso_local %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr*, %struct.cmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
