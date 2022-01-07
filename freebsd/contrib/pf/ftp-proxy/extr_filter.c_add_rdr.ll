; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/ftp-proxy/extr_filter.c_add_rdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/ftp-proxy/extr_filter.c_add_rdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_16__, %struct.TYPE_27__ }
%struct.TYPE_16__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i64* }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_21__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.sockaddr = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@PF_RULESET_RDR = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@pfp = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@dev = common dso_local global i32 0, align 4
@DIOCADDADDR = common dso_local global i32 0, align 4
@pfr = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@DIOCADDRULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_rdr(i32 %0, %struct.sockaddr* %1, %struct.sockaddr* %2, i64 %3, %struct.sockaddr* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %9, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.sockaddr* %4, %struct.sockaddr** %12, align 8
  store i64 %5, i64* %13, align 8
  %14 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %15 = icmp ne %struct.sockaddr* %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %6
  %17 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %18 = icmp ne %struct.sockaddr* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load i64, i64* %11, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %24 = icmp ne %struct.sockaddr* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load i64, i64* %13, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %30 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %33 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28, %25, %22, %19, %16, %6
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* @errno, align 4
  store i32 -1, i32* %7, align 4
  br label %83

38:                                               ; preds = %28
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @PF_RULESET_RDR, align 4
  %41 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %42 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @prepare_rule(i32 %39, i32 %40, %struct.sockaddr* %41, %struct.sockaddr* %42, i64 %43)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 -1, i32* %7, align 4
  br label %83

47:                                               ; preds = %38
  %48 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %49 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AF_INET, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %55 = call %struct.TYPE_18__* @satosin(%struct.sockaddr* %54)
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = call i32 @memcpy(i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @pfp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 1), i32* %57, i32 4)
  %59 = call i32 @memset(i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @pfp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0), i32 255, i32 4)
  br label %67

60:                                               ; preds = %47
  %61 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %62 = call %struct.TYPE_17__* @satosin6(%struct.sockaddr* %61)
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  %65 = call i32 @memcpy(i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @pfp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0), i32* %64, i32 16)
  %66 = call i32 @memset(i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @pfp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0), i32 255, i32 16)
  br label %67

67:                                               ; preds = %60, %53
  %68 = load i32, i32* @dev, align 4
  %69 = load i32, i32* @DIOCADDADDR, align 4
  %70 = call i32 @ioctl(i32 %68, i32 %69, %struct.TYPE_19__* @pfp)
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 -1, i32* %7, align 4
  br label %83

73:                                               ; preds = %67
  %74 = load i64, i64* %13, align 8
  %75 = load i64*, i64** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @pfr, i32 0, i32 0, i32 0, i32 0), align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  store i64 %74, i64* %76, align 8
  %77 = load i32, i32* @dev, align 4
  %78 = load i32, i32* @DIOCADDRULE, align 4
  %79 = call i32 @ioctl(i32 %77, i32 %78, %struct.TYPE_19__* @pfr)
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  store i32 -1, i32* %7, align 4
  br label %83

82:                                               ; preds = %73
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %82, %81, %72, %46, %36
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i32 @prepare_rule(i32, i32, %struct.sockaddr*, %struct.sockaddr*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_18__* @satosin(%struct.sockaddr*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.TYPE_17__* @satosin6(%struct.sockaddr*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
