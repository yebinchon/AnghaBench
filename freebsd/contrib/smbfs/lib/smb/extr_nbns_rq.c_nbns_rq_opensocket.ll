; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_nbns_rq.c_nbns_rq_opensocket.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_nbns_rq.c_nbns_rq_opensocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbns_rq = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_8__, i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@NBRQF_BROADCAST = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_BROADCAST = common dso_local global i32 0, align 4
@NBERR_NOBCASTIFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbns_rq*)* @nbns_rq_opensocket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nbns_rq_opensocket(%struct.nbns_rq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nbns_rq*, align 8
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nbns_rq* %0, %struct.nbns_rq** %3, align 8
  %7 = load i32, i32* @AF_INET, align 4
  %8 = load i32, i32* @SOCK_DGRAM, align 4
  %9 = call i32 @socket(i32 %7, i32 %8, i32 0)
  %10 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %11 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  store i32 %9, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @errno, align 4
  store i32 %15, i32* %2, align 4
  br label %77

16:                                               ; preds = %1
  %17 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %18 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NBRQF_BROADCAST, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %76

23:                                               ; preds = %16
  store i32 1, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @SOL_SOCKET, align 4
  %26 = load i32, i32* @SO_BROADCAST, align 4
  %27 = call i64 @setsockopt(i32 %24, i32 %25, i32 %26, i32* %5, i32 4)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @errno, align 4
  store i32 %30, i32* %2, align 4
  br label %77

31:                                               ; preds = %23
  %32 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %33 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %32, i32 0, i32 2
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = icmp eq %struct.TYPE_10__* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @NBERR_NOBCASTIFS, align 4
  %38 = call i32 @NBERROR(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %77

39:                                               ; preds = %31
  %40 = call i32 @bzero(%struct.sockaddr_in* %4, i32 12)
  %41 = load i32, i32* @AF_INET, align 4
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i32 12, i32* %43, align 4
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  %45 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %46 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %45, i32 0, i32 2
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = bitcast %struct.TYPE_8__* %44 to i8*
  %50 = bitcast %struct.TYPE_8__* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 4, i1 false)
  %51 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %52 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %51, i32 0, i32 2
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %58 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %57, i32 0, i32 2
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = xor i32 %62, -1
  %64 = or i32 %56, %63
  %65 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %66 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 8
  %69 = load i32, i32* %6, align 4
  %70 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %71 = call i64 @bind(i32 %69, %struct.sockaddr* %70, i32 12)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %39
  %74 = load i32, i32* @errno, align 4
  store i32 %74, i32* %2, align 4
  br label %77

75:                                               ; preds = %39
  br label %76

76:                                               ; preds = %75, %16
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %73, %36, %29, %14
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @NBERROR(i32) #1

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
