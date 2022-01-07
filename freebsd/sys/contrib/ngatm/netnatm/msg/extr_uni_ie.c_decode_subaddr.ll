; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_decode_subaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_decode_subaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_subaddr = type { i32, i32, i32 }
%struct.uni_msg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_subaddr*, i32, %struct.uni_msg*, i32)* @decode_subaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_subaddr(%struct.uni_subaddr* %0, i32 %1, %struct.uni_msg* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.uni_subaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uni_msg*, align 8
  %9 = alloca i32, align 4
  store %struct.uni_subaddr* %0, %struct.uni_subaddr** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.uni_msg* %2, %struct.uni_msg** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = ashr i32 %10, 4
  %12 = and i32 %11, 7
  %13 = load %struct.uni_subaddr*, %struct.uni_subaddr** %6, align 8
  %14 = getelementptr inbounds %struct.uni_subaddr, %struct.uni_subaddr* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  switch i32 %12, label %28 [
    i32 128, label %15
    i32 129, label %23
  ]

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = icmp sgt i32 %19, 20
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %15
  store i32 -1, i32* %5, align 4
  br label %56

22:                                               ; preds = %18
  br label %29

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 20
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 -1, i32* %5, align 4
  br label %56

27:                                               ; preds = %23
  br label %29

28:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %56

29:                                               ; preds = %27, %22
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, 128
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i32 -1, i32* %5, align 4
  br label %56

34:                                               ; preds = %29
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, 7
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 -1, i32* %5, align 4
  br label %56

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.uni_subaddr*, %struct.uni_subaddr** %6, align 8
  %42 = getelementptr inbounds %struct.uni_subaddr, %struct.uni_subaddr* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.uni_subaddr*, %struct.uni_subaddr** %6, align 8
  %44 = getelementptr inbounds %struct.uni_subaddr, %struct.uni_subaddr* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.uni_msg*, %struct.uni_msg** %8, align 8
  %47 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @memcpy(i32 %45, i32 %48, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.uni_msg*, %struct.uni_msg** %8, align 8
  %53 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, %51
  store i32 %55, i32* %53, align 4
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %39, %38, %33, %28, %26, %21
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
