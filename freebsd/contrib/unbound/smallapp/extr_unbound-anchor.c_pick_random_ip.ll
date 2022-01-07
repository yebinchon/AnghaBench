; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_pick_random_ip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_pick_random_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_list = type { %struct.ip_list*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_list* (%struct.ip_list*)* @pick_random_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_list* @pick_random_ip(%struct.ip_list* %0) #0 {
  %2 = alloca %struct.ip_list*, align 8
  %3 = alloca %struct.ip_list*, align 8
  %4 = alloca %struct.ip_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ip_list* %0, %struct.ip_list** %3, align 8
  %7 = load %struct.ip_list*, %struct.ip_list** %3, align 8
  store %struct.ip_list* %7, %struct.ip_list** %4, align 8
  %8 = load %struct.ip_list*, %struct.ip_list** %3, align 8
  %9 = call i32 @count_unused(%struct.ip_list* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.ip_list* null, %struct.ip_list** %2, align 8
  br label %58

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @arc4random_uniform(i32 %14)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %33, %13
  %18 = load i32, i32* %6, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct.ip_list*, %struct.ip_list** %4, align 8
  %22 = icmp ne %struct.ip_list* %21, null
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i1 [ false, %17 ], [ %22, %20 ]
  br i1 %24, label %25, label %37

25:                                               ; preds = %23
  %26 = load %struct.ip_list*, %struct.ip_list** %4, align 8
  %27 = getelementptr inbounds %struct.ip_list, %struct.ip_list* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.ip_list*, %struct.ip_list** %4, align 8
  %35 = getelementptr inbounds %struct.ip_list, %struct.ip_list* %34, i32 0, i32 0
  %36 = load %struct.ip_list*, %struct.ip_list** %35, align 8
  store %struct.ip_list* %36, %struct.ip_list** %4, align 8
  br label %17

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %48, %37
  %39 = load %struct.ip_list*, %struct.ip_list** %4, align 8
  %40 = icmp ne %struct.ip_list* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.ip_list*, %struct.ip_list** %4, align 8
  %43 = getelementptr inbounds %struct.ip_list, %struct.ip_list* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %41, %38
  %47 = phi i1 [ false, %38 ], [ %45, %41 ]
  br i1 %47, label %48, label %52

48:                                               ; preds = %46
  %49 = load %struct.ip_list*, %struct.ip_list** %4, align 8
  %50 = getelementptr inbounds %struct.ip_list, %struct.ip_list* %49, i32 0, i32 0
  %51 = load %struct.ip_list*, %struct.ip_list** %50, align 8
  store %struct.ip_list* %51, %struct.ip_list** %4, align 8
  br label %38

52:                                               ; preds = %46
  %53 = load %struct.ip_list*, %struct.ip_list** %4, align 8
  %54 = icmp ne %struct.ip_list* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  store %struct.ip_list* null, %struct.ip_list** %2, align 8
  br label %58

56:                                               ; preds = %52
  %57 = load %struct.ip_list*, %struct.ip_list** %4, align 8
  store %struct.ip_list* %57, %struct.ip_list** %2, align 8
  br label %58

58:                                               ; preds = %56, %55, %12
  %59 = load %struct.ip_list*, %struct.ip_list** %2, align 8
  ret %struct.ip_list* %59
}

declare dso_local i32 @count_unused(%struct.ip_list*) #1

declare dso_local i64 @arc4random_uniform(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
