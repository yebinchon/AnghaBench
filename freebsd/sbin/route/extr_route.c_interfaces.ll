; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/route/extr_route.c_interfaces.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/route/extr_route.c_interfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_msghdr = type { i32 }

@CTL_NET = common dso_local global i32 0, align 4
@PF_ROUTE = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@NET_RT_IFLIST = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"route-sysctl-estimate\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Routing table grew, retrying\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"actual retrieval of interface table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @interfaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interfaces() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [6 x i32], align 16
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.rt_msghdr*, align 8
  store i8 0, i8* %6, align 1
  br label %8

8:                                                ; preds = %50, %0
  %9 = load i32, i32* @CTL_NET, align 4
  %10 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  store i32 %9, i32* %10, align 16
  %11 = load i32, i32* @PF_ROUTE, align 4
  %12 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 1
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 2
  store i32 0, i32* %13, align 8
  %14 = load i32, i32* @AF_UNSPEC, align 4
  %15 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 3
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @NET_RT_IFLIST, align 4
  %17 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 4
  store i32 %16, i32* %17, align 16
  %18 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 5
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %20 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %21 = call i32 @nitems(i32* %20)
  %22 = call i64 @sysctl(i32* %19, i32 %21, i8* null, i64* %1, i32* null, i32 0)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %8
  %25 = load i32, i32* @EX_OSERR, align 4
  %26 = call i32 @err(i32 %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %8
  %28 = load i64, i64* %1, align 8
  %29 = call i8* @malloc(i64 %28)
  store i8* %29, i8** %3, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EX_OSERR, align 4
  %33 = call i32 @errx(i32 %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %27
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %36 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %37 = call i32 @nitems(i32* %36)
  %38 = load i8*, i8** %3, align 8
  %39 = call i64 @sysctl(i32* %35, i32 %37, i8* %38, i64* %1, i32* null, i32 0)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %34
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @ENOMEM, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i8, i8* %6, align 1
  %47 = add i8 %46, 1
  store i8 %47, i8* %6, align 1
  %48 = sext i8 %46 to i32
  %49 = icmp slt i32 %48, 10
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %52 = call i32 @sleep(i32 1)
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 @free(i8* %53)
  br label %8

55:                                               ; preds = %45, %41
  %56 = load i32, i32* @EX_OSERR, align 4
  %57 = call i32 @err(i32 %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %34
  %59 = load i8*, i8** %3, align 8
  %60 = load i64, i64* %1, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %61, i8** %4, align 8
  %62 = load i8*, i8** %3, align 8
  store i8* %62, i8** %5, align 8
  br label %63

63:                                               ; preds = %75, %58
  %64 = load i8*, i8** %5, align 8
  %65 = load i8*, i8** %4, align 8
  %66 = icmp ult i8* %64, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %63
  %68 = load i8*, i8** %5, align 8
  %69 = bitcast i8* %68 to %struct.rt_msghdr*
  store %struct.rt_msghdr* %69, %struct.rt_msghdr** %7, align 8
  %70 = load %struct.rt_msghdr*, %struct.rt_msghdr** %7, align 8
  %71 = load %struct.rt_msghdr*, %struct.rt_msghdr** %7, align 8
  %72 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @print_rtmsg(%struct.rt_msghdr* %70, i32 %73)
  br label %75

75:                                               ; preds = %67
  %76 = load %struct.rt_msghdr*, %struct.rt_msghdr** %7, align 8
  %77 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %5, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %5, align 8
  br label %63

82:                                               ; preds = %63
  %83 = load i8*, i8** %3, align 8
  %84 = call i32 @free(i8* %83)
  ret void
}

declare dso_local i64 @sysctl(i32*, i32, i8*, i64*, i32*, i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @print_rtmsg(%struct.rt_msghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
