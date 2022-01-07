; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_linux_sendto.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_linux_sendto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_sendto_args = type { i32, i32, i32, i32, i32, i32 }
%struct.msghdr = type { i32, i64, i32*, %struct.iovec*, i32, i8* }
%struct.iovec = type { i32, i8* }

@UIO_USERSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_sendto(%struct.thread* %0, %struct.linux_sendto_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_sendto_args*, align 8
  %6 = alloca %struct.msghdr, align 8
  %7 = alloca %struct.iovec, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_sendto_args* %1, %struct.linux_sendto_args** %5, align 8
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = load %struct.linux_sendto_args*, %struct.linux_sendto_args** %5, align 8
  %10 = getelementptr inbounds %struct.linux_sendto_args, %struct.linux_sendto_args* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @linux_check_hdrincl(%struct.thread* %8, i32 %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.thread*, %struct.thread** %4, align 8
  %16 = load %struct.linux_sendto_args*, %struct.linux_sendto_args** %5, align 8
  %17 = call i32 @linux_sendto_hdrincl(%struct.thread* %15, %struct.linux_sendto_args* %16)
  store i32 %17, i32* %3, align 4
  br label %50

18:                                               ; preds = %2
  %19 = load %struct.linux_sendto_args*, %struct.linux_sendto_args** %5, align 8
  %20 = getelementptr inbounds %struct.linux_sendto_args, %struct.linux_sendto_args* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @PTRIN(i32 %21)
  %23 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 5
  store i8* %22, i8** %23, align 8
  %24 = load %struct.linux_sendto_args*, %struct.linux_sendto_args** %5, align 8
  %25 = getelementptr inbounds %struct.linux_sendto_args, %struct.linux_sendto_args* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 4
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 3
  store %struct.iovec* %7, %struct.iovec** %28, align 8
  %29 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 2
  store i32* null, i32** %30, align 8
  %31 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.linux_sendto_args*, %struct.linux_sendto_args** %5, align 8
  %33 = getelementptr inbounds %struct.linux_sendto_args, %struct.linux_sendto_args* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @PTRIN(i32 %34)
  %36 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 1
  store i8* %35, i8** %36, align 8
  %37 = load %struct.linux_sendto_args*, %struct.linux_sendto_args** %5, align 8
  %38 = getelementptr inbounds %struct.linux_sendto_args, %struct.linux_sendto_args* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  %41 = load %struct.thread*, %struct.thread** %4, align 8
  %42 = load %struct.linux_sendto_args*, %struct.linux_sendto_args** %5, align 8
  %43 = getelementptr inbounds %struct.linux_sendto_args, %struct.linux_sendto_args* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.linux_sendto_args*, %struct.linux_sendto_args** %5, align 8
  %46 = getelementptr inbounds %struct.linux_sendto_args, %struct.linux_sendto_args* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @UIO_USERSPACE, align 4
  %49 = call i32 @linux_sendit(%struct.thread* %41, i32 %44, %struct.msghdr* %6, i32 %47, i32* null, i32 %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %18, %14
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @linux_check_hdrincl(%struct.thread*, i32) #1

declare dso_local i32 @linux_sendto_hdrincl(%struct.thread*, %struct.linux_sendto_args*) #1

declare dso_local i8* @PTRIN(i32) #1

declare dso_local i32 @linux_sendit(%struct.thread*, i32, %struct.msghdr*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
