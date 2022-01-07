; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_utils.c_p2p_op_class_union.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_utils.c_p2p_op_class_union.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_reg_class = type { i64, i64* }

@P2P_MAX_REG_CLASS_CHANNELS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p2p_reg_class*, %struct.p2p_reg_class*)* @p2p_op_class_union to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_op_class_union(%struct.p2p_reg_class* %0, %struct.p2p_reg_class* %1) #0 {
  %3 = alloca %struct.p2p_reg_class*, align 8
  %4 = alloca %struct.p2p_reg_class*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.p2p_reg_class* %0, %struct.p2p_reg_class** %3, align 8
  store %struct.p2p_reg_class* %1, %struct.p2p_reg_class** %4, align 8
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %68, %2
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %4, align 8
  %10 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %71

13:                                               ; preds = %7
  store i64 0, i64* %6, align 8
  br label %14

14:                                               ; preds = %36, %13
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %3, align 8
  %17 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %14
  %21 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %4, align 8
  %22 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %3, align 8
  %28 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %26, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  br label %39

35:                                               ; preds = %20
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %6, align 8
  br label %14

39:                                               ; preds = %34, %14
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %3, align 8
  %42 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %39
  %46 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %3, align 8
  %47 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @P2P_MAX_REG_CLASS_CHANNELS, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %71

52:                                               ; preds = %45
  %53 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %4, align 8
  %54 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %3, align 8
  %60 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %3, align 8
  %63 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %63, align 8
  %66 = getelementptr inbounds i64, i64* %61, i64 %64
  store i64 %58, i64* %66, align 8
  br label %67

67:                                               ; preds = %52, %39
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %5, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %5, align 8
  br label %7

71:                                               ; preds = %51, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
