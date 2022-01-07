; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/ftp-proxy/extr_filter.c_add_nat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/ftp-proxy/extr_filter.c_add_nat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_16__, %struct.TYPE_27__ }
%struct.TYPE_16__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i8** }
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
@PF_RULESET_NAT = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@pfp = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@dev = common dso_local global i32 0, align 4
@DIOCADDADDR = common dso_local global i32 0, align 4
@pfr = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@DIOCADDRULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_nat(i32 %0, %struct.sockaddr* %1, %struct.sockaddr* %2, i8* %3, %struct.sockaddr* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sockaddr*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32 %0, i32* %9, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %10, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %11, align 8
  store i8* %3, i8** %12, align 8
  store %struct.sockaddr* %4, %struct.sockaddr** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %16 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %17 = icmp ne %struct.sockaddr* %16, null
  br i1 %17, label %18, label %38

18:                                               ; preds = %7
  %19 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %20 = icmp ne %struct.sockaddr* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load i8*, i8** %12, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %26 = icmp ne %struct.sockaddr* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load i8*, i8** %14, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %32 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %35 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30, %27, %24, %21, %18, %7
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* @errno, align 4
  store i32 -1, i32* %8, align 4
  br label %88

40:                                               ; preds = %30
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @PF_RULESET_NAT, align 4
  %43 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %44 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = call i32 @prepare_rule(i32 %41, i32 %42, %struct.sockaddr* %43, %struct.sockaddr* %44, i8* %45)
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 -1, i32* %8, align 4
  br label %88

49:                                               ; preds = %40
  %50 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %51 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @AF_INET, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %57 = call %struct.TYPE_18__* @satosin(%struct.sockaddr* %56)
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = call i32 @memcpy(i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @pfp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 1), i32* %59, i32 4)
  %61 = call i32 @memset(i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @pfp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0), i32 255, i32 4)
  br label %69

62:                                               ; preds = %49
  %63 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %64 = call %struct.TYPE_17__* @satosin6(%struct.sockaddr* %63)
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 0
  %67 = call i32 @memcpy(i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @pfp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0), i32* %66, i32 16)
  %68 = call i32 @memset(i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @pfp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0), i32 255, i32 16)
  br label %69

69:                                               ; preds = %62, %55
  %70 = load i32, i32* @dev, align 4
  %71 = load i32, i32* @DIOCADDADDR, align 4
  %72 = call i32 @ioctl(i32 %70, i32 %71, %struct.TYPE_19__* @pfp)
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 -1, i32* %8, align 4
  br label %88

75:                                               ; preds = %69
  %76 = load i8*, i8** %14, align 8
  %77 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @pfr, i32 0, i32 0, i32 0, i32 0), align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 0
  store i8* %76, i8** %78, align 8
  %79 = load i8*, i8** %15, align 8
  %80 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @pfr, i32 0, i32 0, i32 0, i32 0), align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 1
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* @dev, align 4
  %83 = load i32, i32* @DIOCADDRULE, align 4
  %84 = call i32 @ioctl(i32 %82, i32 %83, %struct.TYPE_19__* @pfr)
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %87

86:                                               ; preds = %75
  store i32 -1, i32* %8, align 4
  br label %88

87:                                               ; preds = %75
  store i32 0, i32* %8, align 4
  br label %88

88:                                               ; preds = %87, %86, %74, %48, %38
  %89 = load i32, i32* %8, align 4
  ret i32 %89
}

declare dso_local i32 @prepare_rule(i32, i32, %struct.sockaddr*, %struct.sockaddr*, i8*) #1

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
