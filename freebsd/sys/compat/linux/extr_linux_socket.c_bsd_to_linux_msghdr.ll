; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_bsd_to_linux_msghdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_bsd_to_linux_msghdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32, i32, i32, i32, i32 }
%struct.l_msghdr = type { i8*, i32, i8*, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msghdr*, %struct.l_msghdr*)* @bsd_to_linux_msghdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsd_to_linux_msghdr(%struct.msghdr* %0, %struct.l_msghdr* %1) #0 {
  %3 = alloca %struct.msghdr*, align 8
  %4 = alloca %struct.l_msghdr*, align 8
  store %struct.msghdr* %0, %struct.msghdr** %3, align 8
  store %struct.l_msghdr* %1, %struct.l_msghdr** %4, align 8
  %5 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %6 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @PTROUT(i32 %7)
  %9 = load %struct.l_msghdr*, %struct.l_msghdr** %4, align 8
  %10 = getelementptr inbounds %struct.l_msghdr, %struct.l_msghdr* %9, i32 0, i32 4
  store i8* %8, i8** %10, align 8
  %11 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %12 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.l_msghdr*, %struct.l_msghdr** %4, align 8
  %15 = getelementptr inbounds %struct.l_msghdr, %struct.l_msghdr* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %17 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @PTROUT(i32 %18)
  %20 = load %struct.l_msghdr*, %struct.l_msghdr** %4, align 8
  %21 = getelementptr inbounds %struct.l_msghdr, %struct.l_msghdr* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %23 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.l_msghdr*, %struct.l_msghdr** %4, align 8
  %26 = getelementptr inbounds %struct.l_msghdr, %struct.l_msghdr* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %28 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @PTROUT(i32 %29)
  %31 = load %struct.l_msghdr*, %struct.l_msghdr** %4, align 8
  %32 = getelementptr inbounds %struct.l_msghdr, %struct.l_msghdr* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  ret i32 0
}

declare dso_local i8* @PTROUT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
