; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_ftp.c_dataconn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_ftp.c_dataconn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sockinet = type { i64, i32 }
%struct.timeval = type { i64, i32 }
%struct.pollfd = type { i32, i32 }
%struct.sockaddr = type { i32 }

@passivemode = common dso_local global i64 0, align 8
@data = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@quit_time = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Can't poll waiting before accept\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Poll timeout waiting before accept\00", align 1
@myctladdr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Can't accept data connection\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@IPPROTO_IP = common dso_local global i32 0, align 4
@IPTOS_THROUGHPUT = common dso_local global i32 0, align 4
@IP_TOS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @dataconn(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sockinet, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval, align 8
  %10 = alloca %struct.timeval, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = alloca [1 x %struct.pollfd], align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %14 = load i64, i64* @passivemode, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @data, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = call i32* @fdopen(i32 %17, i8* %18)
  store i32* %19, i32** %2, align 8
  br label %129

20:                                               ; preds = %1
  %21 = load i32, i32* @data, align 4
  %22 = load i32, i32* @F_GETFL, align 4
  %23 = call i32 @fcntl(i32 %21, i32 %22, i32 0)
  store i32 %23, i32* %6, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %126

26:                                               ; preds = %20
  %27 = load i32, i32* @data, align 4
  %28 = load i32, i32* @F_SETFL, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @O_NONBLOCK, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @fcntl(i32 %27, i32 %28, i32 %31)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %126

35:                                               ; preds = %26
  %36 = load i32, i32* @data, align 4
  %37 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %12, i64 0, i64 0
  %38 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @POLLIN, align 4
  %40 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %12, i64 0, i64 0
  %41 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = call i32 @gettimeofday(%struct.timeval* %9, i32* null)
  %43 = load i64, i64* @quit_time, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i64, i64* @quit_time, align 8
  br label %48

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i64 [ %46, %45 ], [ 60, %47 ]
  %50 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, %49
  store i64 %52, i64* %50, align 8
  br label %53

53:                                               ; preds = %79, %48
  %54 = call i32 @gettimeofday(%struct.timeval* %10, i32* null)
  %55 = call i32 @timersub(%struct.timeval* %9, %struct.timeval* %10, %struct.timeval* %11)
  %56 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = mul nsw i64 %57, 1000
  %59 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = sdiv i32 %60, 1000
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %58, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %53
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %67, %53
  %69 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %12, i64 0, i64 0
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @ftp_poll(%struct.pollfd* %69, i32 1, i32 %70)
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i64, i64* @errno, align 8
  %77 = load i64, i64* @EINTR, align 8
  %78 = icmp eq i64 %76, %77
  br label %79

79:                                               ; preds = %75, %72
  %80 = phi i1 [ false, %72 ], [ %78, %75 ]
  br i1 %80, label %53, label %81

81:                                               ; preds = %79
  %82 = load i32, i32* %7, align 4
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32 @warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %126

86:                                               ; preds = %81
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call i32 @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %126

91:                                               ; preds = %86
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @myctladdr, i32 0, i32 0), align 4
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %105, %91
  %94 = load i32, i32* @data, align 4
  %95 = getelementptr inbounds %struct.sockinet, %struct.sockinet* %4, i32 0, i32 1
  %96 = bitcast i32* %95 to %struct.sockaddr*
  %97 = call i32 @accept(i32 %94, %struct.sockaddr* %96, i32* %13)
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %93
  %99 = load i32, i32* %5, align 4
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load i64, i64* @errno, align 8
  %103 = load i64, i64* @EINTR, align 8
  %104 = icmp eq i64 %102, %103
  br label %105

105:                                              ; preds = %101, %98
  %106 = phi i1 [ false, %98 ], [ %104, %101 ]
  br i1 %106, label %93, label %107

107:                                              ; preds = %105
  %108 = load i32, i32* %5, align 4
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = call i32 @warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %126

112:                                              ; preds = %107
  %113 = load i32, i32* @data, align 4
  %114 = call i32 @close(i32 %113)
  %115 = load i32, i32* %5, align 4
  store i32 %115, i32* @data, align 4
  %116 = load i32, i32* @data, align 4
  %117 = load i32, i32* @F_SETFL, align 4
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @fcntl(i32 %116, i32 %117, i32 %118)
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  br label %126

122:                                              ; preds = %112
  %123 = load i32, i32* @data, align 4
  %124 = load i8*, i8** %3, align 8
  %125 = call i32* @fdopen(i32 %123, i8* %124)
  store i32* %125, i32** %2, align 8
  br label %129

126:                                              ; preds = %121, %110, %89, %84, %34, %25
  %127 = load i32, i32* @data, align 4
  %128 = call i32 @close(i32 %127)
  store i32 -1, i32* @data, align 4
  store i32* null, i32** %2, align 8
  br label %129

129:                                              ; preds = %126, %122, %16
  %130 = load i32*, i32** %2, align 8
  ret i32* %130
}

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @timersub(%struct.timeval*, %struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @ftp_poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
