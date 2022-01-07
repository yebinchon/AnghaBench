; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pf_print_state.c_unmask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pf_print_state.c_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_addr = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unmask(%struct.pf_addr* %0, i32 %1) #0 {
  %3 = alloca %struct.pf_addr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pf_addr* %0, %struct.pf_addr** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 31, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %23, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load %struct.pf_addr*, %struct.pf_addr** %3, align 8
  %14 = getelementptr inbounds %struct.pf_addr, %struct.pf_addr* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, -1
  br label %21

21:                                               ; preds = %12, %9
  %22 = phi i1 [ false, %9 ], [ %20, %12 ]
  br i1 %22, label %23, label %28

23:                                               ; preds = %21
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 32
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %9

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %53

31:                                               ; preds = %28
  %32 = load %struct.pf_addr*, %struct.pf_addr** %3, align 8
  %33 = getelementptr inbounds %struct.pf_addr, %struct.pf_addr* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ntohl(i32 %38)
  store i32 %39, i32* %8, align 4
  store i32 31, i32* %5, align 4
  br label %40

40:                                               ; preds = %49, %31
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %5, align 4
  %43 = shl i32 1, %42
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %5, align 4
  br label %40

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52, %28
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
