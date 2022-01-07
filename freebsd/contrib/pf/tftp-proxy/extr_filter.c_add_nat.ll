; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/tftp-proxy/extr_filter.c_add_nat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/tftp-proxy/extr_filter.c_add_nat.c"
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
define dso_local i32 @add_nat(i32 %0, %struct.sockaddr* %1, %struct.sockaddr* %2, i8* %3, %struct.sockaddr* %4, i8* %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.sockaddr*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %11, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %12, align 8
  store i8* %3, i8** %13, align 8
  store %struct.sockaddr* %4, %struct.sockaddr** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %18 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %19 = icmp ne %struct.sockaddr* %18, null
  br i1 %19, label %20, label %43

20:                                               ; preds = %8
  %21 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %22 = icmp ne %struct.sockaddr* %21, null
  br i1 %22, label %23, label %43

23:                                               ; preds = %20
  %24 = load i8*, i8** %13, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %28 = icmp ne %struct.sockaddr* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load i8*, i8** %15, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load i32, i32* %17, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %37 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %40 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35, %32, %29, %26, %23, %20, %8
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* @errno, align 4
  store i32 -1, i32* %9, align 4
  br label %94

45:                                               ; preds = %35
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @PF_RULESET_NAT, align 4
  %48 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %49 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = load i32, i32* %17, align 4
  %52 = call i32 @prepare_rule(i32 %46, i32 %47, %struct.sockaddr* %48, %struct.sockaddr* %49, i8* %50, i32 %51)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i32 -1, i32* %9, align 4
  br label %94

55:                                               ; preds = %45
  %56 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %57 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @AF_INET, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %63 = call %struct.TYPE_18__* @satosin(%struct.sockaddr* %62)
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = call i32 @memcpy(i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @pfp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 1), i32* %65, i32 4)
  %67 = call i32 @memset(i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @pfp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0), i32 255, i32 4)
  br label %75

68:                                               ; preds = %55
  %69 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %70 = call %struct.TYPE_17__* @satosin6(%struct.sockaddr* %69)
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 0
  %73 = call i32 @memcpy(i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @pfp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0), i32* %72, i32 16)
  %74 = call i32 @memset(i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @pfp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0), i32 255, i32 16)
  br label %75

75:                                               ; preds = %68, %61
  %76 = load i32, i32* @dev, align 4
  %77 = load i32, i32* @DIOCADDADDR, align 4
  %78 = call i32 @ioctl(i32 %76, i32 %77, %struct.TYPE_19__* @pfp)
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 -1, i32* %9, align 4
  br label %94

81:                                               ; preds = %75
  %82 = load i8*, i8** %15, align 8
  %83 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @pfr, i32 0, i32 0, i32 0, i32 0), align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  store i8* %82, i8** %84, align 8
  %85 = load i8*, i8** %16, align 8
  %86 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @pfr, i32 0, i32 0, i32 0, i32 0), align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 1
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* @dev, align 4
  %89 = load i32, i32* @DIOCADDRULE, align 4
  %90 = call i32 @ioctl(i32 %88, i32 %89, %struct.TYPE_19__* @pfr)
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  store i32 -1, i32* %9, align 4
  br label %94

93:                                               ; preds = %81
  store i32 0, i32* %9, align 4
  br label %94

94:                                               ; preds = %93, %92, %80, %54, %43
  %95 = load i32, i32* %9, align 4
  ret i32 %95
}

declare dso_local i32 @prepare_rule(i32, i32, %struct.sockaddr*, %struct.sockaddr*, i8*, i32) #1

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
