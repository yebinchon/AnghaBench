; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_linux_accept_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_linux_accept_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64* }
%struct.l_sockaddr = type opaque
%struct.sockaddr = type { i32 }
%struct.file = type { %struct.socket* }
%struct.socket = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@cap_accept_rights = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@M_SONAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, i32, i32, i32)* @linux_accept_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_accept_common(%struct.thread* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.l_sockaddr*, align 8
  %13 = alloca %struct.sockaddr*, align 8
  %14 = alloca %struct.file*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.socket*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @linux_set_socket_flags(i32 %20, i32* %15)
  store i32 %21, i32* %18, align 4
  %22 = load i32, i32* %18, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* %18, align 4
  store i32 %25, i32* %6, align 4
  br label %147

26:                                               ; preds = %5
  store %struct.sockaddr* null, %struct.sockaddr** %13, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32* @PTRIN(i32 %27)
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  store i32 0, i32* %16, align 4
  %31 = load %struct.thread*, %struct.thread** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %15, align 4
  %34 = call i32 @kern_accept4(%struct.thread* %31, i32 %32, %struct.sockaddr** null, i32* null, i32 %33, %struct.file** null)
  store i32 %34, i32* %18, align 4
  br label %60

35:                                               ; preds = %26
  %36 = load i32, i32* %10, align 4
  %37 = call i32* @PTRIN(i32 %36)
  %38 = call i32 @copyin(i32* %37, i32* %16, i32 4)
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %18, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %18, align 4
  store i32 %42, i32* %6, align 4
  br label %147

43:                                               ; preds = %35
  %44 = load i32, i32* %16, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %6, align 4
  br label %147

48:                                               ; preds = %43
  %49 = load %struct.thread*, %struct.thread** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @kern_accept4(%struct.thread* %49, i32 %50, %struct.sockaddr** %13, i32* %16, i32 %51, %struct.file** %14)
  store i32 %52, i32* %18, align 4
  %53 = load i32, i32* %18, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load %struct.file*, %struct.file** %14, align 8
  %57 = load %struct.thread*, %struct.thread** %7, align 8
  %58 = call i32 @fdrop(%struct.file* %56, %struct.thread* %57)
  br label %59

59:                                               ; preds = %55, %48
  br label %60

60:                                               ; preds = %59, %30
  %61 = load i32, i32* %18, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %101

63:                                               ; preds = %60
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* @EFAULT, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = icmp ne i64 %69, 4
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @EINVAL, align 4
  store i32 %72, i32* %18, align 4
  br label %130

73:                                               ; preds = %67, %63
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* @EINVAL, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %100

77:                                               ; preds = %73
  %78 = load %struct.thread*, %struct.thread** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @getsock_cap(%struct.thread* %78, i32 %79, i32* @cap_accept_rights, %struct.file** %14, i32* null, i32* null)
  store i32 %80, i32* %19, align 4
  %81 = load i32, i32* %19, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* %19, align 4
  store i32 %84, i32* %18, align 4
  br label %130

85:                                               ; preds = %77
  %86 = load %struct.file*, %struct.file** %14, align 8
  %87 = getelementptr inbounds %struct.file, %struct.file* %86, i32 0, i32 0
  %88 = load %struct.socket*, %struct.socket** %87, align 8
  store %struct.socket* %88, %struct.socket** %17, align 8
  %89 = load %struct.socket*, %struct.socket** %17, align 8
  %90 = getelementptr inbounds %struct.socket, %struct.socket* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @SOCK_DGRAM, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %95, i32* %18, align 4
  br label %96

96:                                               ; preds = %94, %85
  %97 = load %struct.file*, %struct.file** %14, align 8
  %98 = load %struct.thread*, %struct.thread** %7, align 8
  %99 = call i32 @fdrop(%struct.file* %97, %struct.thread* %98)
  br label %100

100:                                              ; preds = %96, %73
  br label %130

101:                                              ; preds = %60
  %102 = load i32, i32* %16, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %126

104:                                              ; preds = %101
  %105 = load i32, i32* %18, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %126

107:                                              ; preds = %104
  %108 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %109 = bitcast %struct.l_sockaddr** %12 to %struct.sockaddr**
  %110 = load i32, i32* %16, align 4
  %111 = call i32 @bsd_to_linux_sockaddr(%struct.sockaddr* %108, %struct.sockaddr** %109, i32 %110)
  store i32 %111, i32* %18, align 4
  %112 = load i32, i32* %18, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %107
  %115 = load %struct.l_sockaddr*, %struct.l_sockaddr** %12, align 8
  %116 = bitcast %struct.l_sockaddr* %115 to %struct.sockaddr*
  %117 = load i32, i32* %9, align 4
  %118 = call i32* @PTRIN(i32 %117)
  %119 = load i32, i32* %16, align 4
  %120 = call i32 @copyout(%struct.sockaddr* %116, i32* %118, i32 %119)
  store i32 %120, i32* %18, align 4
  br label %121

121:                                              ; preds = %114, %107
  %122 = load %struct.l_sockaddr*, %struct.l_sockaddr** %12, align 8
  %123 = bitcast %struct.l_sockaddr* %122 to %struct.sockaddr*
  %124 = load i32, i32* @M_SONAME, align 4
  %125 = call i32 @free(%struct.sockaddr* %123, i32 %124)
  br label %126

126:                                              ; preds = %121, %104, %101
  %127 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %128 = load i32, i32* @M_SONAME, align 4
  %129 = call i32 @free(%struct.sockaddr* %127, i32 %128)
  br label %130

130:                                              ; preds = %126, %100, %83, %71
  %131 = load i32, i32* %18, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %130
  %134 = load %struct.thread*, %struct.thread** %7, align 8
  %135 = load %struct.thread*, %struct.thread** %7, align 8
  %136 = getelementptr inbounds %struct.thread, %struct.thread* %135, i32 0, i32 0
  %137 = load i64*, i64** %136, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @kern_close(%struct.thread* %134, i64 %139)
  %141 = load %struct.thread*, %struct.thread** %7, align 8
  %142 = getelementptr inbounds %struct.thread, %struct.thread* %141, i32 0, i32 0
  %143 = load i64*, i64** %142, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 0
  store i64 0, i64* %144, align 8
  br label %145

145:                                              ; preds = %133, %130
  %146 = load i32, i32* %18, align 4
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %145, %46, %41, %24
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local i32 @linux_set_socket_flags(i32, i32*) #1

declare dso_local i32* @PTRIN(i32) #1

declare dso_local i32 @kern_accept4(%struct.thread*, i32, %struct.sockaddr**, i32*, i32, %struct.file**) #1

declare dso_local i32 @copyin(i32*, i32*, i32) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i32 @getsock_cap(%struct.thread*, i32, i32*, %struct.file**, i32*, i32*) #1

declare dso_local i32 @bsd_to_linux_sockaddr(%struct.sockaddr*, %struct.sockaddr**, i32) #1

declare dso_local i32 @copyout(%struct.sockaddr*, i32*, i32) #1

declare dso_local i32 @free(%struct.sockaddr*, i32) #1

declare dso_local i32 @kern_close(%struct.thread*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
