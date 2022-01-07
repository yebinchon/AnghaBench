; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_utils.c_p2p_reg_class_intersect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_utils.c_p2p_reg_class_intersect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_reg_class = type { i64, i64*, i32 }

@P2P_MAX_REG_CLASS_CHANNELS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p2p_reg_class*, %struct.p2p_reg_class*, %struct.p2p_reg_class*)* @p2p_reg_class_intersect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_reg_class_intersect(%struct.p2p_reg_class* %0, %struct.p2p_reg_class* %1, %struct.p2p_reg_class* %2) #0 {
  %4 = alloca %struct.p2p_reg_class*, align 8
  %5 = alloca %struct.p2p_reg_class*, align 8
  %6 = alloca %struct.p2p_reg_class*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.p2p_reg_class* %0, %struct.p2p_reg_class** %4, align 8
  store %struct.p2p_reg_class* %1, %struct.p2p_reg_class** %5, align 8
  store %struct.p2p_reg_class* %2, %struct.p2p_reg_class** %6, align 8
  %9 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %4, align 8
  %10 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %6, align 8
  %13 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  store i64 0, i64* %7, align 8
  br label %14

14:                                               ; preds = %71, %3
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %4, align 8
  %17 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %74

20:                                               ; preds = %14
  store i64 0, i64* %8, align 8
  br label %21

21:                                               ; preds = %67, %20
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %5, align 8
  %24 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %70

27:                                               ; preds = %21
  %28 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %4, align 8
  %29 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %5, align 8
  %35 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %33, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  br label %67

42:                                               ; preds = %27
  %43 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %4, align 8
  %44 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %6, align 8
  %50 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %6, align 8
  %53 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i64, i64* %51, i64 %54
  store i64 %48, i64* %55, align 8
  %56 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %6, align 8
  %57 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %6, align 8
  %61 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @P2P_MAX_REG_CLASS_CHANNELS, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %42
  br label %74

66:                                               ; preds = %42
  br label %67

67:                                               ; preds = %66, %41
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %8, align 8
  br label %21

70:                                               ; preds = %21
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %7, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %7, align 8
  br label %14

74:                                               ; preds = %65, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
