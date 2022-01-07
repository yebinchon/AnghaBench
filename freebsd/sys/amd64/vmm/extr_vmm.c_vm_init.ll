; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm*, i32)* @vm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_init(%struct.vm* %0, i32 %1) #0 {
  %3 = alloca %struct.vm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vm*, %struct.vm** %3, align 8
  %7 = load %struct.vm*, %struct.vm** %3, align 8
  %8 = getelementptr inbounds %struct.vm, %struct.vm* %7, i32 0, i32 12
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @vmspace_pmap(i32 %9)
  %11 = call i32 @VMINIT(%struct.vm* %6, i32 %10)
  %12 = load %struct.vm*, %struct.vm** %3, align 8
  %13 = getelementptr inbounds %struct.vm, %struct.vm* %12, i32 0, i32 13
  store i32 %11, i32* %13, align 4
  %14 = load %struct.vm*, %struct.vm** %3, align 8
  %15 = getelementptr inbounds %struct.vm, %struct.vm* %14, i32 0, i32 11
  store i32* null, i32** %15, align 8
  %16 = load %struct.vm*, %struct.vm** %3, align 8
  %17 = call i32 @vioapic_init(%struct.vm* %16)
  %18 = load %struct.vm*, %struct.vm** %3, align 8
  %19 = getelementptr inbounds %struct.vm, %struct.vm* %18, i32 0, i32 10
  store i32 %17, i32* %19, align 4
  %20 = load %struct.vm*, %struct.vm** %3, align 8
  %21 = call i32 @vhpet_init(%struct.vm* %20)
  %22 = load %struct.vm*, %struct.vm** %3, align 8
  %23 = getelementptr inbounds %struct.vm, %struct.vm* %22, i32 0, i32 9
  store i32 %21, i32* %23, align 8
  %24 = load %struct.vm*, %struct.vm** %3, align 8
  %25 = call i32 @vatpic_init(%struct.vm* %24)
  %26 = load %struct.vm*, %struct.vm** %3, align 8
  %27 = getelementptr inbounds %struct.vm, %struct.vm* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 4
  %28 = load %struct.vm*, %struct.vm** %3, align 8
  %29 = call i32 @vatpit_init(%struct.vm* %28)
  %30 = load %struct.vm*, %struct.vm** %3, align 8
  %31 = getelementptr inbounds %struct.vm, %struct.vm* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 8
  %32 = load %struct.vm*, %struct.vm** %3, align 8
  %33 = call i32 @vpmtmr_init(%struct.vm* %32)
  %34 = load %struct.vm*, %struct.vm** %3, align 8
  %35 = getelementptr inbounds %struct.vm, %struct.vm* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %2
  %39 = load %struct.vm*, %struct.vm** %3, align 8
  %40 = call i32 @vrtc_init(%struct.vm* %39)
  %41 = load %struct.vm*, %struct.vm** %3, align 8
  %42 = getelementptr inbounds %struct.vm, %struct.vm* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %38, %2
  %44 = load %struct.vm*, %struct.vm** %3, align 8
  %45 = getelementptr inbounds %struct.vm, %struct.vm* %44, i32 0, i32 4
  %46 = call i32 @CPU_ZERO(i32* %45)
  %47 = load %struct.vm*, %struct.vm** %3, align 8
  %48 = getelementptr inbounds %struct.vm, %struct.vm* %47, i32 0, i32 3
  %49 = call i32 @CPU_ZERO(i32* %48)
  %50 = load %struct.vm*, %struct.vm** %3, align 8
  %51 = getelementptr inbounds %struct.vm, %struct.vm* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.vm*, %struct.vm** %3, align 8
  %53 = getelementptr inbounds %struct.vm, %struct.vm* %52, i32 0, i32 1
  %54 = call i32 @CPU_ZERO(i32* %53)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %66, %43
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.vm*, %struct.vm** %3, align 8
  %58 = getelementptr inbounds %struct.vm, %struct.vm* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = load %struct.vm*, %struct.vm** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @vcpu_init(%struct.vm* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %55

69:                                               ; preds = %55
  ret void
}

declare dso_local i32 @VMINIT(%struct.vm*, i32) #1

declare dso_local i32 @vmspace_pmap(i32) #1

declare dso_local i32 @vioapic_init(%struct.vm*) #1

declare dso_local i32 @vhpet_init(%struct.vm*) #1

declare dso_local i32 @vatpic_init(%struct.vm*) #1

declare dso_local i32 @vatpit_init(%struct.vm*) #1

declare dso_local i32 @vpmtmr_init(%struct.vm*) #1

declare dso_local i32 @vrtc_init(%struct.vm*) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @vcpu_init(%struct.vm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
