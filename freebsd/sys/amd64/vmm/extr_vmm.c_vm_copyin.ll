; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_copyin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_copyin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }
%struct.vm_copyinfo = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_copyin(%struct.vm* %0, i32 %1, %struct.vm_copyinfo* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.vm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vm_copyinfo*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.vm_copyinfo* %2, %struct.vm_copyinfo** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i8*, i8** %9, align 8
  store i8* %13, i8** %11, align 8
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %17, %5
  %15 = load i64, i64* %10, align 8
  %16 = icmp ugt i64 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %14
  %18 = load %struct.vm_copyinfo*, %struct.vm_copyinfo** %8, align 8
  %19 = load i32, i32* %12, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.vm_copyinfo, %struct.vm_copyinfo* %18, i64 %20
  %22 = getelementptr inbounds %struct.vm_copyinfo, %struct.vm_copyinfo* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = load %struct.vm_copyinfo*, %struct.vm_copyinfo** %8, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.vm_copyinfo, %struct.vm_copyinfo* %25, i64 %27
  %29 = getelementptr inbounds %struct.vm_copyinfo, %struct.vm_copyinfo* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @bcopy(i32 %23, i8* %24, i64 %30)
  %32 = load %struct.vm_copyinfo*, %struct.vm_copyinfo** %8, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.vm_copyinfo, %struct.vm_copyinfo* %32, i64 %34
  %36 = getelementptr inbounds %struct.vm_copyinfo, %struct.vm_copyinfo* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = sub i64 %38, %37
  store i64 %39, i64* %10, align 8
  %40 = load %struct.vm_copyinfo*, %struct.vm_copyinfo** %8, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.vm_copyinfo, %struct.vm_copyinfo* %40, i64 %42
  %44 = getelementptr inbounds %struct.vm_copyinfo, %struct.vm_copyinfo* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 %45
  store i8* %47, i8** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %12, align 4
  br label %14

50:                                               ; preds = %14
  ret void
}

declare dso_local i32 @bcopy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
