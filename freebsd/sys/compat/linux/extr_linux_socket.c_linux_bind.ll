; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_linux_bind.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_linux_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_bind_args = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@AT_FDCWD = common dso_local global i32 0, align 4
@M_SONAME = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_bind(%struct.thread* %0, %struct.linux_bind_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_bind_args*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_bind_args* %1, %struct.linux_bind_args** %5, align 8
  %8 = load %struct.linux_bind_args*, %struct.linux_bind_args** %5, align 8
  %9 = getelementptr inbounds %struct.linux_bind_args, %struct.linux_bind_args* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @PTRIN(i32 %10)
  %12 = load %struct.linux_bind_args*, %struct.linux_bind_args** %5, align 8
  %13 = getelementptr inbounds %struct.linux_bind_args, %struct.linux_bind_args* %12, i32 0, i32 0
  %14 = call i32 @linux_to_bsd_sockaddr(i32 %11, %struct.sockaddr** %6, i32* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %43

19:                                               ; preds = %2
  %20 = load %struct.thread*, %struct.thread** %4, align 8
  %21 = load i32, i32* @AT_FDCWD, align 4
  %22 = load %struct.linux_bind_args*, %struct.linux_bind_args** %5, align 8
  %23 = getelementptr inbounds %struct.linux_bind_args, %struct.linux_bind_args* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %26 = call i32 @kern_bindat(%struct.thread* %20, i32 %21, i32 %24, %struct.sockaddr* %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %28 = load i32, i32* @M_SONAME, align 4
  %29 = call i32 @free(%struct.sockaddr* %27, i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @EADDRNOTAVAIL, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %19
  %34 = load %struct.linux_bind_args*, %struct.linux_bind_args** %5, align 8
  %35 = getelementptr inbounds %struct.linux_bind_args, %struct.linux_bind_args* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ne i64 %37, 4
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %3, align 4
  br label %43

41:                                               ; preds = %33, %19
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %39, %17
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @linux_to_bsd_sockaddr(i32, %struct.sockaddr**, i32*) #1

declare dso_local i32 @PTRIN(i32) #1

declare dso_local i32 @kern_bindat(%struct.thread*, i32, i32, %struct.sockaddr*) #1

declare dso_local i32 @free(%struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
