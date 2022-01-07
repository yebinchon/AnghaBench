; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_linux_sendmmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_linux_sendmmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32* }
%struct.linux_sendmmsg_args = type { i32, i32, i32, i32 }
%struct.l_mmsghdr = type { i32, i32 }

@UIO_MAXIOV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_sendmmsg(%struct.thread* %0, %struct.linux_sendmmsg_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.linux_sendmmsg_args*, align 8
  %5 = alloca %struct.l_mmsghdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.linux_sendmmsg_args* %1, %struct.linux_sendmmsg_args** %4, align 8
  %9 = load %struct.linux_sendmmsg_args*, %struct.linux_sendmmsg_args** %4, align 8
  %10 = getelementptr inbounds %struct.linux_sendmmsg_args, %struct.linux_sendmmsg_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @UIO_MAXIOV, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @UIO_MAXIOV, align 4
  %16 = load %struct.linux_sendmmsg_args*, %struct.linux_sendmmsg_args** %4, align 8
  %17 = getelementptr inbounds %struct.linux_sendmmsg_args, %struct.linux_sendmmsg_args* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %14, %2
  %19 = load %struct.linux_sendmmsg_args*, %struct.linux_sendmmsg_args** %4, align 8
  %20 = getelementptr inbounds %struct.linux_sendmmsg_args, %struct.linux_sendmmsg_args* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.l_mmsghdr* @PTRIN(i32 %21)
  store %struct.l_mmsghdr* %22, %struct.l_mmsghdr** %5, align 8
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %55, %18
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.linux_sendmmsg_args*, %struct.linux_sendmmsg_args** %4, align 8
  %26 = getelementptr inbounds %struct.linux_sendmmsg_args, %struct.linux_sendmmsg_args* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %60

29:                                               ; preds = %23
  %30 = load %struct.thread*, %struct.thread** %3, align 8
  %31 = load %struct.linux_sendmmsg_args*, %struct.linux_sendmmsg_args** %4, align 8
  %32 = getelementptr inbounds %struct.linux_sendmmsg_args, %struct.linux_sendmmsg_args* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.l_mmsghdr*, %struct.l_mmsghdr** %5, align 8
  %35 = getelementptr inbounds %struct.l_mmsghdr, %struct.l_mmsghdr* %34, i32 0, i32 1
  %36 = load %struct.linux_sendmmsg_args*, %struct.linux_sendmmsg_args** %4, align 8
  %37 = getelementptr inbounds %struct.linux_sendmmsg_args, %struct.linux_sendmmsg_args* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @linux_sendmsg_common(%struct.thread* %30, i32 %33, i32* %35, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %60

43:                                               ; preds = %29
  %44 = load %struct.thread*, %struct.thread** %3, align 8
  %45 = getelementptr inbounds %struct.thread, %struct.thread* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %6, align 4
  %49 = load %struct.l_mmsghdr*, %struct.l_mmsghdr** %5, align 8
  %50 = getelementptr inbounds %struct.l_mmsghdr, %struct.l_mmsghdr* %49, i32 0, i32 0
  %51 = call i32 @copyout(i32* %6, i32* %50, i32 4)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %60

55:                                               ; preds = %43
  %56 = load %struct.l_mmsghdr*, %struct.l_mmsghdr** %5, align 8
  %57 = getelementptr inbounds %struct.l_mmsghdr, %struct.l_mmsghdr* %56, i32 1
  store %struct.l_mmsghdr* %57, %struct.l_mmsghdr** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %23

60:                                               ; preds = %54, %42, %23
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.thread*, %struct.thread** %3, align 8
  %66 = getelementptr inbounds %struct.thread, %struct.thread* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 %64, i32* %68, align 4
  br label %69

69:                                               ; preds = %63, %60
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local %struct.l_mmsghdr* @PTRIN(i32) #1

declare dso_local i32 @linux_sendmsg_common(%struct.thread*, i32, i32*, i32) #1

declare dso_local i32 @copyout(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
