; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libnv/extr_msgio.c_msghdr_add_fd.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libnv/extr_msgio.c_msghdr_add_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmsghdr = type { i32, i32, i32 }

@SOL_SOCKET = common dso_local global i32 0, align 4
@SCM_RIGHTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmsghdr*, i32)* @msghdr_add_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msghdr_add_fd(%struct.cmsghdr* %0, i32 %1) #0 {
  %3 = alloca %struct.cmsghdr*, align 8
  %4 = alloca i32, align 4
  store %struct.cmsghdr* %0, %struct.cmsghdr** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sge i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @PJDLOG_ASSERT(i32 %7)
  %9 = load i32, i32* @SOL_SOCKET, align 4
  %10 = load %struct.cmsghdr*, %struct.cmsghdr** %3, align 8
  %11 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @SCM_RIGHTS, align 4
  %13 = load %struct.cmsghdr*, %struct.cmsghdr** %3, align 8
  %14 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = call i32 @CMSG_LEN(i32 4)
  %16 = load %struct.cmsghdr*, %struct.cmsghdr** %3, align 8
  %17 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.cmsghdr*, %struct.cmsghdr** %3, align 8
  %19 = call i32 @CMSG_DATA(%struct.cmsghdr* %18)
  %20 = call i32 @bcopy(i32* %4, i32 %19, i32 4)
  ret i32 0
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @CMSG_LEN(i32) #1

declare dso_local i32 @bcopy(i32*, i32, i32) #1

declare dso_local i32 @CMSG_DATA(%struct.cmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
