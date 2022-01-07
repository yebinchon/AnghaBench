; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_linux_socketpair.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_linux_socketpair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_socketpair_args = type { i32, i64, i32, i32 }
%struct.socketpair_args = type { i64, i32, i32*, i64 }

@PF_LOCAL = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@LINUX_SOCK_TYPE_MASK = common dso_local global i32 0, align 4
@LINUX_SOCK_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PF_UNIX = common dso_local global i64 0, align 8
@EPROTONOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_socketpair(%struct.thread* %0, %struct.linux_socketpair_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_socketpair_args*, align 8
  %6 = alloca %struct.socketpair_args, align 8
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_socketpair_args* %1, %struct.linux_socketpair_args** %5, align 8
  %8 = load %struct.linux_socketpair_args*, %struct.linux_socketpair_args** %5, align 8
  %9 = getelementptr inbounds %struct.linux_socketpair_args, %struct.linux_socketpair_args* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @linux_to_bsd_domain(i32 %10)
  %12 = getelementptr inbounds %struct.socketpair_args, %struct.socketpair_args* %6, i32 0, i32 0
  store i64 %11, i64* %12, align 8
  %13 = getelementptr inbounds %struct.socketpair_args, %struct.socketpair_args* %6, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PF_LOCAL, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %18, i32* %3, align 4
  br label %73

19:                                               ; preds = %2
  %20 = load %struct.linux_socketpair_args*, %struct.linux_socketpair_args** %5, align 8
  %21 = getelementptr inbounds %struct.linux_socketpair_args, %struct.linux_socketpair_args* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @LINUX_SOCK_TYPE_MASK, align 4
  %24 = and i32 %22, %23
  %25 = getelementptr inbounds %struct.socketpair_args, %struct.socketpair_args* %6, i32 0, i32 1
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.socketpair_args, %struct.socketpair_args* %6, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.socketpair_args, %struct.socketpair_args* %6, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @LINUX_SOCK_MAX, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29, %19
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %3, align 4
  br label %73

36:                                               ; preds = %29
  %37 = load %struct.linux_socketpair_args*, %struct.linux_socketpair_args** %5, align 8
  %38 = getelementptr inbounds %struct.linux_socketpair_args, %struct.linux_socketpair_args* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @LINUX_SOCK_TYPE_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = getelementptr inbounds %struct.socketpair_args, %struct.socketpair_args* %6, i32 0, i32 1
  %44 = call i32 @linux_set_socket_flags(i32 %42, i32* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %73

49:                                               ; preds = %36
  %50 = load %struct.linux_socketpair_args*, %struct.linux_socketpair_args** %5, align 8
  %51 = getelementptr inbounds %struct.linux_socketpair_args, %struct.linux_socketpair_args* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.linux_socketpair_args*, %struct.linux_socketpair_args** %5, align 8
  %56 = getelementptr inbounds %struct.linux_socketpair_args, %struct.linux_socketpair_args* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PF_UNIX, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @EPROTONOSUPPORT, align 4
  store i32 %61, i32* %3, align 4
  br label %73

62:                                               ; preds = %54, %49
  %63 = getelementptr inbounds %struct.socketpair_args, %struct.socketpair_args* %6, i32 0, i32 3
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %62
  %65 = load %struct.linux_socketpair_args*, %struct.linux_socketpair_args** %5, align 8
  %66 = getelementptr inbounds %struct.linux_socketpair_args, %struct.linux_socketpair_args* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @PTRIN(i32 %67)
  %69 = inttoptr i64 %68 to i32*
  %70 = getelementptr inbounds %struct.socketpair_args, %struct.socketpair_args* %6, i32 0, i32 2
  store i32* %69, i32** %70, align 8
  %71 = load %struct.thread*, %struct.thread** %4, align 8
  %72 = call i32 @sys_socketpair(%struct.thread* %71, %struct.socketpair_args* %6)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %64, %60, %47, %34, %17
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @linux_to_bsd_domain(i32) #1

declare dso_local i32 @linux_set_socket_flags(i32, i32*) #1

declare dso_local i64 @PTRIN(i32) #1

declare dso_local i32 @sys_socketpair(%struct.thread*, %struct.socketpair_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
