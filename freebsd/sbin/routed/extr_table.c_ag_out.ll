; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_ag_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_ag_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag_info = type { i32, i32, i32, %struct.ag_info* }

@AGS_SPLIT_HZ = common dso_local global i32 0, align 4
@AGS_REDUN0 = common dso_local global i32 0, align 4
@AGS_REDUN1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ag_info*, void (%struct.ag_info*)*)* @ag_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ag_out(%struct.ag_info* %0, void (%struct.ag_info*)* %1) #0 {
  %3 = alloca %struct.ag_info*, align 8
  %4 = alloca void (%struct.ag_info*)*, align 8
  %5 = alloca %struct.ag_info*, align 8
  %6 = alloca i32, align 4
  store %struct.ag_info* %0, %struct.ag_info** %3, align 8
  store void (%struct.ag_info*)* %1, void (%struct.ag_info*)** %4, align 8
  %7 = load %struct.ag_info*, %struct.ag_info** %3, align 8
  %8 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @AGS_SPLIT_HZ, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %112

14:                                               ; preds = %2
  %15 = load %struct.ag_info*, %struct.ag_info** %3, align 8
  %16 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %15, i32 0, i32 3
  %17 = load %struct.ag_info*, %struct.ag_info** %16, align 8
  store %struct.ag_info* %17, %struct.ag_info** %5, align 8
  %18 = load %struct.ag_info*, %struct.ag_info** %5, align 8
  %19 = icmp ne %struct.ag_info* %18, null
  br i1 %19, label %20, label %59

20:                                               ; preds = %14
  %21 = load %struct.ag_info*, %struct.ag_info** %5, align 8
  %22 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ag_info*, %struct.ag_info** %3, align 8
  %25 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 1
  %28 = icmp eq i32 %23, %27
  br i1 %28, label %29, label %59

29:                                               ; preds = %20
  %30 = load %struct.ag_info*, %struct.ag_info** %5, align 8
  %31 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ag_info*, %struct.ag_info** %3, align 8
  %34 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ag_info*, %struct.ag_info** %5, align 8
  %37 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %35, %38
  %40 = icmp eq i32 %32, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %29
  %42 = load %struct.ag_info*, %struct.ag_info** %5, align 8
  %43 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ag_info*, %struct.ag_info** %3, align 8
  %46 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @AGS_REDUN0, align 4
  br label %53

51:                                               ; preds = %41
  %52 = load i32, i32* @AGS_REDUN1, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = load %struct.ag_info*, %struct.ag_info** %5, align 8
  %56 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %53, %29, %20, %14
  %60 = load %struct.ag_info*, %struct.ag_info** %3, align 8
  %61 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @AGS_REDUN0, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %59
  %67 = load %struct.ag_info*, %struct.ag_info** %3, align 8
  %68 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @AGS_REDUN1, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %112

74:                                               ; preds = %66
  %75 = load %struct.ag_info*, %struct.ag_info** %3, align 8
  %76 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 0, %77
  %79 = ashr i32 %78, 1
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.ag_info*, %struct.ag_info** %3, align 8
  %82 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.ag_info*, %struct.ag_info** %3, align 8
  %87 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %109

90:                                               ; preds = %59
  %91 = load %struct.ag_info*, %struct.ag_info** %3, align 8
  %92 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @AGS_REDUN1, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %90
  %98 = load %struct.ag_info*, %struct.ag_info** %3, align 8
  %99 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 0, %100
  %102 = ashr i32 %101, 1
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.ag_info*, %struct.ag_info** %3, align 8
  %105 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %97, %90
  br label %109

109:                                              ; preds = %108, %74
  %110 = load void (%struct.ag_info*)*, void (%struct.ag_info*)** %4, align 8
  %111 = load %struct.ag_info*, %struct.ag_info** %3, align 8
  call void %110(%struct.ag_info* %111)
  br label %112

112:                                              ; preds = %109, %73, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
