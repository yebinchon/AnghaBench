; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_sctp_sys_calls.c_sctp_connectx.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_sctp_sys_calls.c_sctp_connectx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32, i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr_in = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@IPPROTO_SCTP = common dso_local global i32 0, align 4
@SCTP_CONNECT_X = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_connectx(i32 %0, %struct.sockaddr* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.sockaddr*, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %18 = icmp eq %struct.sockaddr* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %4
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %150

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = add i64 4, %27
  %29 = trunc i64 %28 to i32
  %30 = call i8* @malloc(i32 %29)
  store i8* %30, i8** %10, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @E2BIG, align 4
  store i32 %33, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %150

34:                                               ; preds = %24
  store i64 4, i64* %16, align 8
  %35 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  store %struct.sockaddr* %35, %struct.sockaddr** %15, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 4
  store i8* %37, i8** %14, align 8
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %121, %34
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %124

42:                                               ; preds = %38
  %43 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %44 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %108 [
    i32 129, label %46
    i32 128, label %67
  ]

46:                                               ; preds = %42
  %47 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %48 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp ne i64 %50, 4
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @free(i8* %53)
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %150

56:                                               ; preds = %46
  %57 = load i8*, i8** %14, align 8
  %58 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %59 = call i32 @memcpy(i8* %57, %struct.sockaddr* %58, i32 4)
  %60 = load i8*, i8** %14, align 8
  %61 = ptrtoint i8* %60 to i32
  %62 = sext i32 %61 to i64
  %63 = add i64 %62, 4
  %64 = inttoptr i64 %63 to i8*
  store i8* %64, i8** %14, align 8
  %65 = load i64, i64* %16, align 8
  %66 = add i64 %65, 4
  store i64 %66, i64* %16, align 8
  br label %112

67:                                               ; preds = %42
  %68 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %69 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp ne i64 %71, 4
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i8*, i8** %10, align 8
  %75 = call i32 @free(i8* %74)
  %76 = load i32, i32* @EINVAL, align 4
  store i32 %76, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %150

77:                                               ; preds = %67
  %78 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %79 = bitcast %struct.sockaddr* %78 to %struct.sockaddr_in6*
  %80 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %79, i32 0, i32 0
  %81 = call i32 @IN6_IS_ADDR_V4MAPPED(i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %77
  %84 = load i8*, i8** %14, align 8
  %85 = bitcast i8* %84 to %struct.sockaddr_in*
  %86 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %87 = bitcast %struct.sockaddr* %86 to %struct.sockaddr_in6*
  %88 = call i32 @in6_sin6_2_sin(%struct.sockaddr_in* %85, %struct.sockaddr_in6* %87)
  %89 = load i8*, i8** %14, align 8
  %90 = ptrtoint i8* %89 to i32
  %91 = sext i32 %90 to i64
  %92 = add i64 %91, 4
  %93 = inttoptr i64 %92 to i8*
  store i8* %93, i8** %14, align 8
  %94 = load i64, i64* %16, align 8
  %95 = add i64 %94, 4
  store i64 %95, i64* %16, align 8
  br label %107

96:                                               ; preds = %77
  %97 = load i8*, i8** %14, align 8
  %98 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %99 = call i32 @memcpy(i8* %97, %struct.sockaddr* %98, i32 4)
  %100 = load i8*, i8** %14, align 8
  %101 = ptrtoint i8* %100 to i32
  %102 = sext i32 %101 to i64
  %103 = add i64 %102, 4
  %104 = inttoptr i64 %103 to i8*
  store i8* %104, i8** %14, align 8
  %105 = load i64, i64* %16, align 8
  %106 = add i64 %105, 4
  store i64 %106, i64* %16, align 8
  br label %107

107:                                              ; preds = %96, %83
  br label %112

108:                                              ; preds = %42
  %109 = load i8*, i8** %10, align 8
  %110 = call i32 @free(i8* %109)
  %111 = load i32, i32* @EINVAL, align 4
  store i32 %111, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %150

112:                                              ; preds = %107, %56
  %113 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %114 = ptrtoint %struct.sockaddr* %113 to i32
  %115 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %116 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %114, %117
  %119 = sext i32 %118 to i64
  %120 = inttoptr i64 %119 to %struct.sockaddr*
  store %struct.sockaddr* %120, %struct.sockaddr** %15, align 8
  br label %121

121:                                              ; preds = %112
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %11, align 4
  br label %38

124:                                              ; preds = %38
  %125 = load i8*, i8** %10, align 8
  %126 = bitcast i8* %125 to i32*
  store i32* %126, i32** %13, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load i32*, i32** %13, align 8
  store i32 %127, i32* %128, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @IPPROTO_SCTP, align 4
  %131 = load i32, i32* @SCTP_CONNECT_X, align 4
  %132 = load i8*, i8** %10, align 8
  %133 = load i64, i64* %16, align 8
  %134 = trunc i64 %133 to i32
  %135 = call i32 @setsockopt(i32 %129, i32 %130, i32 %131, i8* %132, i32 %134)
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %124
  %139 = load i32*, i32** %9, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load i8*, i8** %10, align 8
  %143 = bitcast i8* %142 to i32*
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %9, align 8
  store i32 %144, i32* %145, align 4
  br label %146

146:                                              ; preds = %141, %138, %124
  %147 = load i8*, i8** %10, align 8
  %148 = call i32 @free(i8* %147)
  %149 = load i32, i32* %12, align 4
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %146, %108, %73, %52, %32, %22
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memcpy(i8*, %struct.sockaddr*, i32) #1

declare dso_local i32 @IN6_IS_ADDR_V4MAPPED(i32*) #1

declare dso_local i32 @in6_sin6_2_sin(%struct.sockaddr_in*, %struct.sockaddr_in6*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
