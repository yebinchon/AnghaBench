; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_have_probe_targets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_have_probe_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_master = type { i64, i32, %struct.auth_master* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_master*)* @have_probe_targets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @have_probe_targets(%struct.auth_master* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.auth_master*, align 8
  %4 = alloca %struct.auth_master*, align 8
  store %struct.auth_master* %0, %struct.auth_master** %3, align 8
  %5 = load %struct.auth_master*, %struct.auth_master** %3, align 8
  store %struct.auth_master* %5, %struct.auth_master** %4, align 8
  br label %6

6:                                                ; preds = %21, %1
  %7 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  %8 = icmp ne %struct.auth_master* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  %11 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  %16 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %26

20:                                               ; preds = %14, %9
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  %23 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %22, i32 0, i32 2
  %24 = load %struct.auth_master*, %struct.auth_master** %23, align 8
  store %struct.auth_master* %24, %struct.auth_master** %4, align 8
  br label %6

25:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %19
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
