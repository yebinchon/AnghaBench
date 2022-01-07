; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ping/extr_ping.c_pr_retip.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ping/extr_ping.c_pr_retip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"TCP: from port %u, to port %u (decimal)\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"UDP: from port %u, to port %u (decimal)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip*, i32*)* @pr_retip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pr_retip(%struct.ip* %0, i32* %1) #0 {
  %3 = alloca %struct.ip*, align 8
  %4 = alloca i32*, align 8
  store %struct.ip* %0, %struct.ip** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.ip*, %struct.ip** %3, align 8
  %6 = call i32 @pr_iph(%struct.ip* %5)
  %7 = load %struct.ip*, %struct.ip** %3, align 8
  %8 = getelementptr inbounds %struct.ip, %struct.ip* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 6
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %13, 256
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %14, %17
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 256
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %22, %25
  %27 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %26)
  br label %51

28:                                               ; preds = %2
  %29 = load %struct.ip*, %struct.ip** %3, align 8
  %30 = getelementptr inbounds %struct.ip, %struct.ip* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 17
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %35, 256
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %36, %39
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 256
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %44, %47
  %49 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %48)
  br label %50

50:                                               ; preds = %33, %28
  br label %51

51:                                               ; preds = %50, %11
  ret void
}

declare dso_local i32 @pr_iph(%struct.ip*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
