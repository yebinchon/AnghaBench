; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/tftp-proxy/extr_filter.c_server_lookup4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/tftp-proxy/extr_filter.c_server_lookup4.c"
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
@dev = common dso_local global i32 0, align 4
@DIOCNATLOOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @server_lookup4(%struct.sockaddr_in* %0, %struct.sockaddr_in* %1, %struct.sockaddr_in* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pfioc_natlook, align 8
  store %struct.sockaddr_in* %0, %struct.sockaddr_in** %6, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %7, align 8
  store %struct.sockaddr_in* %2, %struct.sockaddr_in** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = bitcast %struct.pfioc_natlook* %10 to %struct.sockaddr_in*
  %12 = call i32 @memset(%struct.sockaddr_in* %11, i32 0, i32 72)
  %13 = load i32, i32* @PF_OUT, align 4
  %14 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %10, i32 0, i32 12
  store i32 %13, i32* %14, align 8
  %15 = load i8*, i8** @AF_INET, align 8
  %16 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %10, i32 0, i32 11
  store i8* %15, i8** %16, align 8
  %17 = load i32, i32* %9, align 4
  %18 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %10, i32 0, i32 10
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %10, i32 0, i32 9
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = call i32 @memcpy(i32* %20, i32* %23, i32 4)
  %25 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %10, i32 0, i32 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = call i32 @memcpy(i32* %26, i32* %29, i32 4)
  %31 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %10, i32 0, i32 7
  store i32 %33, i32* %34, align 4
  %35 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %10, i32 0, i32 6
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* @dev, align 4
  %40 = load i32, i32* @DIOCNATLOOK, align 4
  %41 = bitcast %struct.pfioc_natlook* %10 to %struct.sockaddr_in*
  %42 = call i32 @ioctl(i32 %39, i32 %40, %struct.sockaddr_in* %41)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %63

45:                                               ; preds = %4
  %46 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %47 = call i32 @memset(%struct.sockaddr_in* %46, i32 0, i32 72)
  %48 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %49 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %48, i32 0, i32 0
  store i32 72, i32* %49, align 8
  %50 = load i8*, i8** @AF_INET, align 8
  %51 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %52 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %51, i32 0, i32 5
  store i8* %50, i8** %52, align 8
  %53 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %54 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %10, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = call i32 @memcpy(i32* %55, i32* %57, i32 4)
  %59 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %10, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %62 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %45, %44
  %64 = load i32, i32* %5, align 4
  ret i32 %64
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
