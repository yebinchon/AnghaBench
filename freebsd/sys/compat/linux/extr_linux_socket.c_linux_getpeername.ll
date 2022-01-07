; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_linux_getpeername.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_linux_getpeername.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_getpeername_args = type { i32, i32, i32 }
%struct.l_sockaddr = type opaque
%struct.sockaddr = type opaque

@EINVAL = common dso_local global i32 0, align 4
@M_SONAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_getpeername(%struct.thread* %0, %struct.linux_getpeername_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_getpeername_args*, align 8
  %6 = alloca %struct.l_sockaddr*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_getpeername_args* %1, %struct.linux_getpeername_args** %5, align 8
  %10 = load %struct.linux_getpeername_args*, %struct.linux_getpeername_args** %5, align 8
  %11 = getelementptr inbounds %struct.linux_getpeername_args, %struct.linux_getpeername_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @PTRIN(i32 %12)
  %14 = call i32 @copyin(i32 %13, i32* %8, i32 4)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %3, align 4
  br label %75

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %3, align 4
  br label %75

24:                                               ; preds = %19
  %25 = load %struct.thread*, %struct.thread** %4, align 8
  %26 = load %struct.linux_getpeername_args*, %struct.linux_getpeername_args** %5, align 8
  %27 = getelementptr inbounds %struct.linux_getpeername_args, %struct.linux_getpeername_args* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = bitcast %struct.sockaddr** %7 to i32**
  %30 = call i32 @kern_getpeername(%struct.thread* %25, i32 %28, i32** %29, i32* %8)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %75

35:                                               ; preds = %24
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %35
  %39 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %40 = bitcast %struct.sockaddr* %39 to i32*
  %41 = bitcast %struct.l_sockaddr** %6 to i32**
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @bsd_to_linux_sockaddr(i32* %40, i32** %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %38
  %47 = load %struct.l_sockaddr*, %struct.l_sockaddr** %6, align 8
  %48 = bitcast %struct.l_sockaddr* %47 to i32*
  %49 = load %struct.linux_getpeername_args*, %struct.linux_getpeername_args** %5, align 8
  %50 = getelementptr inbounds %struct.linux_getpeername_args, %struct.linux_getpeername_args* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @PTRIN(i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @copyout(i32* %48, i32 %52, i32 %53)
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %46, %38
  %56 = load %struct.l_sockaddr*, %struct.l_sockaddr** %6, align 8
  %57 = bitcast %struct.l_sockaddr* %56 to i32*
  %58 = load i32, i32* @M_SONAME, align 4
  %59 = call i32 @free(i32* %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %35
  %61 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %62 = bitcast %struct.sockaddr* %61 to i32*
  %63 = load i32, i32* @M_SONAME, align 4
  %64 = call i32 @free(i32* %62, i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load %struct.linux_getpeername_args*, %struct.linux_getpeername_args** %5, align 8
  %69 = getelementptr inbounds %struct.linux_getpeername_args, %struct.linux_getpeername_args* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @PTRIN(i32 %70)
  %72 = call i32 @copyout(i32* %8, i32 %71, i32 4)
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %67, %60
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %33, %22, %17
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @copyin(i32, i32*, i32) #1

declare dso_local i32 @PTRIN(i32) #1

declare dso_local i32 @kern_getpeername(%struct.thread*, i32, i32**, i32*) #1

declare dso_local i32 @bsd_to_linux_sockaddr(i32*, i32**, i32) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
