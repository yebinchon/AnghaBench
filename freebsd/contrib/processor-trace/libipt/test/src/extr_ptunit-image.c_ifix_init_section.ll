; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_ifix_init_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_ifix_init_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_section = type { i8*, i32, i32, %struct.ifix_status* }
%struct.ifix_status = type { %struct.image_fixture*, %struct.ifix_mapping*, i64, i64 }
%struct.ifix_mapping = type { i32, i64* }
%struct.image_fixture = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_section*, i8*, %struct.ifix_status*, %struct.ifix_mapping*, %struct.image_fixture*)* @ifix_init_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ifix_init_section(%struct.pt_section* %0, i8* %1, %struct.ifix_status* %2, %struct.ifix_mapping* %3, %struct.image_fixture* %4) #0 {
  %6 = alloca %struct.pt_section*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ifix_status*, align 8
  %9 = alloca %struct.ifix_mapping*, align 8
  %10 = alloca %struct.image_fixture*, align 8
  %11 = alloca i64, align 8
  store %struct.pt_section* %0, %struct.pt_section** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.ifix_status* %2, %struct.ifix_status** %8, align 8
  store %struct.ifix_mapping* %3, %struct.ifix_mapping** %9, align 8
  store %struct.image_fixture* %4, %struct.image_fixture** %10, align 8
  %12 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %13 = call i32 @memset(%struct.pt_section* %12, i32 0, i32 24)
  %14 = load i8*, i8** %7, align 8
  %15 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %16 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = load %struct.ifix_status*, %struct.ifix_status** %8, align 8
  %18 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %19 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %18, i32 0, i32 3
  store %struct.ifix_status* %17, %struct.ifix_status** %19, align 8
  %20 = load %struct.ifix_mapping*, %struct.ifix_mapping** %9, align 8
  %21 = getelementptr inbounds %struct.ifix_mapping, %struct.ifix_mapping* %20, i32 0, i32 0
  store i32 8, i32* %21, align 8
  %22 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %23 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %22, i32 0, i32 1
  store i32 8, i32* %23, align 8
  %24 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %25 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %24, i32 0, i32 2
  store i32 16, i32* %25, align 4
  store i64 0, i64* %11, align 8
  br label %26

26:                                               ; preds = %40, %5
  %27 = load i64, i64* %11, align 8
  %28 = load %struct.ifix_mapping*, %struct.ifix_mapping** %9, align 8
  %29 = getelementptr inbounds %struct.ifix_mapping, %struct.ifix_mapping* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = icmp ult i64 %27, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load i64, i64* %11, align 8
  %35 = load %struct.ifix_mapping*, %struct.ifix_mapping** %9, align 8
  %36 = getelementptr inbounds %struct.ifix_mapping, %struct.ifix_mapping* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* %11, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  store i64 %34, i64* %39, align 8
  br label %40

40:                                               ; preds = %33
  %41 = load i64, i64* %11, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %11, align 8
  br label %26

43:                                               ; preds = %26
  %44 = load %struct.ifix_status*, %struct.ifix_status** %8, align 8
  %45 = getelementptr inbounds %struct.ifix_status, %struct.ifix_status* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %struct.ifix_status*, %struct.ifix_status** %8, align 8
  %47 = getelementptr inbounds %struct.ifix_status, %struct.ifix_status* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.ifix_mapping*, %struct.ifix_mapping** %9, align 8
  %49 = load %struct.ifix_status*, %struct.ifix_status** %8, align 8
  %50 = getelementptr inbounds %struct.ifix_status, %struct.ifix_status* %49, i32 0, i32 1
  store %struct.ifix_mapping* %48, %struct.ifix_mapping** %50, align 8
  %51 = load %struct.image_fixture*, %struct.image_fixture** %10, align 8
  %52 = load %struct.ifix_status*, %struct.ifix_status** %8, align 8
  %53 = getelementptr inbounds %struct.ifix_status, %struct.ifix_status* %52, i32 0, i32 0
  store %struct.image_fixture* %51, %struct.image_fixture** %53, align 8
  ret void
}

declare dso_local i32 @memset(%struct.pt_section*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
