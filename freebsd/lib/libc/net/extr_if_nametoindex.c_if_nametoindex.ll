; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_if_nametoindex.c_if_nametoindex.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_if_nametoindex.c_if_nametoindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i32, i32 }
%struct.ifaddrs = type { %struct.TYPE_2__*, i32, %struct.ifaddrs* }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr_dl = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@SOCK_CLOEXEC = common dso_local global i32 0, align 4
@SIOCGIFINDEX = common dso_local global i32 0, align 4
@AF_LINK = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @if_nametoindex(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifreq, align 4
  %6 = alloca %struct.ifaddrs*, align 8
  %7 = alloca %struct.ifaddrs*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @AF_INET, align 4
  %10 = load i32, i32* @SOCK_DGRAM, align 4
  %11 = load i32, i32* @SOCK_CLOEXEC, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @_socket(i32 %9, i32 %12, i32 0)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %34

16:                                               ; preds = %1
  %17 = call i32 @memset(%struct.ifreq* %5, i32 0, i32 8)
  %18 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @strlcpy(i32 %19, i8* %20, i32 4)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @SIOCGIFINDEX, align 4
  %24 = call i32 @_ioctl(i32 %22, i32 %23, %struct.ifreq* %5)
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @_close(i32 %27)
  %29 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %2, align 4
  br label %83

31:                                               ; preds = %16
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @_close(i32 %32)
  br label %34

34:                                               ; preds = %31, %1
  %35 = call i64 @getifaddrs(%struct.ifaddrs** %6)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %83

38:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  %39 = load %struct.ifaddrs*, %struct.ifaddrs** %6, align 8
  store %struct.ifaddrs* %39, %struct.ifaddrs** %7, align 8
  br label %40

40:                                               ; preds = %70, %38
  %41 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  %42 = icmp ne %struct.ifaddrs* %41, null
  br i1 %42, label %43, label %74

43:                                               ; preds = %40
  %44 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  %45 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = icmp ne %struct.TYPE_2__* %46, null
  br i1 %47, label %48, label %69

48:                                               ; preds = %43
  %49 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  %50 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @AF_LINK, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %48
  %57 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  %58 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i8*, i8** %3, align 8
  %61 = call i64 @strcmp(i32 %59, i8* %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  %65 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = bitcast %struct.TYPE_2__* %66 to %struct.sockaddr_dl*
  %68 = call i32 @LLINDEX(%struct.sockaddr_dl* %67)
  store i32 %68, i32* %8, align 4
  br label %74

69:                                               ; preds = %56, %48, %43
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  %72 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %71, i32 0, i32 2
  %73 = load %struct.ifaddrs*, %struct.ifaddrs** %72, align 8
  store %struct.ifaddrs* %73, %struct.ifaddrs** %7, align 8
  br label %40

74:                                               ; preds = %63, %40
  %75 = load %struct.ifaddrs*, %struct.ifaddrs** %6, align 8
  %76 = call i32 @freeifaddrs(%struct.ifaddrs* %75)
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* @ENXIO, align 4
  store i32 %80, i32* @errno, align 4
  br label %81

81:                                               ; preds = %79, %74
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %37, %26
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @_socket(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @_ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @_close(i32) #1

declare dso_local i64 @getifaddrs(%struct.ifaddrs**) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @LLINDEX(%struct.sockaddr_dl*) #1

declare dso_local i32 @freeifaddrs(%struct.ifaddrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
