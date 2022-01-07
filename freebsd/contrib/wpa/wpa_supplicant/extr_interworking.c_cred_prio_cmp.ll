; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_cred_prio_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_cred_prio_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_cred = type { i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_cred*, %struct.wpa_cred*)* @cred_prio_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cred_prio_cmp(%struct.wpa_cred* %0, %struct.wpa_cred* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_cred*, align 8
  %5 = alloca %struct.wpa_cred*, align 8
  store %struct.wpa_cred* %0, %struct.wpa_cred** %4, align 8
  store %struct.wpa_cred* %1, %struct.wpa_cred** %5, align 8
  %6 = load %struct.wpa_cred*, %struct.wpa_cred** %4, align 8
  %7 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.wpa_cred*, %struct.wpa_cred** %5, align 8
  %10 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %62

14:                                               ; preds = %2
  %15 = load %struct.wpa_cred*, %struct.wpa_cred** %4, align 8
  %16 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.wpa_cred*, %struct.wpa_cred** %5, align 8
  %19 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %62

23:                                               ; preds = %14
  %24 = load %struct.wpa_cred*, %struct.wpa_cred** %4, align 8
  %25 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %42, label %28

28:                                               ; preds = %23
  %29 = load %struct.wpa_cred*, %struct.wpa_cred** %5, align 8
  %30 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %28
  %34 = load %struct.wpa_cred*, %struct.wpa_cred** %4, align 8
  %35 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.wpa_cred*, %struct.wpa_cred** %5, align 8
  %38 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @os_strcmp(i32* %36, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33, %28, %23
  store i32 0, i32* %3, align 4
  br label %62

43:                                               ; preds = %33
  %44 = load %struct.wpa_cred*, %struct.wpa_cred** %4, align 8
  %45 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.wpa_cred*, %struct.wpa_cred** %5, align 8
  %48 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %62

52:                                               ; preds = %43
  %53 = load %struct.wpa_cred*, %struct.wpa_cred** %4, align 8
  %54 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.wpa_cred*, %struct.wpa_cred** %5, align 8
  %57 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 -1, i32* %3, align 4
  br label %62

61:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %60, %51, %42, %22, %13
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @os_strcmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
