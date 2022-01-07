; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/tftp-proxy/extr_filter.c_add_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/tftp-proxy/extr_filter.c_add_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@PF_RULESET_FILTER = common dso_local global i32 0, align 4
@pfr = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@dev = common dso_local global i32 0, align 4
@DIOCADDRULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_filter(i32 %0, i32 %1, %struct.sockaddr* %2, %struct.sockaddr* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %10, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %14 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %15 = icmp ne %struct.sockaddr* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %6
  %17 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %18 = icmp ne %struct.sockaddr* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22, %19, %16, %6
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* @errno, align 4
  store i32 -1, i32* %7, align 4
  br label %45

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @PF_RULESET_FILTER, align 4
  %30 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %31 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @prepare_rule(i32 %28, i32 %29, %struct.sockaddr* %30, %struct.sockaddr* %31, i32 %32, i32 %33)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 -1, i32* %7, align 4
  br label %45

37:                                               ; preds = %27
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pfr, i32 0, i32 0, i32 0), align 4
  %39 = load i32, i32* @dev, align 4
  %40 = load i32, i32* @DIOCADDRULE, align 4
  %41 = call i32 @ioctl(i32 %39, i32 %40, %struct.TYPE_5__* @pfr)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 -1, i32* %7, align 4
  br label %45

44:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %44, %43, %36, %25
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @prepare_rule(i32, i32, %struct.sockaddr*, %struct.sockaddr*, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
