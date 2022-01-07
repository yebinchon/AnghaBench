; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_linux_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_linux_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32* }
%struct.linux_socket_args = type { i32, i32, i32 }

@LINUX_SOCK_TYPE_MASK = common dso_local global i32 0, align 4
@LINUX_SOCK_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@IPPROTO_RAW = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_HDRINCL = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_V6ONLY = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_socket(%struct.thread* %0, %struct.linux_socket_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_socket_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_socket_args* %1, %struct.linux_socket_args** %5, align 8
  %10 = load %struct.linux_socket_args*, %struct.linux_socket_args** %5, align 8
  %11 = getelementptr inbounds %struct.linux_socket_args, %struct.linux_socket_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @LINUX_SOCK_TYPE_MASK, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @LINUX_SOCK_MAX, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %2
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %3, align 4
  br label %88

23:                                               ; preds = %17
  %24 = load %struct.linux_socket_args*, %struct.linux_socket_args** %5, align 8
  %25 = getelementptr inbounds %struct.linux_socket_args, %struct.linux_socket_args* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @LINUX_SOCK_TYPE_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = call i32 @linux_set_socket_flags(i32 %29, i32* %8)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %88

35:                                               ; preds = %23
  %36 = load %struct.linux_socket_args*, %struct.linux_socket_args** %5, align 8
  %37 = getelementptr inbounds %struct.linux_socket_args, %struct.linux_socket_args* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @linux_to_bsd_domain(i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %43, i32* %3, align 4
  br label %88

44:                                               ; preds = %35
  %45 = load %struct.thread*, %struct.thread** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.linux_socket_args*, %struct.linux_socket_args** %5, align 8
  %49 = getelementptr inbounds %struct.linux_socket_args, %struct.linux_socket_args* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @kern_socket(%struct.thread* %45, i32 %46, i32 %47, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %88

56:                                               ; preds = %44
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @SOCK_RAW, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %86

60:                                               ; preds = %56
  %61 = load %struct.linux_socket_args*, %struct.linux_socket_args** %5, align 8
  %62 = getelementptr inbounds %struct.linux_socket_args, %struct.linux_socket_args* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IPPROTO_RAW, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %71, label %66

66:                                               ; preds = %60
  %67 = load %struct.linux_socket_args*, %struct.linux_socket_args** %5, align 8
  %68 = getelementptr inbounds %struct.linux_socket_args, %struct.linux_socket_args* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %66, %60
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @PF_INET, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  store i32 1, i32* %9, align 4
  %76 = load %struct.thread*, %struct.thread** %4, align 8
  %77 = load %struct.thread*, %struct.thread** %4, align 8
  %78 = getelementptr inbounds %struct.thread, %struct.thread* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @IPPROTO_IP, align 4
  %83 = load i32, i32* @IP_HDRINCL, align 4
  %84 = load i32, i32* @UIO_SYSSPACE, align 4
  %85 = call i32 @kern_setsockopt(%struct.thread* %76, i32 %81, i32 %82, i32 %83, i32* %9, i32 %84, i32 4)
  br label %86

86:                                               ; preds = %75, %71, %66, %56
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %54, %42, %33, %21
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @linux_set_socket_flags(i32, i32*) #1

declare dso_local i32 @linux_to_bsd_domain(i32) #1

declare dso_local i32 @kern_socket(%struct.thread*, i32, i32, i32) #1

declare dso_local i32 @kern_setsockopt(%struct.thread*, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
