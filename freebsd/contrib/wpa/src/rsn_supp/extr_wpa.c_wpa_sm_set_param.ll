; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_sm_set_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_sm_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_sm_set_param(%struct.wpa_sm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_sm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wpa_sm* %0, %struct.wpa_sm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %10 = icmp eq %struct.wpa_sm* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %75

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %72 [
    i32 138, label %14
    i32 137, label %23
    i32 136, label %35
    i32 129, label %44
    i32 130, label %48
    i32 135, label %52
    i32 134, label %56
    i32 128, label %60
    i32 133, label %64
    i32 131, label %68
  ]

14:                                               ; preds = %12
  %15 = load i32, i32* %7, align 4
  %16 = icmp ugt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %20 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %22

21:                                               ; preds = %14
  store i32 -1, i32* %8, align 4
  br label %22

22:                                               ; preds = %21, %17
  br label %73

23:                                               ; preds = %12
  %24 = load i32, i32* %7, align 4
  %25 = icmp ugt i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = icmp ule i32 %27, 100
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %32 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %34

33:                                               ; preds = %26, %23
  store i32 -1, i32* %8, align 4
  br label %34

34:                                               ; preds = %33, %29
  br label %73

35:                                               ; preds = %12
  %36 = load i32, i32* %7, align 4
  %37 = icmp ugt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %41 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  br label %43

42:                                               ; preds = %35
  store i32 -1, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %38
  br label %73

44:                                               ; preds = %12
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %47 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  br label %73

48:                                               ; preds = %12
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %51 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  br label %73

52:                                               ; preds = %12
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %55 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  br label %73

56:                                               ; preds = %12
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %59 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 4
  br label %73

60:                                               ; preds = %12
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %63 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %62, i32 0, i32 8
  store i32 %61, i32* %63, align 4
  br label %73

64:                                               ; preds = %12
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %67 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %66, i32 0, i32 9
  store i32 %65, i32* %67, align 4
  br label %73

68:                                               ; preds = %12
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %71 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %70, i32 0, i32 10
  store i32 %69, i32* %71, align 4
  br label %73

72:                                               ; preds = %12
  br label %73

73:                                               ; preds = %72, %68, %64, %60, %56, %52, %48, %44, %43, %34, %22
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %11
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
