; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/ftp-proxy/extr_filter.c_server_lookup4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/ftp-proxy/extr_filter.c_server_lookup4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, i8*, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i8*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.pfioc_natlook = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, i8*, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i8*, i32 }

@PF_OUT = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i8* null, align 8
@IPPROTO_TCP = common dso_local global i32 0, align 4
@dev = common dso_local global i32 0, align 4
@DIOCNATLOOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @server_lookup4(%struct.sockaddr_in* %0, %struct.sockaddr_in* %1, %struct.sockaddr_in* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.pfioc_natlook, align 8
  store %struct.sockaddr_in* %0, %struct.sockaddr_in** %5, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %6, align 8
  store %struct.sockaddr_in* %2, %struct.sockaddr_in** %7, align 8
  %9 = bitcast %struct.pfioc_natlook* %8 to %struct.sockaddr_in*
  %10 = call i32 @memset(%struct.sockaddr_in* %9, i32 0, i32 72)
  %11 = load i32, i32* @PF_OUT, align 4
  %12 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %8, i32 0, i32 12
  store i32 %11, i32* %12, align 8
  %13 = load i8*, i8** @AF_INET, align 8
  %14 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %8, i32 0, i32 11
  store i8* %13, i8** %14, align 8
  %15 = load i32, i32* @IPPROTO_TCP, align 4
  %16 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %8, i32 0, i32 10
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %8, i32 0, i32 9
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = call i32 @memcpy(i32* %18, i32* %21, i32 4)
  %23 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %8, i32 0, i32 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = call i32 @memcpy(i32* %24, i32* %27, i32 4)
  %29 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %8, i32 0, i32 7
  store i32 %31, i32* %32, align 4
  %33 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %8, i32 0, i32 6
  store i32 %35, i32* %36, align 8
  %37 = load i32, i32* @dev, align 4
  %38 = load i32, i32* @DIOCNATLOOK, align 4
  %39 = bitcast %struct.pfioc_natlook* %8 to %struct.sockaddr_in*
  %40 = call i32 @ioctl(i32 %37, i32 %38, %struct.sockaddr_in* %39)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %43

42:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %61

43:                                               ; preds = %3
  %44 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %45 = call i32 @memset(%struct.sockaddr_in* %44, i32 0, i32 72)
  %46 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %46, i32 0, i32 0
  store i32 72, i32* %47, align 8
  %48 = load i8*, i8** @AF_INET, align 8
  %49 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %50 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %49, i32 0, i32 5
  store i8* %48, i8** %50, align 8
  %51 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %52 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %8, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = call i32 @memcpy(i32* %53, i32* %55, i32 4)
  %57 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %8, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %60 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %43, %42
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.sockaddr_in*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
