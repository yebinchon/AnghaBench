; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_machdep.c_foreach_efi_map_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_machdep.c_foreach_efi_map_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efi_map_header = type { i32, i32 }
%struct.efi_md = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efi_map_header*, i32 (%struct.efi_md*)*)* @foreach_efi_map_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @foreach_efi_map_entry(%struct.efi_map_header* %0, i32 (%struct.efi_md*)* %1) #0 {
  %3 = alloca %struct.efi_map_header*, align 8
  %4 = alloca i32 (%struct.efi_md*)*, align 8
  %5 = alloca %struct.efi_md*, align 8
  %6 = alloca %struct.efi_md*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.efi_map_header* %0, %struct.efi_map_header** %3, align 8
  store i32 (%struct.efi_md*)* %1, i32 (%struct.efi_md*)** %4, align 8
  store i64 16, i64* %7, align 8
  %10 = load %struct.efi_map_header*, %struct.efi_map_header** %3, align 8
  %11 = bitcast %struct.efi_map_header* %10 to i32*
  %12 = load i64, i64* %7, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = bitcast i32* %13 to %struct.efi_md*
  store %struct.efi_md* %14, %struct.efi_md** %5, align 8
  %15 = load %struct.efi_map_header*, %struct.efi_map_header** %3, align 8
  %16 = getelementptr inbounds %struct.efi_map_header, %struct.efi_map_header* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %45

20:                                               ; preds = %2
  %21 = load %struct.efi_map_header*, %struct.efi_map_header** %3, align 8
  %22 = getelementptr inbounds %struct.efi_map_header, %struct.efi_map_header* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.efi_map_header*, %struct.efi_map_header** %3, align 8
  %25 = getelementptr inbounds %struct.efi_map_header, %struct.efi_map_header* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %23, %26
  store i32 %27, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %28 = load %struct.efi_md*, %struct.efi_md** %5, align 8
  store %struct.efi_md* %28, %struct.efi_md** %6, align 8
  br label %29

29:                                               ; preds = %37, %20
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load i32 (%struct.efi_md*)*, i32 (%struct.efi_md*)** %4, align 8
  %35 = load %struct.efi_md*, %struct.efi_md** %6, align 8
  %36 = call i32 %34(%struct.efi_md* %35)
  br label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  %40 = load %struct.efi_md*, %struct.efi_md** %6, align 8
  %41 = load %struct.efi_map_header*, %struct.efi_map_header** %3, align 8
  %42 = getelementptr inbounds %struct.efi_map_header, %struct.efi_map_header* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.efi_md* @efi_next_descriptor(%struct.efi_md* %40, i32 %43)
  store %struct.efi_md* %44, %struct.efi_md** %6, align 8
  br label %29

45:                                               ; preds = %19, %29
  ret void
}

declare dso_local %struct.efi_md* @efi_next_descriptor(%struct.efi_md*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
