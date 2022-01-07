; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_sctp_sys_calls.c_sctp_sendx.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_sctp_sys_calls.c_sctp_sendx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64, i64 }
%struct.sctp_sndrcvinfo = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@IPPROTO_SCTP = common dso_local global i32 0, align 4
@SCTP_CONNECT_X_DELAYED = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@SCTP_CONNECT_X_COMPLETE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@SYS_sctp_generic_sendmsg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sendx(i32 %0, i8* %1, i64 %2, %struct.sockaddr* %3, i32 %4, %struct.sctp_sndrcvinfo* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sctp_sndrcvinfo*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.sctp_sndrcvinfo, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.sockaddr*, align 8
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.sctp_sndrcvinfo* %5, %struct.sctp_sndrcvinfo** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %23, align 4
  %27 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %28 = icmp eq %struct.sockaddr* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %7
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* @errno, align 4
  store i32 -1, i32* %8, align 4
  br label %161

31:                                               ; preds = %7
  store i64 4, i64* %24, align 8
  %32 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  store %struct.sockaddr* %32, %struct.sockaddr** %26, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %33

33:                                               ; preds = %65, %31
  %34 = load i32, i32* %18, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %68

37:                                               ; preds = %33
  %38 = load %struct.sockaddr*, %struct.sockaddr** %26, align 8
  %39 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AF_INET, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i64 4, i64* %25, align 8
  br label %54

44:                                               ; preds = %37
  %45 = load %struct.sockaddr*, %struct.sockaddr** %26, align 8
  %46 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AF_INET6, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i64 4, i64* %25, align 8
  br label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* @errno, align 4
  store i32 -1, i32* %8, align 4
  br label %161

53:                                               ; preds = %50
  br label %54

54:                                               ; preds = %53, %43
  %55 = load i64, i64* %25, align 8
  %56 = load i64, i64* %24, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %24, align 8
  %58 = load %struct.sockaddr*, %struct.sockaddr** %26, align 8
  %59 = ptrtoint %struct.sockaddr* %58 to i64
  %60 = load i64, i64* %25, align 8
  %61 = add i64 %59, %60
  %62 = inttoptr i64 %61 to %struct.sockaddr*
  store %struct.sockaddr* %62, %struct.sockaddr** %26, align 8
  %63 = load i32, i32* %19, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %19, align 4
  br label %65

65:                                               ; preds = %54
  %66 = load i32, i32* %18, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %18, align 4
  br label %33

68:                                               ; preds = %33
  %69 = load i32, i32* %19, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* @EINVAL, align 4
  store i32 %72, i32* @errno, align 4
  store i32 -1, i32* %8, align 4
  br label %161

73:                                               ; preds = %68
  %74 = load i64, i64* %24, align 8
  %75 = call i8* @malloc(i64 %74)
  store i8* %75, i8** %22, align 8
  %76 = load i8*, i8** %22, align 8
  %77 = icmp eq i8* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @ENOMEM, align 4
  store i32 %79, i32* @errno, align 4
  store i32 -1, i32* %8, align 4
  br label %161

80:                                               ; preds = %73
  %81 = load i8*, i8** %22, align 8
  %82 = bitcast i8* %81 to i32*
  store i32* %82, i32** %20, align 8
  %83 = load i32, i32* %19, align 4
  %84 = load i32*, i32** %20, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i32*, i32** %20, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %20, align 8
  %87 = load i32*, i32** %20, align 8
  %88 = ptrtoint i32* %87 to i64
  %89 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %90 = load i64, i64* %24, align 8
  %91 = sub i64 %90, 4
  %92 = call i32 @memcpy(i64 %88, %struct.sockaddr* %89, i64 %91)
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @IPPROTO_SCTP, align 4
  %95 = load i32, i32* @SCTP_CONNECT_X_DELAYED, align 4
  %96 = load i8*, i8** %22, align 8
  %97 = load i64, i64* %24, align 8
  %98 = call i32 @setsockopt(i32 %93, i32 %94, i32 %95, i8* %96, i64 %97)
  store i32 %98, i32* %17, align 4
  %99 = load i8*, i8** %22, align 8
  %100 = call i32 @free(i8* %99)
  %101 = load i32, i32* %17, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %80
  %104 = load i32, i32* @errno, align 4
  %105 = load i32, i32* @EALREADY, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  store i32 1, i32* %23, align 4
  br label %111

108:                                              ; preds = %103
  %109 = load i32, i32* %17, align 4
  store i32 %109, i32* %8, align 4
  br label %161

110:                                              ; preds = %80
  br label %111

111:                                              ; preds = %110, %107
  %112 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %14, align 8
  %113 = icmp eq %struct.sctp_sndrcvinfo* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  store %struct.sctp_sndrcvinfo* %16, %struct.sctp_sndrcvinfo** %14, align 8
  %115 = call i32 @memset(%struct.sctp_sndrcvinfo* %16, i32 0, i32 8)
  br label %116

116:                                              ; preds = %114, %111
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %119 = call i8* @sctp_getassocid(i32 %117, %struct.sockaddr* %118)
  %120 = ptrtoint i8* %119 to i64
  %121 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %14, align 8
  %122 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %14, align 8
  %124 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %116
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @IPPROTO_SCTP, align 4
  %130 = load i32, i32* @SCTP_CONNECT_X_COMPLETE, align 4
  %131 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %132 = bitcast %struct.sockaddr* %131 to i8*
  %133 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %134 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @setsockopt(i32 %128, i32 %129, i32 %130, i8* %132, i64 %135)
  %137 = load i32, i32* @ENOENT, align 4
  store i32 %137, i32* @errno, align 4
  store i32 -1, i32* %8, align 4
  br label %161

138:                                              ; preds = %116
  %139 = load i32, i32* %9, align 4
  %140 = load i8*, i8** %10, align 8
  %141 = load i64, i64* %11, align 8
  %142 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %14, align 8
  %143 = load i32, i32* %15, align 4
  %144 = call i32 @sctp_send(i32 %139, i8* %140, i64 %141, %struct.sctp_sndrcvinfo* %142, i32 %143)
  store i32 %144, i32* %17, align 4
  %145 = load i32, i32* @errno, align 4
  store i32 %145, i32* %21, align 4
  %146 = load i32, i32* %23, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %138
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* @IPPROTO_SCTP, align 4
  %151 = load i32, i32* @SCTP_CONNECT_X_COMPLETE, align 4
  %152 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %153 = bitcast %struct.sockaddr* %152 to i8*
  %154 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %155 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @setsockopt(i32 %149, i32 %150, i32 %151, i8* %153, i64 %156)
  br label %158

158:                                              ; preds = %148, %138
  %159 = load i32, i32* %21, align 4
  store i32 %159, i32* @errno, align 4
  %160 = load i32, i32* %17, align 4
  store i32 %160, i32* %8, align 4
  br label %161

161:                                              ; preds = %158, %127, %108, %78, %71, %51, %29
  %162 = load i32, i32* %8, align 4
  ret i32 %162
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i64, %struct.sockaddr*, i64) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memset(%struct.sctp_sndrcvinfo*, i32, i32) #1

declare dso_local i8* @sctp_getassocid(i32, %struct.sockaddr*) #1

declare dso_local i32 @sctp_send(i32, i8*, i64, %struct.sctp_sndrcvinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
