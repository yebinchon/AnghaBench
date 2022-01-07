; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_handle_rendezvous.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_handle_rendezvous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32, i32, i32 (%struct.vm*, i32, i32)*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"vm_handle_rendezvous: invalid vcpuid %d\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Calling rendezvous func\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Rendezvous completed\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Wait for rendezvous completion\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"vmrndv\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm*, i32)* @vm_handle_rendezvous to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_handle_rendezvous(%struct.vm* %0, i32 %1) #0 {
  %3 = alloca %struct.vm*, align 8
  %4 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.vm*, %struct.vm** %3, align 8
  %13 = getelementptr inbounds %struct.vm, %struct.vm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br label %16

16:                                               ; preds = %10, %7
  %17 = phi i1 [ false, %7 ], [ %15, %10 ]
  br label %18

18:                                               ; preds = %16, %2
  %19 = phi i1 [ true, %2 ], [ %17, %16 ]
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @KASSERT(i32 %20, i8* %23)
  %25 = load %struct.vm*, %struct.vm** %3, align 8
  %26 = getelementptr inbounds %struct.vm, %struct.vm* %25, i32 0, i32 1
  %27 = call i32 @mtx_lock(i32* %26)
  br label %28

28:                                               ; preds = %87, %18
  %29 = load %struct.vm*, %struct.vm** %3, align 8
  %30 = getelementptr inbounds %struct.vm, %struct.vm* %29, i32 0, i32 2
  %31 = load i32 (%struct.vm*, i32, i32)*, i32 (%struct.vm*, i32, i32)** %30, align 8
  %32 = icmp ne i32 (%struct.vm*, i32, i32)* %31, null
  br i1 %32, label %33, label %97

33:                                               ; preds = %28
  %34 = load %struct.vm*, %struct.vm** %3, align 8
  %35 = getelementptr inbounds %struct.vm, %struct.vm* %34, i32 0, i32 4
  %36 = load %struct.vm*, %struct.vm** %3, align 8
  %37 = getelementptr inbounds %struct.vm, %struct.vm* %36, i32 0, i32 6
  %38 = call i32 @CPU_AND(i32* %35, i32* %37)
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, -1
  br i1 %40, label %41, label %70

41:                                               ; preds = %33
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.vm*, %struct.vm** %3, align 8
  %44 = getelementptr inbounds %struct.vm, %struct.vm* %43, i32 0, i32 4
  %45 = call i64 @CPU_ISSET(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %41
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.vm*, %struct.vm** %3, align 8
  %50 = getelementptr inbounds %struct.vm, %struct.vm* %49, i32 0, i32 3
  %51 = call i64 @CPU_ISSET(i32 %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %70, label %53

53:                                               ; preds = %47
  %54 = load %struct.vm*, %struct.vm** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @VCPU_CTR0(%struct.vm* %54, i32 %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.vm*, %struct.vm** %3, align 8
  %58 = getelementptr inbounds %struct.vm, %struct.vm* %57, i32 0, i32 2
  %59 = load i32 (%struct.vm*, i32, i32)*, i32 (%struct.vm*, i32, i32)** %58, align 8
  %60 = load %struct.vm*, %struct.vm** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.vm*, %struct.vm** %3, align 8
  %63 = getelementptr inbounds %struct.vm, %struct.vm* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = call i32 %59(%struct.vm* %60, i32 %61, i32 %64)
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.vm*, %struct.vm** %3, align 8
  %68 = getelementptr inbounds %struct.vm, %struct.vm* %67, i32 0, i32 3
  %69 = call i32 @CPU_SET(i32 %66, i32* %68)
  br label %70

70:                                               ; preds = %53, %47, %41, %33
  %71 = load %struct.vm*, %struct.vm** %3, align 8
  %72 = getelementptr inbounds %struct.vm, %struct.vm* %71, i32 0, i32 4
  %73 = load %struct.vm*, %struct.vm** %3, align 8
  %74 = getelementptr inbounds %struct.vm, %struct.vm* %73, i32 0, i32 3
  %75 = call i64 @CPU_CMP(i32* %72, i32* %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %70
  %78 = load %struct.vm*, %struct.vm** %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @VCPU_CTR0(%struct.vm* %78, i32 %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %81 = load %struct.vm*, %struct.vm** %3, align 8
  %82 = getelementptr inbounds %struct.vm, %struct.vm* %81, i32 0, i32 2
  store i32 (%struct.vm*, i32, i32)* null, i32 (%struct.vm*, i32, i32)** %82, align 8
  %83 = load %struct.vm*, %struct.vm** %3, align 8
  %84 = getelementptr inbounds %struct.vm, %struct.vm* %83, i32 0, i32 2
  %85 = bitcast i32 (%struct.vm*, i32, i32)** %84 to i32 (%struct.vm*, i32, i32)*
  %86 = call i32 @wakeup(i32 (%struct.vm*, i32, i32)* %85)
  br label %97

87:                                               ; preds = %70
  %88 = load %struct.vm*, %struct.vm** %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @RENDEZVOUS_CTR0(%struct.vm* %88, i32 %89, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %91 = load %struct.vm*, %struct.vm** %3, align 8
  %92 = getelementptr inbounds %struct.vm, %struct.vm* %91, i32 0, i32 2
  %93 = bitcast i32 (%struct.vm*, i32, i32)** %92 to i32 (%struct.vm*, i32, i32)*
  %94 = load %struct.vm*, %struct.vm** %3, align 8
  %95 = getelementptr inbounds %struct.vm, %struct.vm* %94, i32 0, i32 1
  %96 = call i32 @mtx_sleep(i32 (%struct.vm*, i32, i32)* %93, i32* %95, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 0)
  br label %28

97:                                               ; preds = %77, %28
  %98 = load %struct.vm*, %struct.vm** %3, align 8
  %99 = getelementptr inbounds %struct.vm, %struct.vm* %98, i32 0, i32 1
  %100 = call i32 @mtx_unlock(i32* %99)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @CPU_AND(i32*, i32*) #1

declare dso_local i64 @CPU_ISSET(i32, i32*) #1

declare dso_local i32 @VCPU_CTR0(%struct.vm*, i32, i8*) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i64 @CPU_CMP(i32*, i32*) #1

declare dso_local i32 @wakeup(i32 (%struct.vm*, i32, i32)*) #1

declare dso_local i32 @RENDEZVOUS_CTR0(%struct.vm*, i32, i8*) #1

declare dso_local i32 @mtx_sleep(i32 (%struct.vm*, i32, i32)*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
