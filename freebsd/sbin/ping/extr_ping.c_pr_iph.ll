; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ping/extr_ping.c_pr_iph.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ping/extr_ping.c_pr_iph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"Vr HL TOS  Len   ID Flg  off TTL Pro  cks      Src      Dst\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c" %1x  %1x  %02x %04x %04x\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"   %1lx %04lx\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"  %02x  %02x %04x\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip*)* @pr_iph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pr_iph(%struct.ip* %0) #0 {
  %2 = alloca %struct.ip*, align 8
  %3 = alloca %struct.in_addr, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.ip* %0, %struct.ip** %2, align 8
  %6 = load %struct.ip*, %struct.ip** %2, align 8
  %7 = getelementptr inbounds %struct.ip, %struct.ip* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = shl i32 %8, 2
  store i32 %9, i32* %5, align 4
  %10 = load %struct.ip*, %struct.ip** %2, align 8
  %11 = bitcast %struct.ip* %10 to i32*
  %12 = getelementptr inbounds i32, i32* %11, i64 20
  store i32* %12, i32** %4, align 8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ip*, %struct.ip** %2, align 8
  %15 = getelementptr inbounds %struct.ip, %struct.ip* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ip*, %struct.ip** %2, align 8
  %18 = getelementptr inbounds %struct.ip, %struct.ip* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ip*, %struct.ip** %2, align 8
  %21 = getelementptr inbounds %struct.ip, %struct.ip* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ip*, %struct.ip** %2, align 8
  %24 = getelementptr inbounds %struct.ip, %struct.ip* %23, i32 0, i32 10
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ntohs(i32 %25)
  %27 = load %struct.ip*, %struct.ip** %2, align 8
  %28 = getelementptr inbounds %struct.ip, %struct.ip* %27, i32 0, i32 9
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ntohs(i32 %29)
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %19, i32 %22, i32 %26, i32 %30)
  %32 = load %struct.ip*, %struct.ip** %2, align 8
  %33 = getelementptr inbounds %struct.ip, %struct.ip* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ntohl(i32 %34)
  %36 = and i32 %35, 57344
  %37 = ashr i32 %36, 13
  %38 = load %struct.ip*, %struct.ip** %2, align 8
  %39 = getelementptr inbounds %struct.ip, %struct.ip* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ntohl(i32 %40)
  %42 = and i32 %41, 8191
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 %42)
  %44 = load %struct.ip*, %struct.ip** %2, align 8
  %45 = getelementptr inbounds %struct.ip, %struct.ip* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ip*, %struct.ip** %2, align 8
  %48 = getelementptr inbounds %struct.ip, %struct.ip* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ip*, %struct.ip** %2, align 8
  %51 = getelementptr inbounds %struct.ip, %struct.ip* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ntohs(i32 %52)
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %46, i32 %49, i32 %53)
  %55 = load %struct.ip*, %struct.ip** %2, align 8
  %56 = getelementptr inbounds %struct.ip, %struct.ip* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = call i32 @memcpy(%struct.in_addr* %3, i32* %57, i32 4)
  %59 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @inet_ntoa(i32 %60)
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %61)
  %63 = load %struct.ip*, %struct.ip** %2, align 8
  %64 = getelementptr inbounds %struct.ip, %struct.ip* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i32 @memcpy(%struct.in_addr* %3, i32* %65, i32 4)
  %67 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @inet_ntoa(i32 %68)
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %75, %1
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %5, align 4
  %74 = icmp sgt i32 %72, 20
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %4, align 8
  %78 = load i32, i32* %76, align 4
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  br label %71

80:                                               ; preds = %71
  %81 = call i32 @putchar(i8 signext 10)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @memcpy(%struct.in_addr*, i32*, i32) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
