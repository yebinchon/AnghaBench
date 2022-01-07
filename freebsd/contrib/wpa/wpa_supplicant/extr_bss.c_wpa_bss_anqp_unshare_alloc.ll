; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bss.c_wpa_bss_anqp_unshare_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bss.c_wpa_bss_anqp_unshare_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_bss = type { %struct.wpa_bss_anqp* }
%struct.wpa_bss_anqp = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_bss_anqp_unshare_alloc(%struct.wpa_bss* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_bss*, align 8
  %4 = alloca %struct.wpa_bss_anqp*, align 8
  store %struct.wpa_bss* %0, %struct.wpa_bss** %3, align 8
  %5 = load %struct.wpa_bss*, %struct.wpa_bss** %3, align 8
  %6 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %5, i32 0, i32 0
  %7 = load %struct.wpa_bss_anqp*, %struct.wpa_bss_anqp** %6, align 8
  %8 = icmp ne %struct.wpa_bss_anqp* %7, null
  br i1 %8, label %9, label %36

9:                                                ; preds = %1
  %10 = load %struct.wpa_bss*, %struct.wpa_bss** %3, align 8
  %11 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %10, i32 0, i32 0
  %12 = load %struct.wpa_bss_anqp*, %struct.wpa_bss_anqp** %11, align 8
  %13 = getelementptr inbounds %struct.wpa_bss_anqp, %struct.wpa_bss_anqp* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %36

16:                                               ; preds = %9
  %17 = load %struct.wpa_bss*, %struct.wpa_bss** %3, align 8
  %18 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %17, i32 0, i32 0
  %19 = load %struct.wpa_bss_anqp*, %struct.wpa_bss_anqp** %18, align 8
  %20 = call %struct.wpa_bss_anqp* @wpa_bss_anqp_clone(%struct.wpa_bss_anqp* %19)
  store %struct.wpa_bss_anqp* %20, %struct.wpa_bss_anqp** %4, align 8
  %21 = load %struct.wpa_bss_anqp*, %struct.wpa_bss_anqp** %4, align 8
  %22 = icmp eq %struct.wpa_bss_anqp* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 -1, i32* %2, align 4
  br label %52

24:                                               ; preds = %16
  %25 = load %struct.wpa_bss_anqp*, %struct.wpa_bss_anqp** %4, align 8
  %26 = getelementptr inbounds %struct.wpa_bss_anqp, %struct.wpa_bss_anqp* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load %struct.wpa_bss*, %struct.wpa_bss** %3, align 8
  %28 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %27, i32 0, i32 0
  %29 = load %struct.wpa_bss_anqp*, %struct.wpa_bss_anqp** %28, align 8
  %30 = getelementptr inbounds %struct.wpa_bss_anqp, %struct.wpa_bss_anqp* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.wpa_bss_anqp*, %struct.wpa_bss_anqp** %4, align 8
  %34 = load %struct.wpa_bss*, %struct.wpa_bss** %3, align 8
  %35 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %34, i32 0, i32 0
  store %struct.wpa_bss_anqp* %33, %struct.wpa_bss_anqp** %35, align 8
  store i32 0, i32* %2, align 4
  br label %52

36:                                               ; preds = %9, %1
  %37 = load %struct.wpa_bss*, %struct.wpa_bss** %3, align 8
  %38 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %37, i32 0, i32 0
  %39 = load %struct.wpa_bss_anqp*, %struct.wpa_bss_anqp** %38, align 8
  %40 = icmp ne %struct.wpa_bss_anqp* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %52

42:                                               ; preds = %36
  %43 = call %struct.wpa_bss_anqp* (...) @wpa_bss_anqp_alloc()
  %44 = load %struct.wpa_bss*, %struct.wpa_bss** %3, align 8
  %45 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %44, i32 0, i32 0
  store %struct.wpa_bss_anqp* %43, %struct.wpa_bss_anqp** %45, align 8
  %46 = load %struct.wpa_bss*, %struct.wpa_bss** %3, align 8
  %47 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %46, i32 0, i32 0
  %48 = load %struct.wpa_bss_anqp*, %struct.wpa_bss_anqp** %47, align 8
  %49 = icmp ne %struct.wpa_bss_anqp* %48, null
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 0, i32 -1
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %42, %41, %24, %23
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.wpa_bss_anqp* @wpa_bss_anqp_clone(%struct.wpa_bss_anqp*) #1

declare dso_local %struct.wpa_bss_anqp* @wpa_bss_anqp_alloc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
