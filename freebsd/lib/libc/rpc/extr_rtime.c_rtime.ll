; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rtime.c_rtime.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rtime.c_rtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32 }
%struct.timeval = type { i64, i64 }
%struct.servent = type { i32 }
%struct.sockaddr = type { i32 }

@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@TOFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtime(%struct.sockaddr_in* %0, %struct.timeval* %1, %struct.timeval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca %struct.timeval*, align 8
  %7 = alloca %struct.timeval*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.sockaddr_in, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.servent*, align 8
  store %struct.sockaddr_in* %0, %struct.sockaddr_in** %5, align 8
  store %struct.timeval* %1, %struct.timeval** %6, align 8
  store %struct.timeval* %2, %struct.timeval** %7, align 8
  %16 = load %struct.timeval*, %struct.timeval** %7, align 8
  %17 = icmp eq %struct.timeval* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @SOCK_STREAM, align 4
  store i32 %19, i32* %14, align 4
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @SOCK_DGRAM, align 4
  store i32 %21, i32* %14, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = load i32, i32* @AF_INET, align 4
  %24 = load i32, i32* %14, align 4
  %25 = call i32 @_socket(i32 %23, i32 %24, i32 0)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 -1, i32* %4, align 4
  br label %130

29:                                               ; preds = %22
  %30 = load i32, i32* @AF_INET, align 4
  %31 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = call %struct.servent* @getservbyname(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.servent* %33, %struct.servent** %15, align 8
  %34 = icmp eq %struct.servent* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 -1, i32* %4, align 4
  br label %130

36:                                               ; preds = %29
  %37 = load %struct.servent*, %struct.servent** %15, align 8
  %38 = getelementptr inbounds %struct.servent, %struct.servent* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @SOCK_DGRAM, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %95

45:                                               ; preds = %36
  %46 = load i32, i32* %8, align 4
  %47 = bitcast i64* %11 to i8*
  %48 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %49 = bitcast %struct.sockaddr_in* %48 to %struct.sockaddr*
  %50 = call i32 @_sendto(i32 %46, i8* %47, i32 8, i32 0, %struct.sockaddr* %49, i32 8)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @do_close(i32 %54)
  store i32 -1, i32* %4, align 4
  br label %130

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %71, %56
  %58 = call i32 @FD_ZERO(i32* %9)
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @FD_SET(i32 %59, i32* %9)
  %61 = call i32 (...) @_rpc_dtablesize()
  %62 = load %struct.timeval*, %struct.timeval** %7, align 8
  %63 = call i32 @_select(i32 %61, i32* %9, i32* null, i32* null, %struct.timeval* %62)
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i64, i64* @errno, align 8
  %69 = load i64, i64* @EINTR, align 8
  %70 = icmp eq i64 %68, %69
  br label %71

71:                                               ; preds = %67, %64
  %72 = phi i1 [ false, %64 ], [ %70, %67 ]
  br i1 %72, label %57, label %73

73:                                               ; preds = %71
  %74 = load i32, i32* %10, align 4
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i32, i32* %10, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i64, i64* @ETIMEDOUT, align 8
  store i64 %80, i64* @errno, align 8
  br label %81

81:                                               ; preds = %79, %76
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @do_close(i32 %82)
  store i32 -1, i32* %4, align 4
  br label %130

84:                                               ; preds = %73
  store i32 8, i32* %13, align 4
  %85 = load i32, i32* %8, align 4
  %86 = bitcast i64* %11 to i8*
  %87 = bitcast %struct.sockaddr_in* %12 to %struct.sockaddr*
  %88 = call i32 @_recvfrom(i32 %85, i8* %86, i32 8, i32 0, %struct.sockaddr* %87, i32* %13)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @do_close(i32 %89)
  %91 = load i32, i32* %10, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  store i32 -1, i32* %4, align 4
  br label %130

94:                                               ; preds = %84
  br label %114

95:                                               ; preds = %36
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %98 = bitcast %struct.sockaddr_in* %97 to %struct.sockaddr*
  %99 = call i64 @_connect(i32 %96, %struct.sockaddr* %98, i32 8)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @do_close(i32 %102)
  store i32 -1, i32* %4, align 4
  br label %130

104:                                              ; preds = %95
  %105 = load i32, i32* %8, align 4
  %106 = bitcast i64* %11 to i8*
  %107 = call i32 @_read(i32 %105, i8* %106, i32 8)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @do_close(i32 %108)
  %110 = load i32, i32* %10, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  store i32 -1, i32* %4, align 4
  br label %130

113:                                              ; preds = %104
  br label %114

114:                                              ; preds = %113, %94
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = icmp ne i64 %116, 8
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i64, i64* @EIO, align 8
  store i64 %119, i64* @errno, align 8
  store i32 -1, i32* %4, align 4
  br label %130

120:                                              ; preds = %114
  %121 = load i64, i64* %11, align 8
  %122 = call i64 @ntohl(i64 %121)
  store i64 %122, i64* %11, align 8
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* @TOFFSET, align 8
  %125 = sub i64 %123, %124
  %126 = load %struct.timeval*, %struct.timeval** %6, align 8
  %127 = getelementptr inbounds %struct.timeval, %struct.timeval* %126, i32 0, i32 1
  store i64 %125, i64* %127, align 8
  %128 = load %struct.timeval*, %struct.timeval** %6, align 8
  %129 = getelementptr inbounds %struct.timeval, %struct.timeval* %128, i32 0, i32 0
  store i64 0, i64* %129, align 8
  store i32 0, i32* %4, align 4
  br label %130

130:                                              ; preds = %120, %118, %112, %101, %93, %81, %53, %35, %28
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @_socket(i32, i32, i32) #1

declare dso_local %struct.servent* @getservbyname(i8*, i8*) #1

declare dso_local i32 @_sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @do_close(i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @_select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @_rpc_dtablesize(...) #1

declare dso_local i32 @_recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @_connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @_read(i32, i8*, i32) #1

declare dso_local i64 @ntohl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
