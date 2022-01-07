; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifbridge.c_bridge_addresses.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifbridge.c_bridge_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifbaconf = type { i32, i8*, %struct.ifbareq* }
%struct.ifbareq = type { i8*, i32, i32, i32, i32 }
%struct.ether_addr = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"unable to allocate address buffer\00", align 1
@BRDGRTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unable to get address cache\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%s%s Vlan%d %s %lu \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@IFBAFBITS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @bridge_addresses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bridge_addresses(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ifbaconf, align 8
  %6 = alloca %struct.ifbareq*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ether_addr, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %7, align 8
  store i32 8192, i32* %10, align 4
  br label %12

12:                                               ; preds = %40, %2
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %10, align 4
  %15 = call i8* @realloc(i8* %13, i32 %14)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 @err(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %12
  %21 = load i32, i32* %10, align 4
  %22 = getelementptr inbounds %struct.ifbaconf, %struct.ifbaconf* %5, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load i8*, i8** %8, align 8
  store i8* %23, i8** %7, align 8
  %24 = getelementptr inbounds %struct.ifbaconf, %struct.ifbaconf* %5, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @BRDGRTS, align 4
  %27 = call i64 @do_cmd(i32 %25, i32 %26, %struct.ifbaconf* %5, i32 24, i32 0)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = call i32 @err(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %20
  %32 = getelementptr inbounds %struct.ifbaconf, %struct.ifbaconf* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = add i64 %34, 24
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %43

40:                                               ; preds = %31
  %41 = load i32, i32* %10, align 4
  %42 = mul nsw i32 %41, 2
  store i32 %42, i32* %10, align 4
  br label %12

43:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %82, %43
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ifbaconf, %struct.ifbaconf* %5, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = udiv i64 %49, 24
  %51 = icmp ult i64 %46, %50
  br i1 %51, label %52, label %85

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.ifbaconf, %struct.ifbaconf* %5, i32 0, i32 2
  %54 = load %struct.ifbareq*, %struct.ifbareq** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ifbareq, %struct.ifbareq* %54, i64 %56
  store %struct.ifbareq* %57, %struct.ifbareq** %6, align 8
  %58 = getelementptr inbounds %struct.ether_addr, %struct.ether_addr* %11, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ifbareq*, %struct.ifbareq** %6, align 8
  %61 = getelementptr inbounds %struct.ifbareq, %struct.ifbareq* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @memcpy(i32 %59, i32 %62, i32 4)
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @ether_ntoa(%struct.ether_addr* %11)
  %66 = load %struct.ifbareq*, %struct.ifbareq** %6, align 8
  %67 = getelementptr inbounds %struct.ifbareq, %struct.ifbareq* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.ifbareq*, %struct.ifbareq** %6, align 8
  %70 = getelementptr inbounds %struct.ifbareq, %struct.ifbareq* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ifbareq*, %struct.ifbareq** %6, align 8
  %73 = getelementptr inbounds %struct.ifbareq, %struct.ifbareq* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %64, i32 %65, i8* %68, i32 %71, i32 %74)
  %76 = load %struct.ifbareq*, %struct.ifbareq** %6, align 8
  %77 = getelementptr inbounds %struct.ifbareq, %struct.ifbareq* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @IFBAFBITS, align 4
  %80 = call i32 @printb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %78, i32 %79)
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %82

82:                                               ; preds = %52
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %44

85:                                               ; preds = %44
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @free(i8* %86)
  ret void
}

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @do_cmd(i32, i32, %struct.ifbaconf*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ether_ntoa(%struct.ether_addr*) #1

declare dso_local i32 @printb(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
