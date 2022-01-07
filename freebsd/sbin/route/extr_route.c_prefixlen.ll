; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/route/extr_route.c_prefixlen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/route/extr_route.c_prefixlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTA_NETMASK = common dso_local global i32 0, align 4
@rtm_addrs = common dso_local global i32 0, align 4
@af = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"prefixlen not supported in this af\00", align 1
@EX_USAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: invalid prefixlen\00", align 1
@RTAX_NETMASK = common dso_local global i64 0, align 8
@so = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @prefixlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prefixlen(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @atoi(i8* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @RTA_NETMASK, align 4
  %12 = load i32, i32* @rtm_addrs, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* @rtm_addrs, align 4
  %14 = load i32, i32* @af, align 4
  switch i32 %14, label %15 [
  ]

15:                                               ; preds = %1
  %16 = load i32, i32* @EX_OSERR, align 4
  %17 = call i32 (i32, i8*, ...) @errx(i32 %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21, %18
  %26 = load i32, i32* @EX_USAGE, align 4
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 (i32, i8*, ...) @errx(i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %4, align 4
  %31 = ashr i32 %30, 3
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, 7
  store i32 %33, i32* %6, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sdiv i32 %35, 8
  %37 = call i32 @memset(i8* %34, i32 0, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @memset(i8* %41, i32 255, i32 %42)
  br label %44

44:                                               ; preds = %40, %29
  %45 = load i32, i32* %6, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = ashr i32 65280, %48
  %50 = and i32 %49, 255
  %51 = load i8*, i8** %8, align 8
  %52 = bitcast i8* %51 to i32*
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %50, i32* %55, align 4
  br label %56

56:                                               ; preds = %47, %44
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 -1, i32* %2, align 4
  br label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %60
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
