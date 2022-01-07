; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/gssmask/extr_gssmask.c_add_handle.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/gssmask/extr_gssmask.c_add_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { %struct.handle*, i64 }
%struct.handle = type { i32, i64, %struct.handle*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.client*, i32, i8*)* @add_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @add_handle(%struct.client* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.handle*, align 8
  store %struct.client* %0, %struct.client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = call %struct.handle* @ecalloc(i32 1, i32 32)
  store %struct.handle* %8, %struct.handle** %7, align 8
  %9 = load %struct.client*, %struct.client** %4, align 8
  %10 = getelementptr inbounds %struct.client, %struct.client* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 1
  store i64 %12, i64* %10, align 8
  %13 = load %struct.handle*, %struct.handle** %7, align 8
  %14 = getelementptr inbounds %struct.handle, %struct.handle* %13, i32 0, i32 1
  store i64 %12, i64* %14, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.handle*, %struct.handle** %7, align 8
  %17 = getelementptr inbounds %struct.handle, %struct.handle* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.handle*, %struct.handle** %7, align 8
  %20 = getelementptr inbounds %struct.handle, %struct.handle* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  %21 = load %struct.client*, %struct.client** %4, align 8
  %22 = getelementptr inbounds %struct.client, %struct.client* %21, i32 0, i32 0
  %23 = load %struct.handle*, %struct.handle** %22, align 8
  %24 = load %struct.handle*, %struct.handle** %7, align 8
  %25 = getelementptr inbounds %struct.handle, %struct.handle* %24, i32 0, i32 2
  store %struct.handle* %23, %struct.handle** %25, align 8
  %26 = load %struct.handle*, %struct.handle** %7, align 8
  %27 = load %struct.client*, %struct.client** %4, align 8
  %28 = getelementptr inbounds %struct.client, %struct.client* %27, i32 0, i32 0
  store %struct.handle* %26, %struct.handle** %28, align 8
  %29 = load %struct.handle*, %struct.handle** %7, align 8
  %30 = getelementptr inbounds %struct.handle, %struct.handle* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  ret i64 %31
}

declare dso_local %struct.handle* @ecalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
