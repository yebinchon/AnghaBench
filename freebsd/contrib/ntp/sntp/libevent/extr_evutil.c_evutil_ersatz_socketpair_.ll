; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evutil.c_evutil_ersatz_socketpair_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evutil.c_evutil_ersatz_socketpair_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4
@AF_UNIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evutil_ersatz_socketpair_(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.sockaddr_in, align 8
  %14 = alloca %struct.sockaddr_in, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i64 -1, i64* %10, align 8
  store i64 -1, i64* %11, align 8
  store i64 -1, i64* %12, align 8
  store i32 -1, i32* %16, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @AF_INET, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %4
  %24 = load i32, i32* @EAFNOSUPPORT, align 4
  %25 = call i32 @EVUTIL_SET_SOCKET_ERROR(i32 %24)
  store i32 -1, i32* %5, align 4
  br label %162

26:                                               ; preds = %19
  %27 = load i64*, i64** %9, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @EINVAL, align 4
  %31 = call i32 @EVUTIL_SET_SOCKET_ERROR(i32 %30)
  store i32 -1, i32* %5, align 4
  br label %162

32:                                               ; preds = %26
  %33 = load i32, i32* @AF_INET, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @socket(i32 %33, i32 %34, i32 0)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 -1, i32* %5, align 4
  br label %162

39:                                               ; preds = %32
  %40 = call i32 @memset(%struct.sockaddr_in* %13, i32 0, i32 24)
  %41 = load i32, i32* @AF_INET, align 4
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = load i32, i32* @INADDR_LOOPBACK, align 4
  %44 = call i64 @htonl(i32 %43)
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load i64, i64* %10, align 8
  %49 = bitcast %struct.sockaddr_in* %13 to %struct.sockaddr*
  %50 = call i32 @bind(i64 %48, %struct.sockaddr* %49, i32 24)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  br label %136

53:                                               ; preds = %39
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @listen(i64 %54, i32 1)
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %136

58:                                               ; preds = %53
  %59 = load i32, i32* @AF_INET, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i64 @socket(i32 %59, i32 %60, i32 0)
  store i64 %61, i64* %11, align 8
  %62 = load i64, i64* %11, align 8
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %136

65:                                               ; preds = %58
  store i32 24, i32* %15, align 4
  %66 = load i64, i64* %10, align 8
  %67 = bitcast %struct.sockaddr_in* %14 to %struct.sockaddr*
  %68 = call i32 @getsockname(i64 %66, %struct.sockaddr* %67, i32* %15)
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %136

71:                                               ; preds = %65
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp ne i64 %73, 24
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %134

76:                                               ; preds = %71
  %77 = load i64, i64* %11, align 8
  %78 = bitcast %struct.sockaddr_in* %14 to %struct.sockaddr*
  %79 = call i32 @connect(i64 %77, %struct.sockaddr* %78, i32 24)
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %136

82:                                               ; preds = %76
  store i32 24, i32* %15, align 4
  %83 = load i64, i64* %10, align 8
  %84 = bitcast %struct.sockaddr_in* %13 to %struct.sockaddr*
  %85 = call i64 @accept(i64 %83, %struct.sockaddr* %84, i32* %15)
  store i64 %85, i64* %12, align 8
  %86 = load i64, i64* %12, align 8
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %136

89:                                               ; preds = %82
  %90 = load i32, i32* %15, align 4
  %91 = sext i32 %90 to i64
  %92 = icmp ne i64 %91, 24
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %134

94:                                               ; preds = %89
  %95 = load i64, i64* %11, align 8
  %96 = bitcast %struct.sockaddr_in* %14 to %struct.sockaddr*
  %97 = call i32 @getsockname(i64 %95, %struct.sockaddr* %96, i32* %15)
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %136

100:                                              ; preds = %94
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = icmp ne i64 %102, 24
  br i1 %103, label %124, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %106, %108
  br i1 %109, label %124, label %110

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %113, %116
  br i1 %117, label %124, label %118

118:                                              ; preds = %110
  %119 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %120, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %118, %110, %104, %100
  br label %134

125:                                              ; preds = %118
  %126 = load i64, i64* %10, align 8
  %127 = call i32 @evutil_closesocket(i64 %126)
  %128 = load i64, i64* %11, align 8
  %129 = load i64*, i64** %9, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 0
  store i64 %128, i64* %130, align 8
  %131 = load i64, i64* %12, align 8
  %132 = load i64*, i64** %9, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 1
  store i64 %131, i64* %133, align 8
  store i32 0, i32* %5, align 4
  br label %162

134:                                              ; preds = %124, %93, %75
  %135 = load i32, i32* @ECONNABORTED, align 4
  store i32 %135, i32* %16, align 4
  br label %136

136:                                              ; preds = %134, %99, %88, %81, %70, %64, %57, %52
  %137 = load i32, i32* %16, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = call i32 (...) @EVUTIL_SOCKET_ERROR()
  store i32 %140, i32* %16, align 4
  br label %141

141:                                              ; preds = %139, %136
  %142 = load i64, i64* %10, align 8
  %143 = icmp ne i64 %142, -1
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i64, i64* %10, align 8
  %146 = call i32 @evutil_closesocket(i64 %145)
  br label %147

147:                                              ; preds = %144, %141
  %148 = load i64, i64* %11, align 8
  %149 = icmp ne i64 %148, -1
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i64, i64* %11, align 8
  %152 = call i32 @evutil_closesocket(i64 %151)
  br label %153

153:                                              ; preds = %150, %147
  %154 = load i64, i64* %12, align 8
  %155 = icmp ne i64 %154, -1
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i64, i64* %12, align 8
  %158 = call i32 @evutil_closesocket(i64 %157)
  br label %159

159:                                              ; preds = %156, %153
  %160 = load i32, i32* %16, align 4
  %161 = call i32 @EVUTIL_SET_SOCKET_ERROR(i32 %160)
  store i32 -1, i32* %5, align 4
  br label %162

162:                                              ; preds = %159, %125, %38, %29, %23
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @EVUTIL_SET_SOCKET_ERROR(i32) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @bind(i64, %struct.sockaddr*, i32) #1

declare dso_local i32 @listen(i64, i32) #1

declare dso_local i32 @getsockname(i64, %struct.sockaddr*, i32*) #1

declare dso_local i32 @connect(i64, %struct.sockaddr*, i32) #1

declare dso_local i64 @accept(i64, %struct.sockaddr*, i32*) #1

declare dso_local i32 @evutil_closesocket(i64) #1

declare dso_local i32 @EVUTIL_SOCKET_ERROR(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
