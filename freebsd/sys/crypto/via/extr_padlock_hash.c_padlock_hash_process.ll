; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/via/extr_padlock_hash.c_padlock_hash_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/via/extr_padlock_hash.c_padlock_hash_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.padlock_session = type { i32 }
%struct.cryptodesc = type { i32, i32, i32 }
%struct.cryptop = type { i32, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@FPU_KERN_NORMAL = common dso_local global i32 0, align 4
@FPU_KERN_KTHR = common dso_local global i32 0, align 4
@CRD_F_KEY_EXPLICIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @padlock_hash_process(%struct.padlock_session* %0, %struct.cryptodesc* %1, %struct.cryptop* %2) #0 {
  %4 = alloca %struct.padlock_session*, align 8
  %5 = alloca %struct.cryptodesc*, align 8
  %6 = alloca %struct.cryptop*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  store %struct.padlock_session* %0, %struct.padlock_session** %4, align 8
  store %struct.cryptodesc* %1, %struct.cryptodesc** %5, align 8
  store %struct.cryptop* %2, %struct.cryptop** %6, align 8
  %9 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %9, %struct.thread** %7, align 8
  %10 = load %struct.thread*, %struct.thread** %7, align 8
  %11 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %12 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @FPU_KERN_NORMAL, align 4
  %15 = load i32, i32* @FPU_KERN_KTHR, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @fpu_kern_enter(%struct.thread* %10, i32 %13, i32 %16)
  %18 = load %struct.cryptodesc*, %struct.cryptodesc** %5, align 8
  %19 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CRD_F_KEY_EXPLICIT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %3
  %25 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %26 = load %struct.cryptodesc*, %struct.cryptodesc** %5, align 8
  %27 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cryptodesc*, %struct.cryptodesc** %5, align 8
  %30 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @padlock_hash_key_setup(%struct.padlock_session* %25, i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %24, %3
  %34 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %35 = load %struct.cryptodesc*, %struct.cryptodesc** %5, align 8
  %36 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %37 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %40 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @padlock_authcompute(%struct.padlock_session* %34, %struct.cryptodesc* %35, i32 %38, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load %struct.thread*, %struct.thread** %7, align 8
  %44 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %45 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @fpu_kern_leave(%struct.thread* %43, i32 %46)
  %48 = load i32, i32* %8, align 4
  ret i32 %48
}

declare dso_local i32 @fpu_kern_enter(%struct.thread*, i32, i32) #1

declare dso_local i32 @padlock_hash_key_setup(%struct.padlock_session*, i32, i32) #1

declare dso_local i32 @padlock_authcompute(%struct.padlock_session*, %struct.cryptodesc*, i32, i32) #1

declare dso_local i32 @fpu_kern_leave(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
