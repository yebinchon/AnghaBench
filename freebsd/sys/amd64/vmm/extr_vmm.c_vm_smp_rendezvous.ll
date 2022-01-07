; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_smp_rendezvous.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_smp_rendezvous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32, i32, i32*, i8*, i32, i32 }

@WARN_PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"vm_smp_rendezvous\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"vm_smp_rendezvous: invalid vcpuid %d\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Rendezvous already in progress\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"vm_smp_rendezvous: previous rendezvous is still in progress\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Initiating rendezvous\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_smp_rendezvous(%struct.vm* %0, i32 %1, i32 %2, i32* %3, i8* %4) #0 {
  %6 = alloca %struct.vm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i32, i32* @WARN_PANIC, align 4
  %13 = call i32 @WITNESS_WARN(i32 %12, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %27, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* %7, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.vm*, %struct.vm** %6, align 8
  %22 = getelementptr inbounds %struct.vm, %struct.vm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br label %25

25:                                               ; preds = %19, %16
  %26 = phi i1 [ false, %16 ], [ %24, %19 ]
  br label %27

27:                                               ; preds = %25, %5
  %28 = phi i1 [ true, %5 ], [ %26, %25 ]
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @KASSERT(i32 %29, i8* %32)
  br label %34

34:                                               ; preds = %42, %27
  %35 = load %struct.vm*, %struct.vm** %6, align 8
  %36 = getelementptr inbounds %struct.vm, %struct.vm* %35, i32 0, i32 1
  %37 = call i32 @mtx_lock(i32* %36)
  %38 = load %struct.vm*, %struct.vm** %6, align 8
  %39 = getelementptr inbounds %struct.vm, %struct.vm* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %34
  %43 = load %struct.vm*, %struct.vm** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @RENDEZVOUS_CTR0(%struct.vm* %43, i32 %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.vm*, %struct.vm** %6, align 8
  %47 = getelementptr inbounds %struct.vm, %struct.vm* %46, i32 0, i32 1
  %48 = call i32 @mtx_unlock(i32* %47)
  %49 = load %struct.vm*, %struct.vm** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @vm_handle_rendezvous(%struct.vm* %49, i32 %50)
  br label %34

52:                                               ; preds = %34
  %53 = load %struct.vm*, %struct.vm** %6, align 8
  %54 = getelementptr inbounds %struct.vm, %struct.vm* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @KASSERT(i32 %57, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  %59 = load %struct.vm*, %struct.vm** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @RENDEZVOUS_CTR0(%struct.vm* %59, i32 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.vm*, %struct.vm** %6, align 8
  %64 = getelementptr inbounds %struct.vm, %struct.vm* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load %struct.vm*, %struct.vm** %6, align 8
  %66 = getelementptr inbounds %struct.vm, %struct.vm* %65, i32 0, i32 4
  %67 = call i32 @CPU_ZERO(i32* %66)
  %68 = load i8*, i8** %10, align 8
  %69 = load %struct.vm*, %struct.vm** %6, align 8
  %70 = getelementptr inbounds %struct.vm, %struct.vm* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = load %struct.vm*, %struct.vm** %6, align 8
  %73 = getelementptr inbounds %struct.vm, %struct.vm* %72, i32 0, i32 2
  store i32* %71, i32** %73, align 8
  %74 = load %struct.vm*, %struct.vm** %6, align 8
  %75 = getelementptr inbounds %struct.vm, %struct.vm* %74, i32 0, i32 1
  %76 = call i32 @mtx_unlock(i32* %75)
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %92, %52
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.vm*, %struct.vm** %6, align 8
  %80 = getelementptr inbounds %struct.vm, %struct.vm* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %77
  %84 = load i32, i32* %11, align 4
  %85 = call i64 @CPU_ISSET(i32 %84, i32* %8)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load %struct.vm*, %struct.vm** %6, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @vcpu_notify_event(%struct.vm* %88, i32 %89, i32 0)
  br label %91

91:                                               ; preds = %87, %83
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %77

95:                                               ; preds = %77
  %96 = load %struct.vm*, %struct.vm** %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @vm_handle_rendezvous(%struct.vm* %96, i32 %97)
  ret void
}

declare dso_local i32 @WITNESS_WARN(i32, i32*, i8*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @RENDEZVOUS_CTR0(%struct.vm*, i32, i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @vm_handle_rendezvous(%struct.vm*, i32) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i64 @CPU_ISSET(i32, i32*) #1

declare dso_local i32 @vcpu_notify_event(%struct.vm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
