; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_linux_setsockopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_linux_setsockopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_setsockopt_args = type { i32, i32, i32, i32, i32 }
%struct.setsockopt_args = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sockaddr = type { i32, i32 }
%struct.timeval = type { i32, i32 }

@UIO_SYSSPACE = common dso_local global i32 0, align 4
@ENOPROTOOPT = common dso_local global i32 0, align 4
@IPV6_NEXTHOP = common dso_local global i32 0, align 4
@M_SONAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_setsockopt(%struct.thread* %0, %struct.linux_setsockopt_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_setsockopt_args*, align 8
  %6 = alloca %struct.setsockopt_args, align 4
  %7 = alloca %struct.TYPE_3__, align 4
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.timeval, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_setsockopt_args* %1, %struct.linux_setsockopt_args** %5, align 8
  %13 = load %struct.linux_setsockopt_args*, %struct.linux_setsockopt_args** %5, align 8
  %14 = getelementptr inbounds %struct.linux_setsockopt_args, %struct.linux_setsockopt_args* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.setsockopt_args, %struct.setsockopt_args* %6, i32 0, i32 4
  store i32 %15, i32* %16, align 4
  %17 = load %struct.linux_setsockopt_args*, %struct.linux_setsockopt_args** %5, align 8
  %18 = getelementptr inbounds %struct.linux_setsockopt_args, %struct.linux_setsockopt_args* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @linux_to_bsd_sockopt_level(i32 %19)
  %21 = getelementptr inbounds %struct.setsockopt_args, %struct.setsockopt_args* %6, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.setsockopt_args, %struct.setsockopt_args* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %73 [
    i32 130, label %24
    i32 133, label %58
    i32 132, label %63
    i32 131, label %68
  ]

24:                                               ; preds = %2
  %25 = load %struct.linux_setsockopt_args*, %struct.linux_setsockopt_args** %5, align 8
  %26 = getelementptr inbounds %struct.linux_setsockopt_args, %struct.linux_setsockopt_args* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @linux_to_bsd_so_sockopt(i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  switch i32 %29, label %56 [
    i32 129, label %30
    i32 128, label %30
  ]

30:                                               ; preds = %24, %24
  %31 = load %struct.linux_setsockopt_args*, %struct.linux_setsockopt_args** %5, align 8
  %32 = getelementptr inbounds %struct.linux_setsockopt_args, %struct.linux_setsockopt_args* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @PTRIN(i32 %33)
  %35 = call i32 @copyin(i32 %34, %struct.TYPE_3__* %7, i32 8)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %3, align 4
  br label %130

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = load %struct.thread*, %struct.thread** %4, align 8
  %48 = load %struct.linux_setsockopt_args*, %struct.linux_setsockopt_args** %5, align 8
  %49 = getelementptr inbounds %struct.linux_setsockopt_args, %struct.linux_setsockopt_args* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.setsockopt_args, %struct.setsockopt_args* %6, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @UIO_SYSSPACE, align 4
  %55 = call i32 @kern_setsockopt(%struct.thread* %47, i32 %50, i32 %52, i32 %53, %struct.timeval* %9, i32 %54, i32 8)
  store i32 %55, i32* %3, align 4
  br label %130

56:                                               ; preds = %24
  br label %57

57:                                               ; preds = %56
  br label %74

58:                                               ; preds = %2
  %59 = load %struct.linux_setsockopt_args*, %struct.linux_setsockopt_args** %5, align 8
  %60 = getelementptr inbounds %struct.linux_setsockopt_args, %struct.linux_setsockopt_args* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @linux_to_bsd_ip_sockopt(i32 %61)
  store i32 %62, i32* %12, align 4
  br label %74

63:                                               ; preds = %2
  %64 = load %struct.linux_setsockopt_args*, %struct.linux_setsockopt_args** %5, align 8
  %65 = getelementptr inbounds %struct.linux_setsockopt_args, %struct.linux_setsockopt_args* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @linux_to_bsd_ip6_sockopt(i32 %66)
  store i32 %67, i32* %12, align 4
  br label %74

68:                                               ; preds = %2
  %69 = load %struct.linux_setsockopt_args*, %struct.linux_setsockopt_args** %5, align 8
  %70 = getelementptr inbounds %struct.linux_setsockopt_args, %struct.linux_setsockopt_args* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @linux_to_bsd_tcp_sockopt(i32 %71)
  store i32 %72, i32* %12, align 4
  br label %74

73:                                               ; preds = %2
  store i32 -1, i32* %12, align 4
  br label %74

74:                                               ; preds = %73, %68, %63, %58, %57
  %75 = load i32, i32* %12, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* @ENOPROTOOPT, align 4
  store i32 %78, i32* %3, align 4
  br label %130

79:                                               ; preds = %74
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @IPV6_NEXTHOP, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %114

83:                                               ; preds = %79
  %84 = load %struct.linux_setsockopt_args*, %struct.linux_setsockopt_args** %5, align 8
  %85 = getelementptr inbounds %struct.linux_setsockopt_args, %struct.linux_setsockopt_args* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %10, align 4
  %87 = load %struct.linux_setsockopt_args*, %struct.linux_setsockopt_args** %5, align 8
  %88 = getelementptr inbounds %struct.linux_setsockopt_args, %struct.linux_setsockopt_args* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @PTRIN(i32 %89)
  %91 = bitcast %struct.sockaddr** %8 to %struct.timeval**
  %92 = call i32 @linux_to_bsd_sockaddr(i32 %90, %struct.timeval** %91, i32* %10)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %83
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %3, align 4
  br label %130

97:                                               ; preds = %83
  %98 = load %struct.thread*, %struct.thread** %4, align 8
  %99 = load %struct.linux_setsockopt_args*, %struct.linux_setsockopt_args** %5, align 8
  %100 = getelementptr inbounds %struct.linux_setsockopt_args, %struct.linux_setsockopt_args* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.setsockopt_args, %struct.setsockopt_args* %6, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %106 = bitcast %struct.sockaddr* %105 to %struct.timeval*
  %107 = load i32, i32* @UIO_SYSSPACE, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @kern_setsockopt(%struct.thread* %98, i32 %101, i32 %103, i32 %104, %struct.timeval* %106, i32 %107, i32 %108)
  store i32 %109, i32* %11, align 4
  %110 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %111 = bitcast %struct.sockaddr* %110 to %struct.timeval*
  %112 = load i32, i32* @M_SONAME, align 4
  %113 = call i32 @free(%struct.timeval* %111, i32 %112)
  br label %128

114:                                              ; preds = %79
  %115 = load i32, i32* %12, align 4
  %116 = getelementptr inbounds %struct.setsockopt_args, %struct.setsockopt_args* %6, i32 0, i32 1
  store i32 %115, i32* %116, align 4
  %117 = load %struct.linux_setsockopt_args*, %struct.linux_setsockopt_args** %5, align 8
  %118 = getelementptr inbounds %struct.linux_setsockopt_args, %struct.linux_setsockopt_args* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @PTRIN(i32 %119)
  %121 = getelementptr inbounds %struct.setsockopt_args, %struct.setsockopt_args* %6, i32 0, i32 3
  store i32 %120, i32* %121, align 4
  %122 = load %struct.linux_setsockopt_args*, %struct.linux_setsockopt_args** %5, align 8
  %123 = getelementptr inbounds %struct.linux_setsockopt_args, %struct.linux_setsockopt_args* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.setsockopt_args, %struct.setsockopt_args* %6, i32 0, i32 2
  store i32 %124, i32* %125, align 4
  %126 = load %struct.thread*, %struct.thread** %4, align 8
  %127 = call i32 @sys_setsockopt(%struct.thread* %126, %struct.setsockopt_args* %6)
  store i32 %127, i32* %11, align 4
  br label %128

128:                                              ; preds = %114, %97
  %129 = load i32, i32* %11, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %128, %95, %77, %40, %38
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @linux_to_bsd_sockopt_level(i32) #1

declare dso_local i32 @linux_to_bsd_so_sockopt(i32) #1

declare dso_local i32 @copyin(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @PTRIN(i32) #1

declare dso_local i32 @kern_setsockopt(%struct.thread*, i32, i32, i32, %struct.timeval*, i32, i32) #1

declare dso_local i32 @linux_to_bsd_ip_sockopt(i32) #1

declare dso_local i32 @linux_to_bsd_ip6_sockopt(i32) #1

declare dso_local i32 @linux_to_bsd_tcp_sockopt(i32) #1

declare dso_local i32 @linux_to_bsd_sockaddr(i32, %struct.timeval**, i32*) #1

declare dso_local i32 @free(%struct.timeval*, i32) #1

declare dso_local i32 @sys_setsockopt(%struct.thread*, %struct.setsockopt_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
