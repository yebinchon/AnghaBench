; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_sync.c_pt_find_psb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_sync.c_pt_find_psb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_config = type { i64*, i64* }

@pt_psb_hi = common dso_local global i64 0, align 8
@pt_psb_lo = common dso_local global i64 0, align 8
@ptps_psb = common dso_local global i32 0, align 4
@pt_opc_psb = common dso_local global i64 0, align 8
@pt_ext_psb = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64*, %struct.pt_config*)* @pt_find_psb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @pt_find_psb(i64* %0, %struct.pt_config* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.pt_config*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store %struct.pt_config* %1, %struct.pt_config** %5, align 8
  %11 = load i64*, i64** %4, align 8
  %12 = icmp ne i64* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.pt_config*, %struct.pt_config** %5, align 8
  %15 = icmp ne %struct.pt_config* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %2
  store i64* null, i64** %3, align 8
  br label %89

17:                                               ; preds = %13
  %18 = load %struct.pt_config*, %struct.pt_config** %5, align 8
  %19 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  store i64* %20, i64** %6, align 8
  %21 = load %struct.pt_config*, %struct.pt_config** %5, align 8
  %22 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  store i64* %23, i64** %7, align 8
  %24 = load i64*, i64** %4, align 8
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @pt_psb_hi, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = load i64*, i64** %4, align 8
  %30 = getelementptr inbounds i64, i64* %29, i32 1
  store i64* %30, i64** %4, align 8
  br label %31

31:                                               ; preds = %28, %17
  br label %32

32:                                               ; preds = %54, %31
  %33 = load i64*, i64** %4, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64*, i64** %7, align 8
  %36 = icmp ult i64* %34, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %32
  %38 = load i64*, i64** %4, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %9, align 8
  %41 = load i64*, i64** %4, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @pt_psb_hi, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %57

48:                                               ; preds = %37
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @pt_psb_lo, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %57

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53
  %55 = load i64*, i64** %4, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 2
  store i64* %56, i64** %4, align 8
  br label %32

57:                                               ; preds = %52, %47, %32
  %58 = load i32, i32* @ptps_psb, align 4
  %59 = load i64*, i64** %4, align 8
  %60 = sext i32 %58 to i64
  %61 = sub i64 0, %60
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  store i64* %62, i64** %4, align 8
  %63 = load i64*, i64** %4, align 8
  %64 = load i64*, i64** %6, align 8
  %65 = icmp ult i64* %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  store i64* null, i64** %3, align 8
  br label %89

67:                                               ; preds = %57
  %68 = load i64*, i64** %4, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @pt_opc_psb, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load i64*, i64** %4, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @pt_ext_psb, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73, %67
  store i64* null, i64** %3, align 8
  br label %89

80:                                               ; preds = %73
  %81 = load i64*, i64** %4, align 8
  %82 = load %struct.pt_config*, %struct.pt_config** %5, align 8
  %83 = call i32 @pt_pkt_read_psb(i64* %81, %struct.pt_config* %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  store i64* null, i64** %3, align 8
  br label %89

87:                                               ; preds = %80
  %88 = load i64*, i64** %4, align 8
  store i64* %88, i64** %3, align 8
  br label %89

89:                                               ; preds = %87, %86, %79, %66, %16
  %90 = load i64*, i64** %3, align 8
  ret i64* %90
}

declare dso_local i32 @pt_pkt_read_psb(i64*, %struct.pt_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
