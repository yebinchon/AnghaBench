; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_linux_sendto_hdrincl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_linux_sendto_hdrincl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_sendto_args = type { i32, i32, i32, i32, i32, i32 }
%struct.ip = type { i32, i32 }
%struct.msghdr = type { i32, i64, i32*, %struct.iovec*, i32, i32 }
%struct.iovec = type { i8*, i32 }

@IP_MAXPACKET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M_LINUX = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@linux_ip_copysize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.linux_sendto_args*)* @linux_sendto_hdrincl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_sendto_hdrincl(%struct.thread* %0, %struct.linux_sendto_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_sendto_args*, align 8
  %6 = alloca %struct.ip*, align 8
  %7 = alloca %struct.msghdr, align 8
  %8 = alloca [1 x %struct.iovec], align 16
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_sendto_args* %1, %struct.linux_sendto_args** %5, align 8
  %10 = load %struct.linux_sendto_args*, %struct.linux_sendto_args** %5, align 8
  %11 = getelementptr inbounds %struct.linux_sendto_args, %struct.linux_sendto_args* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, 8
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.linux_sendto_args*, %struct.linux_sendto_args** %5, align 8
  %16 = getelementptr inbounds %struct.linux_sendto_args, %struct.linux_sendto_args* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IP_MAXPACKET, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14, %2
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %3, align 4
  br label %90

22:                                               ; preds = %14
  %23 = load %struct.linux_sendto_args*, %struct.linux_sendto_args** %5, align 8
  %24 = getelementptr inbounds %struct.linux_sendto_args, %struct.linux_sendto_args* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @M_LINUX, align 4
  %27 = load i32, i32* @M_WAITOK, align 4
  %28 = call i64 @malloc(i32 %25, i32 %26, i32 %27)
  %29 = inttoptr i64 %28 to %struct.ip*
  store %struct.ip* %29, %struct.ip** %6, align 8
  %30 = load %struct.linux_sendto_args*, %struct.linux_sendto_args** %5, align 8
  %31 = getelementptr inbounds %struct.linux_sendto_args, %struct.linux_sendto_args* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @PTRIN(i32 %32)
  %34 = load %struct.ip*, %struct.ip** %6, align 8
  %35 = load %struct.linux_sendto_args*, %struct.linux_sendto_args** %5, align 8
  %36 = getelementptr inbounds %struct.linux_sendto_args, %struct.linux_sendto_args* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @copyin(i32 %33, %struct.ip* %34, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %22
  br label %85

41:                                               ; preds = %22
  %42 = load %struct.linux_sendto_args*, %struct.linux_sendto_args** %5, align 8
  %43 = getelementptr inbounds %struct.linux_sendto_args, %struct.linux_sendto_args* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ip*, %struct.ip** %6, align 8
  %46 = getelementptr inbounds %struct.ip, %struct.ip* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ip*, %struct.ip** %6, align 8
  %48 = getelementptr inbounds %struct.ip, %struct.ip* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ntohs(i32 %49)
  %51 = load %struct.ip*, %struct.ip** %6, align 8
  %52 = getelementptr inbounds %struct.ip, %struct.ip* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.linux_sendto_args*, %struct.linux_sendto_args** %5, align 8
  %54 = getelementptr inbounds %struct.linux_sendto_args, %struct.linux_sendto_args* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @PTRIN(i32 %55)
  %57 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 5
  store i32 %56, i32* %57, align 4
  %58 = load %struct.linux_sendto_args*, %struct.linux_sendto_args** %5, align 8
  %59 = getelementptr inbounds %struct.linux_sendto_args, %struct.linux_sendto_args* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 4
  store i32 %60, i32* %61, align 8
  %62 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %8, i64 0, i64 0
  %63 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 3
  store %struct.iovec* %62, %struct.iovec** %63, align 8
  %64 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 2
  store i32* null, i32** %65, align 8
  %66 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.ip*, %struct.ip** %6, align 8
  %68 = bitcast %struct.ip* %67 to i8*
  %69 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %8, i64 0, i64 0
  %70 = getelementptr inbounds %struct.iovec, %struct.iovec* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 16
  %71 = load %struct.linux_sendto_args*, %struct.linux_sendto_args** %5, align 8
  %72 = getelementptr inbounds %struct.linux_sendto_args, %struct.linux_sendto_args* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %8, i64 0, i64 0
  %75 = getelementptr inbounds %struct.iovec, %struct.iovec* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load %struct.thread*, %struct.thread** %4, align 8
  %77 = load %struct.linux_sendto_args*, %struct.linux_sendto_args** %5, align 8
  %78 = getelementptr inbounds %struct.linux_sendto_args, %struct.linux_sendto_args* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.linux_sendto_args*, %struct.linux_sendto_args** %5, align 8
  %81 = getelementptr inbounds %struct.linux_sendto_args, %struct.linux_sendto_args* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @UIO_SYSSPACE, align 4
  %84 = call i32 @linux_sendit(%struct.thread* %76, i32 %79, %struct.msghdr* %7, i32 %82, i32* null, i32 %83)
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %41, %40
  %86 = load %struct.ip*, %struct.ip** %6, align 8
  %87 = load i32, i32* @M_LINUX, align 4
  %88 = call i32 @free(%struct.ip* %86, i32 %87)
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %85, %20
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @copyin(i32, %struct.ip*, i32) #1

declare dso_local i32 @PTRIN(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @linux_sendit(%struct.thread*, i32, %struct.msghdr*, i32, i32*, i32) #1

declare dso_local i32 @free(%struct.ip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
