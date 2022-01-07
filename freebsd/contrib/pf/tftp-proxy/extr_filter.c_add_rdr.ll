; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/tftp-proxy/extr_filter.c_add_rdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/tftp-proxy/extr_filter.c_add_rdr.c"
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
define dso_local i32 @add_rdr(i32 %0, %struct.sockaddr* %1, %struct.sockaddr* %2, i64 %3, %struct.sockaddr* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.sockaddr*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %10, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %11, align 8
  store i64 %3, i64* %12, align 8
  store %struct.sockaddr* %4, %struct.sockaddr** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %16 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %17 = icmp ne %struct.sockaddr* %16, null
  br i1 %17, label %18, label %41

18:                                               ; preds = %7
  %19 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %20 = icmp ne %struct.sockaddr* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %18
  %22 = load i64, i64* %12, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %26 = icmp ne %struct.sockaddr* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load i64, i64* %14, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %35 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %38 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33, %30, %27, %24, %21, %18, %7
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* @errno, align 4
  store i32 -1, i32* %8, align 4
  br label %89

43:                                               ; preds = %33
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @PF_RULESET_RDR, align 4
  %46 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %47 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @prepare_rule(i32 %44, i32 %45, %struct.sockaddr* %46, %struct.sockaddr* %47, i64 %48, i32 %49)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store i32 -1, i32* %8, align 4
  br label %89

53:                                               ; preds = %43
  %54 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %55 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @AF_INET, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %61 = call %struct.TYPE_18__* @satosin(%struct.sockaddr* %60)
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  %64 = call i32 @memcpy(i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @pfp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 1), i32* %63, i32 4)
  %65 = call i32 @memset(i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @pfp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0), i32 255, i32 4)
  br label %73

66:                                               ; preds = %53
  %67 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %68 = call %struct.TYPE_17__* @satosin6(%struct.sockaddr* %67)
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = call i32 @memcpy(i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @pfp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0), i32* %70, i32 16)
  %72 = call i32 @memset(i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @pfp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0), i32 255, i32 16)
  br label %73

73:                                               ; preds = %66, %59
  %74 = load i32, i32* @dev, align 4
  %75 = load i32, i32* @DIOCADDADDR, align 4
  %76 = call i32 @ioctl(i32 %74, i32 %75, %struct.TYPE_19__* @pfp)
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 -1, i32* %8, align 4
  br label %89

79:                                               ; preds = %73
  %80 = load i64, i64* %14, align 8
  %81 = load i64*, i64** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @pfr, i32 0, i32 0, i32 0, i32 0), align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  store i64 %80, i64* %82, align 8
  %83 = load i32, i32* @dev, align 4
  %84 = load i32, i32* @DIOCADDRULE, align 4
  %85 = call i32 @ioctl(i32 %83, i32 %84, %struct.TYPE_19__* @pfr)
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  store i32 -1, i32* %8, align 4
  br label %89

88:                                               ; preds = %79
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %88, %87, %78, %52, %41
  %90 = load i32, i32* %8, align 4
  ret i32 %90
}

declare dso_local i32 @prepare_rule(i32, i32, %struct.sockaddr*, %struct.sockaddr*, i64, i32) #1

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
