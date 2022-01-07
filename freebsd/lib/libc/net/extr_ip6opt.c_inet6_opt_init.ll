; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_ip6opt.c_inet6_opt_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_ip6opt.c_inet6_opt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_ext = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet6_opt_init(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip6_ext*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ip6_ext*
  store %struct.ip6_ext* %8, %struct.ip6_ext** %6, align 8
  %9 = load %struct.ip6_ext*, %struct.ip6_ext** %6, align 8
  %10 = icmp ne %struct.ip6_ext* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = srem i32 %15, 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %11
  store i32 -1, i32* %3, align 4
  br label %26

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = ashr i32 %20, 3
  %22 = sub nsw i32 %21, 1
  %23 = load %struct.ip6_ext*, %struct.ip6_ext** %6, align 8
  %24 = getelementptr inbounds %struct.ip6_ext, %struct.ip6_ext* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %19, %2
  store i32 2, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %18
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
