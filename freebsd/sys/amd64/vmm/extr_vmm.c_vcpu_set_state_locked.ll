; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vcpu_set_state_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vcpu_set_state_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { %struct.vcpu* }
%struct.vcpu = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [44 x i8] c"vcpu state change from %s to idle requested\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"vmstat\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"invalid transition from vcpu idle state\00", align 1
@curcpu = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [51 x i8] c"curcpu %d and hostcpu %d mismatch for running vcpu\00", align 1
@NOCPU = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [50 x i8] c"Invalid hostcpu %d for a vcpu that is not running\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"vcpu state changed from %s to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm*, i32, i32, i32)* @vcpu_set_state_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcpu_set_state_locked(%struct.vm* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vcpu*, align 8
  %11 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.vm*, %struct.vm** %6, align 8
  %13 = getelementptr inbounds %struct.vm, %struct.vm* %12, i32 0, i32 0
  %14 = load %struct.vcpu*, %struct.vcpu** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %14, i64 %16
  store %struct.vcpu* %17, %struct.vcpu** %10, align 8
  %18 = load %struct.vcpu*, %struct.vcpu** %10, align 8
  %19 = call i32 @vcpu_assert_locked(%struct.vcpu* %18)
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %28, %22
  %24 = load %struct.vcpu*, %struct.vcpu** %10, align 8
  %25 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 130
  br i1 %27, label %28, label %46

28:                                               ; preds = %23
  %29 = load %struct.vcpu*, %struct.vcpu** %10, align 8
  %30 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = load %struct.vcpu*, %struct.vcpu** %10, align 8
  %32 = call i32 @vcpu_notify_event_locked(%struct.vcpu* %31, i32 0)
  %33 = load %struct.vm*, %struct.vm** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.vcpu*, %struct.vcpu** %10, align 8
  %36 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @vcpu_state2str(i32 %37)
  %39 = call i32 @VCPU_CTR1(%struct.vm* %33, i32 %34, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.vcpu*, %struct.vcpu** %10, align 8
  %41 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %40, i32 0, i32 0
  %42 = load %struct.vcpu*, %struct.vcpu** %10, align 8
  %43 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %42, i32 0, i32 3
  %44 = load i32, i32* @hz, align 4
  %45 = call i32 @msleep_spin(i32* %41, i32* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %23

46:                                               ; preds = %23
  br label %54

47:                                               ; preds = %4
  %48 = load %struct.vcpu*, %struct.vcpu** %10, align 8
  %49 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 130
  %52 = zext i1 %51 to i32
  %53 = call i32 @KASSERT(i32 %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %47, %46
  %55 = load %struct.vcpu*, %struct.vcpu** %10, align 8
  %56 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 129
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = load %struct.vcpu*, %struct.vcpu** %10, align 8
  %61 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @curcpu, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i64, i64* @curcpu, align 8
  %67 = load %struct.vcpu*, %struct.vcpu** %10, align 8
  %68 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 @KASSERT(i32 %65, i8* %70)
  br label %84

72:                                               ; preds = %54
  %73 = load %struct.vcpu*, %struct.vcpu** %10, align 8
  %74 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @NOCPU, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load %struct.vcpu*, %struct.vcpu** %10, align 8
  %80 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i8*
  %83 = call i32 @KASSERT(i32 %78, i8* %82)
  br label %84

84:                                               ; preds = %72, %59
  %85 = load %struct.vcpu*, %struct.vcpu** %10, align 8
  %86 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  switch i32 %87, label %96 [
    i32 130, label %88
    i32 129, label %88
    i32 128, label %88
    i32 131, label %92
  ]

88:                                               ; preds = %84, %84, %84
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 131
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %11, align 4
  br label %97

92:                                               ; preds = %84
  %93 = load i32, i32* %8, align 4
  %94 = icmp eq i32 %93, 131
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %11, align 4
  br label %97

96:                                               ; preds = %84
  store i32 1, i32* %11, align 4
  br label %97

97:                                               ; preds = %96, %92, %88
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* @EBUSY, align 4
  store i32 %101, i32* %5, align 4
  br label %133

102:                                              ; preds = %97
  %103 = load %struct.vm*, %struct.vm** %6, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.vcpu*, %struct.vcpu** %10, align 8
  %106 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @vcpu_state2str(i32 %107)
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @vcpu_state2str(i32 %109)
  %111 = call i32 @VCPU_CTR2(%struct.vm* %103, i32 %104, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %108, i32 %110)
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.vcpu*, %struct.vcpu** %10, align 8
  %114 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* %8, align 4
  %116 = icmp eq i32 %115, 129
  br i1 %116, label %117, label %121

117:                                              ; preds = %102
  %118 = load i64, i64* @curcpu, align 8
  %119 = load %struct.vcpu*, %struct.vcpu** %10, align 8
  %120 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %119, i32 0, i32 2
  store i64 %118, i64* %120, align 8
  br label %125

121:                                              ; preds = %102
  %122 = load i64, i64* @NOCPU, align 8
  %123 = load %struct.vcpu*, %struct.vcpu** %10, align 8
  %124 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %123, i32 0, i32 2
  store i64 %122, i64* %124, align 8
  br label %125

125:                                              ; preds = %121, %117
  %126 = load i32, i32* %8, align 4
  %127 = icmp eq i32 %126, 130
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load %struct.vcpu*, %struct.vcpu** %10, align 8
  %130 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %129, i32 0, i32 0
  %131 = call i32 @wakeup(i32* %130)
  br label %132

132:                                              ; preds = %128, %125
  store i32 0, i32* %5, align 4
  br label %133

133:                                              ; preds = %132, %100
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32 @vcpu_assert_locked(%struct.vcpu*) #1

declare dso_local i32 @vcpu_notify_event_locked(%struct.vcpu*, i32) #1

declare dso_local i32 @VCPU_CTR1(%struct.vm*, i32, i8*, i32) #1

declare dso_local i32 @vcpu_state2str(i32) #1

declare dso_local i32 @msleep_spin(i32*, i32*, i8*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VCPU_CTR2(%struct.vm*, i32, i8*, i32, i32) #1

declare dso_local i32 @wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
