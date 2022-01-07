; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_linux_recvfrom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_linux_recvfrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_recvfrom_args = type { i32, i32, i32, i32, i32, i32 }
%struct.l_sockaddr = type opaque
%struct.sockaddr = type opaque
%struct.msghdr = type { i32*, i32, i32, i32, i64, %struct.iovec* }
%struct.iovec = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@M_SONAME = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_recvfrom(%struct.thread* %0, %struct.linux_recvfrom_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_recvfrom_args*, align 8
  %6 = alloca %struct.l_sockaddr*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.msghdr, align 8
  %9 = alloca %struct.iovec, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_recvfrom_args* %1, %struct.linux_recvfrom_args** %5, align 8
  %12 = load %struct.linux_recvfrom_args*, %struct.linux_recvfrom_args** %5, align 8
  %13 = getelementptr inbounds %struct.linux_recvfrom_args, %struct.linux_recvfrom_args* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @PTRIN(i32 %14)
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %2
  %18 = load %struct.linux_recvfrom_args*, %struct.linux_recvfrom_args** %5, align 8
  %19 = getelementptr inbounds %struct.linux_recvfrom_args, %struct.linux_recvfrom_args* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @PTRIN(i32 %20)
  %22 = call i32 @copyin(i32* %21, i32* %11, i32 4)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %3, align 4
  br label %124

27:                                               ; preds = %17
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %3, align 4
  br label %124

32:                                               ; preds = %27
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @M_SONAME, align 4
  %35 = load i32, i32* @M_WAITOK, align 4
  %36 = call i32* @malloc(i32 %33, i32 %34, i32 %35)
  %37 = bitcast i32* %36 to %struct.sockaddr*
  store %struct.sockaddr* %37, %struct.sockaddr** %7, align 8
  br label %39

38:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  store %struct.sockaddr* null, %struct.sockaddr** %7, align 8
  br label %39

39:                                               ; preds = %38, %32
  %40 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %41 = bitcast %struct.sockaddr* %40 to i32*
  %42 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 0
  store i32* %41, i32** %42, align 8
  %43 = load i32, i32* %11, align 4
  %44 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 1
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 5
  store %struct.iovec* %9, %struct.iovec** %45, align 8
  %46 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 2
  store i32 1, i32* %46, align 4
  %47 = load %struct.linux_recvfrom_args*, %struct.linux_recvfrom_args** %5, align 8
  %48 = getelementptr inbounds %struct.linux_recvfrom_args, %struct.linux_recvfrom_args* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32* @PTRIN(i32 %49)
  %51 = getelementptr inbounds %struct.iovec, %struct.iovec* %9, i32 0, i32 1
  store i32* %50, i32** %51, align 8
  %52 = load %struct.linux_recvfrom_args*, %struct.linux_recvfrom_args** %5, align 8
  %53 = getelementptr inbounds %struct.linux_recvfrom_args, %struct.linux_recvfrom_args* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.iovec, %struct.iovec* %9, i32 0, i32 0
  store i32 %54, i32* %55, align 8
  %56 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 4
  store i64 0, i64* %56, align 8
  %57 = load %struct.linux_recvfrom_args*, %struct.linux_recvfrom_args** %5, align 8
  %58 = getelementptr inbounds %struct.linux_recvfrom_args, %struct.linux_recvfrom_args* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @linux_to_bsd_msg_flags(i32 %59)
  %61 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 3
  store i32 %60, i32* %61, align 8
  %62 = load %struct.thread*, %struct.thread** %4, align 8
  %63 = load %struct.linux_recvfrom_args*, %struct.linux_recvfrom_args** %5, align 8
  %64 = getelementptr inbounds %struct.linux_recvfrom_args, %struct.linux_recvfrom_args* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @UIO_SYSSPACE, align 4
  %67 = call i32 @kern_recvit(%struct.thread* %62, i32 %65, %struct.msghdr* %8, i32 %66, i32* null)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %39
  br label %118

71:                                               ; preds = %39
  %72 = load %struct.linux_recvfrom_args*, %struct.linux_recvfrom_args** %5, align 8
  %73 = getelementptr inbounds %struct.linux_recvfrom_args, %struct.linux_recvfrom_args* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32* @PTRIN(i32 %74)
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %101

77:                                               ; preds = %71
  %78 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %79 = bitcast %struct.sockaddr* %78 to i32*
  %80 = bitcast %struct.l_sockaddr** %6 to i32**
  %81 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @bsd_to_linux_sockaddr(i32* %79, i32** %80, i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %77
  %87 = load %struct.l_sockaddr*, %struct.l_sockaddr** %6, align 8
  %88 = bitcast %struct.l_sockaddr* %87 to i32*
  %89 = load %struct.linux_recvfrom_args*, %struct.linux_recvfrom_args** %5, align 8
  %90 = getelementptr inbounds %struct.linux_recvfrom_args, %struct.linux_recvfrom_args* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32* @PTRIN(i32 %91)
  %93 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @copyout(i32* %88, i32* %92, i32 %94)
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %86, %77
  %97 = load %struct.l_sockaddr*, %struct.l_sockaddr** %6, align 8
  %98 = bitcast %struct.l_sockaddr* %97 to i32*
  %99 = load i32, i32* @M_SONAME, align 4
  %100 = call i32 @free(i32* %98, i32 %99)
  br label %101

101:                                              ; preds = %96, %71
  %102 = load i32, i32* %10, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  %105 = load %struct.linux_recvfrom_args*, %struct.linux_recvfrom_args** %5, align 8
  %106 = getelementptr inbounds %struct.linux_recvfrom_args, %struct.linux_recvfrom_args* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32* @PTRIN(i32 %107)
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %117

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 1
  %112 = load %struct.linux_recvfrom_args*, %struct.linux_recvfrom_args** %5, align 8
  %113 = getelementptr inbounds %struct.linux_recvfrom_args, %struct.linux_recvfrom_args* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32* @PTRIN(i32 %114)
  %116 = call i32 @copyout(i32* %111, i32* %115, i32 4)
  store i32 %116, i32* %10, align 4
  br label %117

117:                                              ; preds = %110, %104, %101
  br label %118

118:                                              ; preds = %117, %70
  %119 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %120 = bitcast %struct.sockaddr* %119 to i32*
  %121 = load i32, i32* @M_SONAME, align 4
  %122 = call i32 @free(i32* %120, i32 %121)
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %118, %30, %25
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32* @PTRIN(i32) #1

declare dso_local i32 @copyin(i32*, i32*, i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @linux_to_bsd_msg_flags(i32) #1

declare dso_local i32 @kern_recvit(%struct.thread*, i32, %struct.msghdr*, i32, i32*) #1

declare dso_local i32 @bsd_to_linux_sockaddr(i32*, i32**, i32) #1

declare dso_local i32 @copyout(i32*, i32*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
