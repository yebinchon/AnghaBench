; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/ftp-proxy/extr_filter.c_add_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/ftp-proxy/extr_filter.c_add_filter.c"
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
define dso_local i32 @add_filter(i32 %0, i32 %1, %struct.sockaddr* %2, %struct.sockaddr* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %9, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %13 = icmp ne %struct.sockaddr* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %16 = icmp ne %struct.sockaddr* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17, %14, %5
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %39

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @PF_RULESET_FILTER, align 4
  %25 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %26 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @prepare_rule(i32 %23, i32 %24, %struct.sockaddr* %25, %struct.sockaddr* %26, i32 %27)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 -1, i32* %6, align 4
  br label %39

31:                                               ; preds = %22
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pfr, i32 0, i32 0, i32 0), align 4
  %33 = load i32, i32* @dev, align 4
  %34 = load i32, i32* @DIOCADDRULE, align 4
  %35 = call i32 @ioctl(i32 %33, i32 %34, %struct.TYPE_5__* @pfr)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 -1, i32* %6, align 4
  br label %39

38:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %38, %37, %30, %20
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @prepare_rule(i32, i32, %struct.sockaddr*, %struct.sockaddr*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
