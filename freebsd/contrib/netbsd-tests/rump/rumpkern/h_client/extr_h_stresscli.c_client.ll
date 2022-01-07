; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/rumpkern/h_client/extr_h_stresscli.c_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/rumpkern/h_client/extr_h_stresscli.c_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@doquit = common dso_local global i64 0, align 8
@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@syscalls = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"reuseaddr\00", align 1
@iskiller = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"bind to port %d failed\00", align 1
@bindcalls = common dso_local global i32 0, align 4
@hostnamemib = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"sysctl\00", align 1
@hostnamebuf = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"hostname (%s/%s) mismatch\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"getpid\00", align 1
@mypid = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"mypid mismatch\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"write /dev/null\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @client(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = call i32 @memset(%struct.sockaddr_in* %4, i32 0, i32 12)
  %15 = load i32, i32* @AF_INET, align 4
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i32 12, i32* %17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @htons(i32 %18)
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  br label %21

21:                                               ; preds = %119, %1
  %22 = load i64, i64* @doquit, align 8
  %23 = icmp ne i64 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %126

25:                                               ; preds = %21
  store i64 256, i64* %5, align 8
  %26 = load i32, i32* @PF_INET, align 4
  %27 = load i32, i32* @SOCK_STREAM, align 4
  %28 = call i32 @rump_sys_socket(i32 %26, i32 %27, i32 0)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %25
  %34 = call i32 @atomic_inc_uint(i32* @syscalls)
  %35 = load i32, i32* @O_RDWR, align 4
  %36 = call i32 @rump_sys_open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = call i32 @atomic_inc_uint(i32* @syscalls)
  %38 = load i64, i64* @doquit, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %119

41:                                               ; preds = %33
  store i32 1, i32* %9, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @SOL_SOCKET, align 4
  %44 = load i32, i32* @SO_REUSEADDR, align 4
  %45 = call i32 @rump_sys_setsockopt(i32 %42, i32 %43, i32 %44, i32* %9, i32 4)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %41
  %50 = load i32, i32* %7, align 4
  %51 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %52 = call i32 @rump_sys_bind(i32 %50, %struct.sockaddr* %51, i32 12)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load i32, i32* @iskiller, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ntohs(i32 %59)
  %61 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %57, %54
  br label %65

63:                                               ; preds = %49
  %64 = call i32 @atomic_inc_uint(i32* @bindcalls)
  br label %65

65:                                               ; preds = %63, %62
  %66 = call i32 @atomic_inc_uint(i32* @syscalls)
  %67 = load i64, i64* @doquit, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %119

70:                                               ; preds = %65
  %71 = load i32, i32* @hostnamemib, align 4
  %72 = load i32, i32* @hostnamemib, align 4
  %73 = call i32 @__arraycount(i32 %72)
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %75 = call i32 @rump_sys___sysctl(i32 %71, i32 %73, i8* %74, i64* %5, i32* null, i32 0)
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %70
  %80 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %81 = load i32, i32* @hostnamebuf, align 4
  %82 = call i64 @strncmp(i8* %80, i32 %81, i32 3)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %86 = load i32, i32* @hostnamebuf, align 4
  %87 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %79
  %89 = call i32 @atomic_inc_uint(i32* @syscalls)
  %90 = load i64, i64* @doquit, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %119

93:                                               ; preds = %88
  %94 = call i32 (...) @rump_sys_getpid()
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %93
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @mypid, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %99
  %106 = call i32 @atomic_inc_uint(i32* @syscalls)
  %107 = load i64, i64* @doquit, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %119

110:                                              ; preds = %105
  %111 = load i32, i32* %8, align 4
  %112 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %113 = call i32 @rump_sys_write(i32 %111, i8* %112, i32 16)
  %114 = icmp ne i32 %113, 16
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %110
  %118 = call i32 @atomic_inc_uint(i32* @syscalls)
  br label %119

119:                                              ; preds = %117, %109, %92, %69, %40
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @rump_sys_close(i32 %120)
  %122 = call i32 @atomic_inc_uint(i32* @syscalls)
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @rump_sys_close(i32 %123)
  %125 = call i32 @atomic_inc_uint(i32* @syscalls)
  br label %21

126:                                              ; preds = %21
  ret i8* null
}

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @rump_sys_socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @atomic_inc_uint(i32*) #1

declare dso_local i32 @rump_sys_open(i8*, i32) #1

declare dso_local i32 @rump_sys_setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @rump_sys_bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @rump_sys___sysctl(i32, i32, i8*, i64*, i32*, i32) #1

declare dso_local i32 @__arraycount(i32) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @rump_sys_getpid(...) #1

declare dso_local i32 @rump_sys_write(i32, i8*, i32) #1

declare dso_local i32 @rump_sys_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
