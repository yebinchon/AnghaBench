; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_copyin.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_copyin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.iovec = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_copyin(%struct.vmctx* %0, i32 %1, %struct.iovec* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.vmctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.vmctx* %0, %struct.vmctx** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.iovec* %2, %struct.iovec** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i8*, i8** %9, align 8
  store i8* %14, i8** %12, align 8
  br label %15

15:                                               ; preds = %18, %5
  %16 = load i64, i64* %10, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %15
  %19 = load %struct.iovec*, %struct.iovec** %8, align 8
  %20 = getelementptr inbounds %struct.iovec, %struct.iovec* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @assert(i32 %21)
  %23 = load i64, i64* %10, align 8
  %24 = load %struct.iovec*, %struct.iovec** %8, align 8
  %25 = getelementptr inbounds %struct.iovec, %struct.iovec* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @min(i64 %23, i32 %26)
  store i64 %27, i64* %13, align 8
  %28 = load %struct.iovec*, %struct.iovec** %8, align 8
  %29 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %11, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = load i64, i64* %13, align 8
  %34 = call i32 @bcopy(i8* %31, i8* %32, i64 %33)
  %35 = load %struct.iovec*, %struct.iovec** %8, align 8
  %36 = getelementptr inbounds %struct.iovec, %struct.iovec* %35, i32 1
  store %struct.iovec* %36, %struct.iovec** %8, align 8
  %37 = load i64, i64* %13, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 %37
  store i8* %39, i8** %12, align 8
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* %10, align 8
  %42 = sub i64 %41, %40
  store i64 %42, i64* %10, align 8
  br label %15

43:                                               ; preds = %15
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
