; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_dns.c_dns_gethostbyname_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_dns.c_dns_gethostbyname_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.event_base = type { i32 }

@dns_err = common dso_local global i8 0, align 1
@dns_ok = common dso_local global i8 0, align 1
@DNS_ERR_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"[Timed out] \00", align 1
@DNS_ERR_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"[Error code %d] \00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"type: %d, count: %d, ttl: %d: \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8, i32, i32, i8*, i8*)* @dns_gethostbyname_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dns_gethostbyname_cb(i32 %0, i8 signext %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.in_addr*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8 %1, i8* %8, align 1
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  store i8 0, i8* @dns_err, align 1
  store i8 0, i8* @dns_ok, align 1
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @DNS_ERR_TIMEOUT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %6
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %7, align 4
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* @dns_err, align 1
  br label %77

22:                                               ; preds = %6
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @DNS_ERR_NONE, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %77

29:                                               ; preds = %22
  %30 = load i8, i8* %8, align 1
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @TT_BLATHER(i8* %34)
  %36 = load i8, i8* %8, align 1
  %37 = sext i8 %36 to i32
  switch i32 %37, label %74 [
    i32 129, label %38
    i32 130, label %39
    i32 128, label %65
  ]

38:                                               ; preds = %29
  br label %75

39:                                               ; preds = %29
  %40 = load i8*, i8** %11, align 8
  %41 = bitcast i8* %40 to %struct.in_addr*
  store %struct.in_addr* %41, %struct.in_addr** %13, align 8
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %77

45:                                               ; preds = %39
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %61, %45
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load %struct.in_addr*, %struct.in_addr** %13, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %51, i64 %53
  %55 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @inet_ntoa(i32 %56)
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 @TT_BLATHER(i8* %59)
  br label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %14, align 4
  br label %46

64:                                               ; preds = %46
  br label %75

65:                                               ; preds = %29
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 1
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %77

69:                                               ; preds = %65
  %70 = load i8*, i8** %11, align 8
  %71 = bitcast i8* %70 to i8**
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @TT_BLATHER(i8* %72)
  br label %75

74:                                               ; preds = %29
  br label %77

75:                                               ; preds = %69, %64, %38
  %76 = load i8, i8* %8, align 1
  store i8 %76, i8* @dns_ok, align 1
  br label %77

77:                                               ; preds = %75, %74, %68, %44, %26, %18
  %78 = load i8*, i8** %12, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 @event_loopexit(i32* null)
  br label %86

82:                                               ; preds = %77
  %83 = load i8*, i8** %12, align 8
  %84 = bitcast i8* %83 to %struct.event_base*
  %85 = call i32 @event_base_loopexit(%struct.event_base* %84, i32* null)
  br label %86

86:                                               ; preds = %82, %80
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @TT_BLATHER(i8*) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @event_loopexit(i32*) #1

declare dso_local i32 @event_base_loopexit(%struct.event_base*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
