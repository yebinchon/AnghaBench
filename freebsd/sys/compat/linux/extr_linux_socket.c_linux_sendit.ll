; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_linux_sendit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_linux_sendit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.msghdr = type { i32, %struct.sockaddr* }
%struct.sockaddr = type { i32 }
%struct.mbuf = type { i32 }

@M_SONAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, %struct.msghdr*, i32, %struct.mbuf*, i32)* @linux_sendit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_sendit(%struct.thread* %0, i32 %1, %struct.msghdr* %2, i32 %3, %struct.mbuf* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.msghdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sockaddr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.msghdr* %2, %struct.msghdr** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.mbuf* %4, %struct.mbuf** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.msghdr*, %struct.msghdr** %10, align 8
  %18 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %17, i32 0, i32 1
  %19 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8
  %20 = icmp ne %struct.sockaddr* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %6
  %22 = load %struct.msghdr*, %struct.msghdr** %10, align 8
  %23 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %16, align 4
  %25 = load %struct.msghdr*, %struct.msghdr** %10, align 8
  %26 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %25, i32 0, i32 1
  %27 = load %struct.sockaddr*, %struct.sockaddr** %26, align 8
  %28 = call i32 @linux_to_bsd_sockaddr(%struct.sockaddr* %27, %struct.sockaddr** %14, i32* %16)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* %15, align 4
  store i32 %32, i32* %7, align 4
  br label %55

33:                                               ; preds = %21
  %34 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %35 = load %struct.msghdr*, %struct.msghdr** %10, align 8
  %36 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %35, i32 0, i32 1
  store %struct.sockaddr* %34, %struct.sockaddr** %36, align 8
  br label %38

37:                                               ; preds = %6
  store %struct.sockaddr* null, %struct.sockaddr** %14, align 8
  br label %38

38:                                               ; preds = %37, %33
  %39 = load %struct.thread*, %struct.thread** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.msghdr*, %struct.msghdr** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @linux_to_bsd_msg_flags(i32 %42)
  %44 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @kern_sendit(%struct.thread* %39, i32 %40, %struct.msghdr* %41, i32 %43, %struct.mbuf* %44, i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %48 = icmp ne %struct.sockaddr* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %38
  %50 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %51 = load i32, i32* @M_SONAME, align 4
  %52 = call i32 @free(%struct.sockaddr* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %38
  %54 = load i32, i32* %15, align 4
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %53, %31
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32 @linux_to_bsd_sockaddr(%struct.sockaddr*, %struct.sockaddr**, i32*) #1

declare dso_local i32 @kern_sendit(%struct.thread*, i32, %struct.msghdr*, i32, %struct.mbuf*, i32) #1

declare dso_local i32 @linux_to_bsd_msg_flags(i32) #1

declare dso_local i32 @free(%struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
