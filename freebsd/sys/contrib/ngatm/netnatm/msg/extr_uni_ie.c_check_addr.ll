; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_check_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_check_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_addr = type { i32, i32, i32*, i32 }

@UNI_ADDR_INTERNATIONAL = common dso_local global i32 0, align 4
@UNI_ADDR_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_addr*)* @check_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_addr(%struct.uni_addr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uni_addr*, align 8
  %4 = alloca i64, align 8
  store %struct.uni_addr* %0, %struct.uni_addr** %3, align 8
  %5 = load %struct.uni_addr*, %struct.uni_addr** %3, align 8
  %6 = getelementptr inbounds %struct.uni_addr, %struct.uni_addr* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %8 [
    i32 128, label %9
    i32 129, label %58
  ]

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %73

9:                                                ; preds = %1
  %10 = load %struct.uni_addr*, %struct.uni_addr** %3, align 8
  %11 = getelementptr inbounds %struct.uni_addr, %struct.uni_addr* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @UNI_ADDR_INTERNATIONAL, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 -1, i32* %2, align 4
  br label %73

16:                                               ; preds = %9
  %17 = load %struct.uni_addr*, %struct.uni_addr** %3, align 8
  %18 = getelementptr inbounds %struct.uni_addr, %struct.uni_addr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 15
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.uni_addr*, %struct.uni_addr** %3, align 8
  %23 = getelementptr inbounds %struct.uni_addr, %struct.uni_addr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %16
  store i32 -1, i32* %2, align 4
  br label %73

27:                                               ; preds = %21
  store i64 0, i64* %4, align 8
  br label %28

28:                                               ; preds = %54, %27
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.uni_addr*, %struct.uni_addr** %3, align 8
  %31 = getelementptr inbounds %struct.uni_addr, %struct.uni_addr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ult i64 %29, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %28
  %36 = load %struct.uni_addr*, %struct.uni_addr** %3, align 8
  %37 = getelementptr inbounds %struct.uni_addr, %struct.uni_addr* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %35
  %44 = load %struct.uni_addr*, %struct.uni_addr** %3, align 8
  %45 = getelementptr inbounds %struct.uni_addr, %struct.uni_addr* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %4, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 128
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43, %35
  store i32 -1, i32* %2, align 4
  br label %73

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %4, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %4, align 8
  br label %28

57:                                               ; preds = %28
  br label %72

58:                                               ; preds = %1
  %59 = load %struct.uni_addr*, %struct.uni_addr** %3, align 8
  %60 = getelementptr inbounds %struct.uni_addr, %struct.uni_addr* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @UNI_ADDR_UNKNOWN, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 -1, i32* %2, align 4
  br label %73

65:                                               ; preds = %58
  %66 = load %struct.uni_addr*, %struct.uni_addr** %3, align 8
  %67 = getelementptr inbounds %struct.uni_addr, %struct.uni_addr* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 20
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 -1, i32* %2, align 4
  br label %73

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71, %57
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %70, %64, %52, %26, %15, %8
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
