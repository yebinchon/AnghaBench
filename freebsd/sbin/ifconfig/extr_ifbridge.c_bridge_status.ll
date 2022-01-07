; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifbridge.c_bridge_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifbridge.c_bridge_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifbropreq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ifbrparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ether_addr = type { i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@BRDGGCACHE = common dso_local global i32 0, align 4
@BRDGGTO = common dso_local global i32 0, align 4
@BRDGPARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"\09id %s priority %u hellotime %u fwddelay %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"\09maxage %u holdcnt %u proto %s maxaddr %u timeout %u\0A\00", align 1
@stpproto = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"\09root id %s priority %d ifcost %u port %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"\09member: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @bridge_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bridge_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifbropreq, align 4
  %4 = alloca %struct.ifbrparam, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %17 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @BRDGGCACHE, align 4
  %23 = call i64 @do_cmd(i32 %21, i32 %22, %struct.ifbrparam* %4, i32 48, i32 0)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 1, i32* %16, align 4
  br label %91

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.ifbrparam, %struct.ifbrparam* %4, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @BRDGGTO, align 4
  %31 = call i64 @do_cmd(i32 %29, i32 %30, %struct.ifbrparam* %4, i32 48, i32 0)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 1, i32* %16, align 4
  br label %91

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.ifbrparam, %struct.ifbrparam* %4, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @BRDGPARAM, align 4
  %39 = bitcast %struct.ifbropreq* %3 to %struct.ifbrparam*
  %40 = call i64 @do_cmd(i32 %37, i32 %38, %struct.ifbrparam* %39, i32 48, i32 0)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 1, i32* %16, align 4
  br label %91

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %3, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %5, align 4
  %46 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %3, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %10, align 4
  %48 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %3, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %6, align 4
  %50 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %3, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %7, align 4
  %52 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %3, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %9, align 4
  %54 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %3, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %8, align 4
  %56 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %3, i32 0, i32 11
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @PV2ID(i32 %57, i32 %58, i32* %20)
  %60 = bitcast i32* %20 to %struct.ether_addr*
  %61 = call i8* @ether_ntoa(%struct.ether_addr* %60)
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %61, i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i8**, i8*** @stpproto, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %15, align 4
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67, i8* %72, i32 %73, i32 %74)
  %76 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %3, i32 0, i32 10
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @PV2ID(i32 %77, i32 %78, i32* %20)
  %80 = bitcast i32* %20 to %struct.ether_addr*
  %81 = call i8* @ether_ntoa(%struct.ether_addr* %80)
  %82 = load i32, i32* %13, align 4
  %83 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %3, i32 0, i32 8
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %3, i32 0, i32 9
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 4095
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %81, i32 %82, i32 %84, i32 %87)
  %89 = load i32, i32* %2, align 4
  %90 = call i32 @bridge_interfaces(i32 %89, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %91

91:                                               ; preds = %43, %42, %33, %25
  %92 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %92)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @do_cmd(i32, i32, %struct.ifbrparam*, i32, i32) #2

declare dso_local i32 @PV2ID(i32, i32, i32*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @ether_ntoa(%struct.ether_addr*) #2

declare dso_local i32 @bridge_interfaces(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
