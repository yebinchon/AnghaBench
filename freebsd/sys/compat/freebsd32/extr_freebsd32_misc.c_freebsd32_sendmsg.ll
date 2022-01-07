; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_sendmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.freebsd32_sendmsg_args = type { i32, i32, i32 }
%struct.msghdr = type { i32, i32*, %struct.sockaddr*, i32, %struct.sockaddr* }
%struct.sockaddr = type { i32 }
%struct.msghdr32 = type { i32, i32 }
%struct.iovec = type opaque
%struct.mbuf = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4
@M_IOV = common dso_local global i32 0, align 4
@M_SONAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32_sendmsg(%struct.thread* %0, %struct.freebsd32_sendmsg_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.freebsd32_sendmsg_args*, align 8
  %6 = alloca %struct.msghdr, align 8
  %7 = alloca %struct.msghdr32, align 4
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.freebsd32_sendmsg_args* %1, %struct.freebsd32_sendmsg_args** %5, align 8
  store %struct.mbuf* null, %struct.mbuf** %9, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %10, align 8
  %12 = load %struct.freebsd32_sendmsg_args*, %struct.freebsd32_sendmsg_args** %5, align 8
  %13 = getelementptr inbounds %struct.freebsd32_sendmsg_args, %struct.freebsd32_sendmsg_args* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @copyin(i32 %14, %struct.msghdr32* %7, i32 8)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %3, align 4
  br label %108

20:                                               ; preds = %2
  %21 = load %struct.freebsd32_sendmsg_args*, %struct.freebsd32_sendmsg_args** %5, align 8
  %22 = getelementptr inbounds %struct.freebsd32_sendmsg_args, %struct.freebsd32_sendmsg_args* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @freebsd32_copyinmsghdr(i32 %23, %struct.msghdr* %6)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %3, align 4
  br label %108

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.msghdr32, %struct.msghdr32* %7, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @PTRIN(i32 %31)
  %33 = getelementptr inbounds %struct.msghdr32, %struct.msghdr32* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = bitcast %struct.iovec** %8 to %struct.sockaddr**
  %36 = load i32, i32* @EMSGSIZE, align 4
  %37 = call i32 @freebsd32_copyiniov(i32 %32, i32 %34, %struct.sockaddr** %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %3, align 4
  br label %108

42:                                               ; preds = %29
  %43 = load %struct.iovec*, %struct.iovec** %8, align 8
  %44 = bitcast %struct.iovec* %43 to %struct.sockaddr*
  %45 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 4
  store %struct.sockaddr* %44, %struct.sockaddr** %45, align 8
  %46 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 2
  %47 = load %struct.sockaddr*, %struct.sockaddr** %46, align 8
  %48 = icmp ne %struct.sockaddr* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 2
  %51 = load %struct.sockaddr*, %struct.sockaddr** %50, align 8
  %52 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @getsockaddr(%struct.sockaddr** %10, %struct.sockaddr* %51, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store %struct.sockaddr* null, %struct.sockaddr** %10, align 8
  br label %95

58:                                               ; preds = %49
  %59 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %60 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 2
  store %struct.sockaddr* %59, %struct.sockaddr** %60, align 8
  br label %61

61:                                               ; preds = %58, %42
  %62 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %84

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = icmp ult i64 %68, 4
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @EINVAL, align 4
  store i32 %71, i32* %11, align 4
  br label %95

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @freebsd32_copyin_control(%struct.mbuf** %9, i32* %74, i32 %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %95

81:                                               ; preds = %72
  %82 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 1
  store i32* null, i32** %82, align 8
  %83 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 0
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %61
  %85 = load %struct.thread*, %struct.thread** %4, align 8
  %86 = load %struct.freebsd32_sendmsg_args*, %struct.freebsd32_sendmsg_args** %5, align 8
  %87 = getelementptr inbounds %struct.freebsd32_sendmsg_args, %struct.freebsd32_sendmsg_args* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.freebsd32_sendmsg_args*, %struct.freebsd32_sendmsg_args** %5, align 8
  %90 = getelementptr inbounds %struct.freebsd32_sendmsg_args, %struct.freebsd32_sendmsg_args* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %93 = load i32, i32* @UIO_USERSPACE, align 4
  %94 = call i32 @kern_sendit(%struct.thread* %85, i32 %88, %struct.msghdr* %6, i32 %91, %struct.mbuf* %92, i32 %93)
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %84, %80, %70, %57
  %96 = load %struct.iovec*, %struct.iovec** %8, align 8
  %97 = bitcast %struct.iovec* %96 to %struct.sockaddr*
  %98 = load i32, i32* @M_IOV, align 4
  %99 = call i32 @free(%struct.sockaddr* %97, i32 %98)
  %100 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %101 = icmp ne %struct.sockaddr* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %104 = load i32, i32* @M_SONAME, align 4
  %105 = call i32 @free(%struct.sockaddr* %103, i32 %104)
  br label %106

106:                                              ; preds = %102, %95
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %40, %27, %18
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @copyin(i32, %struct.msghdr32*, i32) #1

declare dso_local i32 @freebsd32_copyinmsghdr(i32, %struct.msghdr*) #1

declare dso_local i32 @freebsd32_copyiniov(i32, i32, %struct.sockaddr**, i32) #1

declare dso_local i32 @PTRIN(i32) #1

declare dso_local i32 @getsockaddr(%struct.sockaddr**, %struct.sockaddr*, i32) #1

declare dso_local i32 @freebsd32_copyin_control(%struct.mbuf**, i32*, i32) #1

declare dso_local i32 @kern_sendit(%struct.thread*, i32, %struct.msghdr*, i32, %struct.mbuf*, i32) #1

declare dso_local i32 @free(%struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
