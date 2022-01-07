; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_loopfilter.c_huffpuff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_loopfilter.c_huffpuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sys_huffpuff = common dso_local global i32* null, align 8
@sys_huffptr = common dso_local global i32 0, align 4
@sys_hufflen = common dso_local global i32 0, align 4
@sys_mindly = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @huffpuff() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @sys_huffpuff, align 8
  %3 = icmp eq i32* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %36

5:                                                ; preds = %0
  %6 = load i32, i32* @sys_huffptr, align 4
  %7 = add nsw i32 %6, 1
  %8 = load i32, i32* @sys_hufflen, align 4
  %9 = srem i32 %7, %8
  store i32 %9, i32* @sys_huffptr, align 4
  %10 = load i32*, i32** @sys_huffpuff, align 8
  %11 = load i32, i32* @sys_huffptr, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  store i32 1000000000, i32* %13, align 4
  store i32 1000000000, i32* @sys_mindly, align 4
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %33, %5
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @sys_hufflen, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %14
  %19 = load i32*, i32** @sys_huffpuff, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @sys_mindly, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load i32*, i32** @sys_huffpuff, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* @sys_mindly, align 4
  br label %32

32:                                               ; preds = %26, %18
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %14

36:                                               ; preds = %4, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
