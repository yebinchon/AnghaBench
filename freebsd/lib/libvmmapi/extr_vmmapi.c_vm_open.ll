; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32, i32, i8*, i64 }

@GB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vmctx* @vm_open(i8* %0) #0 {
  %2 = alloca %struct.vmctx*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vmctx*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i64 @strlen(i8* %5)
  %7 = add i64 24, %6
  %8 = add i64 %7, 1
  %9 = call %struct.vmctx* @malloc(i64 %8)
  store %struct.vmctx* %9, %struct.vmctx** %4, align 8
  %10 = load %struct.vmctx*, %struct.vmctx** %4, align 8
  %11 = icmp ne %struct.vmctx* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.vmctx*, %struct.vmctx** %4, align 8
  %15 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %14, i32 0, i32 0
  store i32 -1, i32* %15, align 8
  %16 = load %struct.vmctx*, %struct.vmctx** %4, align 8
  %17 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @GB, align 4
  %19 = mul nsw i32 3, %18
  %20 = load %struct.vmctx*, %struct.vmctx** %4, align 8
  %21 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.vmctx*, %struct.vmctx** %4, align 8
  %23 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %22, i64 1
  %24 = bitcast %struct.vmctx* %23 to i8*
  %25 = load %struct.vmctx*, %struct.vmctx** %4, align 8
  %26 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load %struct.vmctx*, %struct.vmctx** %4, align 8
  %28 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @strcpy(i8* %29, i8* %30)
  %32 = load %struct.vmctx*, %struct.vmctx** %4, align 8
  %33 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @vm_device_open(i8* %34)
  %36 = load %struct.vmctx*, %struct.vmctx** %4, align 8
  %37 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = icmp slt i32 %35, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %1
  br label %42

40:                                               ; preds = %1
  %41 = load %struct.vmctx*, %struct.vmctx** %4, align 8
  store %struct.vmctx* %41, %struct.vmctx** %2, align 8
  br label %45

42:                                               ; preds = %39
  %43 = load %struct.vmctx*, %struct.vmctx** %4, align 8
  %44 = call i32 @vm_destroy(%struct.vmctx* %43)
  store %struct.vmctx* null, %struct.vmctx** %2, align 8
  br label %45

45:                                               ; preds = %42, %40
  %46 = load %struct.vmctx*, %struct.vmctx** %2, align 8
  ret %struct.vmctx* %46
}

declare dso_local %struct.vmctx* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @vm_device_open(i8*) #1

declare dso_local i32 @vm_destroy(%struct.vmctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
