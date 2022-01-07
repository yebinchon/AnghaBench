; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/libifconfig/extr_status.c_print_link_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/libifconfig/extr_status.c_print_link_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { i64 }
%struct.sockaddr_dl = type { i64, i64, i64 }
%struct.ether_addr = type { i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i64 0, align 8
@IFT_L2VLAN = common dso_local global i64 0, align 8
@IFT_BRIDGE = common dso_local global i64 0, align 8
@ETHER_ADDR_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"\09ether %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"\09lladdr %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.ifaddrs*)* @print_link_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_link_addr(i32* %0, %struct.ifaddrs* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ifaddrs*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sockaddr_dl*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.ifaddrs* %1, %struct.ifaddrs** %4, align 8
  %9 = load i32, i32* @NI_MAXHOST, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %14 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %16, %struct.sockaddr_dl** %7, align 8
  %17 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %7, align 8
  %18 = icmp ne %struct.sockaddr_dl* %17, null
  br i1 %18, label %19, label %75

19:                                               ; preds = %2
  %20 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %7, align 8
  %21 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %75

24:                                               ; preds = %19
  %25 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %7, align 8
  %26 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IFT_ETHER, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %42, label %30

30:                                               ; preds = %24
  %31 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %7, align 8
  %32 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IFT_L2VLAN, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %7, align 8
  %38 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @IFT_BRIDGE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %36, %30, %24
  %43 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %7, align 8
  %44 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ETHER_ADDR_LEN, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %7, align 8
  %50 = call i64 @LLADDR(%struct.sockaddr_dl* %49)
  %51 = inttoptr i64 %50 to %struct.ether_addr*
  %52 = call i32 @ether_ntoa_r(%struct.ether_addr* %51, i8* %12)
  %53 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %12)
  br label %74

54:                                               ; preds = %42, %36
  %55 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %7, align 8
  %56 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %7, align 8
  %61 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  br label %65

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %59
  %66 = phi i64 [ %63, %59 ], [ 0, %64 ]
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %8, align 4
  %68 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %7, align 8
  %69 = call i8* @link_ntoa(%struct.sockaddr_dl* %68)
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %65, %48
  br label %75

75:                                               ; preds = %74, %19, %2
  %76 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %76)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ether_ntoa_r(%struct.ether_addr*, i8*) #2

declare dso_local i64 @LLADDR(%struct.sockaddr_dl*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i8* @link_ntoa(%struct.sockaddr_dl*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
