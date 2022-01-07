; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan.c_vlan_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan.c_vlan_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlan_description = type { i64, i64*, i32 }

@MAX_NUM_TAGGED_VLAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlan_compare(%struct.vlan_description* %0, %struct.vlan_description* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vlan_description*, align 8
  %5 = alloca %struct.vlan_description*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vlan_description* %0, %struct.vlan_description** %4, align 8
  store %struct.vlan_description* %1, %struct.vlan_description** %5, align 8
  %9 = load %struct.vlan_description*, %struct.vlan_description** %4, align 8
  %10 = icmp ne %struct.vlan_description* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.vlan_description*, %struct.vlan_description** %4, align 8
  %13 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %11, %2
  %18 = phi i1 [ true, %2 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load %struct.vlan_description*, %struct.vlan_description** %5, align 8
  %21 = icmp ne %struct.vlan_description* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.vlan_description*, %struct.vlan_description** %5, align 8
  %24 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %22, %17
  %29 = phi i1 [ true, %17 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %80

37:                                               ; preds = %33, %28
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %37
  store i32 1, i32* %3, align 4
  br label %80

44:                                               ; preds = %40
  %45 = load %struct.vlan_description*, %struct.vlan_description** %4, align 8
  %46 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.vlan_description*, %struct.vlan_description** %5, align 8
  %49 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %80

53:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %76, %53
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @MAX_NUM_TAGGED_VLAN, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %54
  %59 = load %struct.vlan_description*, %struct.vlan_description** %4, align 8
  %60 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.vlan_description*, %struct.vlan_description** %5, align 8
  %67 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %65, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %58
  store i32 1, i32* %3, align 4
  br label %80

75:                                               ; preds = %58
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %54

79:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %74, %52, %43, %36
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
