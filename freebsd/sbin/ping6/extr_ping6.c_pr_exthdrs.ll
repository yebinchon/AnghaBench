; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ping6/extr_ping6.c_pr_exthdrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ping6/extr_ping6.c_pr_exthdrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i8* }
%struct.cmsghdr = type { i64, i32 }

@IPPROTO_IPV6 = common dso_local global i64 0, align 8
@CONTROLLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"  HbH Options: \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"  Dst Options: \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"  Routing: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msghdr*)* @pr_exthdrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pr_exthdrs(%struct.msghdr* %0) #0 {
  %2 = alloca %struct.msghdr*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cmsghdr*, align 8
  store %struct.msghdr* %0, %struct.msghdr** %2, align 8
  store i64 0, i64* %3, align 8
  %6 = load %struct.msghdr*, %struct.msghdr** %2, align 8
  %7 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %4, align 8
  %9 = load %struct.msghdr*, %struct.msghdr** %2, align 8
  %10 = call i64 @CMSG_FIRSTHDR(%struct.msghdr* %9)
  %11 = inttoptr i64 %10 to %struct.cmsghdr*
  store %struct.cmsghdr* %11, %struct.cmsghdr** %5, align 8
  br label %12

12:                                               ; preds = %56, %1
  %13 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %14 = icmp ne %struct.cmsghdr* %13, null
  br i1 %14, label %15, label %61

15:                                               ; preds = %12
  %16 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %17 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IPPROTO_IPV6, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %56

22:                                               ; preds = %15
  %23 = load i64, i64* @CONTROLLEN, align 8
  %24 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %25 = call i64 @CMSG_DATA(%struct.cmsghdr* %24)
  %26 = load i8*, i8** %4, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = sub nsw i64 %25, %27
  %29 = sub nsw i64 %23, %28
  store i64 %29, i64* %3, align 8
  %30 = load i64, i64* %3, align 8
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %56

33:                                               ; preds = %22
  %34 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %35 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %55 [
    i32 130, label %37
    i32 131, label %43
    i32 128, label %43
    i32 129, label %49
  ]

37:                                               ; preds = %33
  %38 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %40 = call i64 @CMSG_DATA(%struct.cmsghdr* %39)
  %41 = load i64, i64* %3, align 8
  %42 = call i32 @pr_ip6opt(i64 %40, i64 %41)
  br label %55

43:                                               ; preds = %33, %33
  %44 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %46 = call i64 @CMSG_DATA(%struct.cmsghdr* %45)
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @pr_ip6opt(i64 %46, i64 %47)
  br label %55

49:                                               ; preds = %33
  %50 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %51 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %52 = call i64 @CMSG_DATA(%struct.cmsghdr* %51)
  %53 = load i64, i64* %3, align 8
  %54 = call i32 @pr_rthdr(i64 %52, i64 %53)
  br label %55

55:                                               ; preds = %33, %49, %43, %37
  br label %56

56:                                               ; preds = %55, %32, %21
  %57 = load %struct.msghdr*, %struct.msghdr** %2, align 8
  %58 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %59 = call i64 @CMSG_NXTHDR(%struct.msghdr* %57, %struct.cmsghdr* %58)
  %60 = inttoptr i64 %59 to %struct.cmsghdr*
  store %struct.cmsghdr* %60, %struct.cmsghdr** %5, align 8
  br label %12

61:                                               ; preds = %12
  ret void
}

declare dso_local i64 @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @pr_ip6opt(i64, i64) #1

declare dso_local i32 @pr_rthdr(i64, i64) #1

declare dso_local i64 @CMSG_NXTHDR(%struct.msghdr*, %struct.cmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
