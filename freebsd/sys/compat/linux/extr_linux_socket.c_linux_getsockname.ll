; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_linux_getsockname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_linux_getsockname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_getsockname_args = type { i32, i32, i32 }
%struct.l_sockaddr = type opaque
%struct.sockaddr = type opaque

@M_SONAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_getsockname(%struct.thread* %0, %struct.linux_getsockname_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_getsockname_args*, align 8
  %6 = alloca %struct.l_sockaddr*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_getsockname_args* %1, %struct.linux_getsockname_args** %5, align 8
  %10 = load %struct.linux_getsockname_args*, %struct.linux_getsockname_args** %5, align 8
  %11 = getelementptr inbounds %struct.linux_getsockname_args, %struct.linux_getsockname_args* %10, i32 0, i32 0
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
  br label %70

19:                                               ; preds = %2
  %20 = load %struct.thread*, %struct.thread** %4, align 8
  %21 = load %struct.linux_getsockname_args*, %struct.linux_getsockname_args** %5, align 8
  %22 = getelementptr inbounds %struct.linux_getsockname_args, %struct.linux_getsockname_args* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = bitcast %struct.sockaddr** %7 to i32**
  %25 = call i32 @kern_getsockname(%struct.thread* %20, i32 %23, i32** %24, i32* %8)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %3, align 4
  br label %70

30:                                               ; preds = %19
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %30
  %34 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %35 = bitcast %struct.sockaddr* %34 to i32*
  %36 = bitcast %struct.l_sockaddr** %6 to i32**
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @bsd_to_linux_sockaddr(i32* %35, i32** %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %33
  %42 = load %struct.l_sockaddr*, %struct.l_sockaddr** %6, align 8
  %43 = bitcast %struct.l_sockaddr* %42 to i32*
  %44 = load %struct.linux_getsockname_args*, %struct.linux_getsockname_args** %5, align 8
  %45 = getelementptr inbounds %struct.linux_getsockname_args, %struct.linux_getsockname_args* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @PTRIN(i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @copyout(i32* %43, i32 %47, i32 %48)
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %41, %33
  %51 = load %struct.l_sockaddr*, %struct.l_sockaddr** %6, align 8
  %52 = bitcast %struct.l_sockaddr* %51 to i32*
  %53 = load i32, i32* @M_SONAME, align 4
  %54 = call i32 @free(i32* %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %30
  %56 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %57 = bitcast %struct.sockaddr* %56 to i32*
  %58 = load i32, i32* @M_SONAME, align 4
  %59 = call i32 @free(i32* %57, i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load %struct.linux_getsockname_args*, %struct.linux_getsockname_args** %5, align 8
  %64 = getelementptr inbounds %struct.linux_getsockname_args, %struct.linux_getsockname_args* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @PTRIN(i32 %65)
  %67 = call i32 @copyout(i32* %8, i32 %66, i32 4)
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %62, %55
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %28, %17
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @copyin(i32, i32*, i32) #1

declare dso_local i32 @PTRIN(i32) #1

declare dso_local i32 @kern_getsockname(%struct.thread*, i32, i32**, i32*) #1

declare dso_local i32 @bsd_to_linux_sockaddr(i32*, i32**, i32) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
