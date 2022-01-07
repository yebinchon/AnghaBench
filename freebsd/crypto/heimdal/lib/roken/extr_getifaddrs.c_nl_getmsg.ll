; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getifaddrs.c_nl_getmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getifaddrs.c_nl_getmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i64, i32, i64, i64 }
%struct.nlmsgerr = type { i32 }

@MSG_TRUNC = common dso_local global i32 0, align 4
@NLMSG_DONE = common dso_local global i64 0, align 8
@NLMSG_ERROR = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.nlmsghdr**, i32*)* @nl_getmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl_getmsg(i32 %0, i32 %1, i32 %2, %struct.nlmsghdr** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nlmsghdr**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.nlmsgerr*, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.nlmsghdr** %3, %struct.nlmsghdr*** %9, align 8
  store i32* %4, i32** %10, align 8
  store i64 65536, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i8* null, i8** %14, align 8
  store i32 0, i32* %15, align 4
  %22 = call i64 (...) @getpid()
  store i64 %22, i64* %18, align 8
  br label %23

23:                                               ; preds = %49, %5
  %24 = load i8*, i8** %14, align 8
  %25 = load i64, i64* %12, align 8
  %26 = call i8* @realloc(i8* %24, i64 %25)
  store i8* %26, i8** %19, align 8
  %27 = load i8*, i8** %19, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* %13, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %23
  store i32 -1, i32* %15, align 4
  br label %122

34:                                               ; preds = %29
  %35 = load i8*, i8** %19, align 8
  store i8* %35, i8** %14, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i8*, i8** %14, align 8
  %40 = load i64, i64* %12, align 8
  %41 = call i32 @nl_recvmsg(i32 %36, i32 %37, i32 %38, i8* %39, i64 %40, i32* %17)
  store i32 %41, i32* %16, align 4
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* @MSG_TRUNC, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44, %34
  %50 = load i64, i64* %12, align 8
  store i64 %50, i64* %13, align 8
  %51 = load i64, i64* %12, align 8
  %52 = mul i64 %51, 2
  store i64 %52, i64* %12, align 8
  br label %23

53:                                               ; preds = %44
  %54 = load i32, i32* %16, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %122

57:                                               ; preds = %53
  %58 = load i8*, i8** %14, align 8
  %59 = bitcast i8* %58 to %struct.nlmsghdr*
  store %struct.nlmsghdr* %59, %struct.nlmsghdr** %11, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = bitcast i8* %60 to %struct.nlmsghdr*
  store %struct.nlmsghdr* %61, %struct.nlmsghdr** %11, align 8
  br label %62

62:                                               ; preds = %116, %57
  %63 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %64 = load i32, i32* %16, align 4
  %65 = call i64 @NLMSG_OK(%struct.nlmsghdr* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %121

67:                                               ; preds = %62
  %68 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %69 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %18, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %75 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73, %67
  br label %116

80:                                               ; preds = %73
  %81 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %82 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @NLMSG_DONE, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  br label %121

90:                                               ; preds = %80
  %91 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %92 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @NLMSG_ERROR, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %115

96:                                               ; preds = %90
  %97 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %98 = call i64 @NLMSG_DATA(%struct.nlmsghdr* %97)
  %99 = inttoptr i64 %98 to %struct.nlmsgerr*
  store %struct.nlmsgerr* %99, %struct.nlmsgerr** %20, align 8
  store i32 -1, i32* %15, align 4
  %100 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %101 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @NLMSG_LENGTH(i32 4)
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %96
  %106 = load i32, i32* @EIO, align 4
  %107 = call i32 @__set_errno(i32 %106)
  br label %114

108:                                              ; preds = %96
  %109 = load %struct.nlmsgerr*, %struct.nlmsgerr** %20, align 8
  %110 = getelementptr inbounds %struct.nlmsgerr, %struct.nlmsgerr* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 0, %111
  %113 = call i32 @__set_errno(i32 %112)
  br label %114

114:                                              ; preds = %108, %105
  br label %121

115:                                              ; preds = %90
  br label %116

116:                                              ; preds = %115, %79
  %117 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %118 = load i32, i32* %16, align 4
  %119 = call i64 @NLMSG_NEXT(%struct.nlmsghdr* %117, i32 %118)
  %120 = inttoptr i64 %119 to %struct.nlmsghdr*
  store %struct.nlmsghdr* %120, %struct.nlmsghdr** %11, align 8
  br label %62

121:                                              ; preds = %114, %86, %62
  br label %122

122:                                              ; preds = %121, %56, %33
  %123 = load i32, i32* %15, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %122
  %126 = load i8*, i8** %14, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load i32, i32* @errno, align 4
  store i32 %129, i32* %21, align 4
  %130 = load i8*, i8** %14, align 8
  %131 = call i32 @free(i8* %130)
  %132 = load i32, i32* %21, align 4
  %133 = call i32 @__set_errno(i32 %132)
  br label %134

134:                                              ; preds = %128, %125
  br label %135

135:                                              ; preds = %134, %122
  %136 = load i8*, i8** %14, align 8
  %137 = bitcast i8* %136 to %struct.nlmsghdr*
  %138 = load %struct.nlmsghdr**, %struct.nlmsghdr*** %9, align 8
  store %struct.nlmsghdr* %137, %struct.nlmsghdr** %138, align 8
  %139 = load i32, i32* %15, align 4
  ret i32 %139
}

declare dso_local i64 @getpid(...) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @nl_recvmsg(i32, i32, i32, i8*, i64, i32*) #1

declare dso_local i64 @NLMSG_OK(%struct.nlmsghdr*, i32) #1

declare dso_local i64 @NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local i64 @NLMSG_LENGTH(i32) #1

declare dso_local i32 @__set_errno(i32) #1

declare dso_local i64 @NLMSG_NEXT(%struct.nlmsghdr*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
