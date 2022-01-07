; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_file_addmetadata.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_file_addmetadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.preloaded_file = type { %struct.file_metadata* }
%struct.file_metadata = type { i64, i32, %struct.file_metadata*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @file_addmetadata(%struct.preloaded_file* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.preloaded_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.file_metadata*, align 8
  store %struct.preloaded_file* %0, %struct.preloaded_file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i64, i64* %7, align 8
  %11 = add i64 28, %10
  %12 = trunc i64 %11 to i32
  %13 = call %struct.file_metadata* @malloc(i32 %12)
  store %struct.file_metadata* %13, %struct.file_metadata** %9, align 8
  %14 = load %struct.file_metadata*, %struct.file_metadata** %9, align 8
  %15 = icmp ne %struct.file_metadata* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.file_metadata*, %struct.file_metadata** %9, align 8
  %19 = getelementptr inbounds %struct.file_metadata, %struct.file_metadata* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.file_metadata*, %struct.file_metadata** %9, align 8
  %22 = getelementptr inbounds %struct.file_metadata, %struct.file_metadata* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.file_metadata*, %struct.file_metadata** %9, align 8
  %25 = getelementptr inbounds %struct.file_metadata, %struct.file_metadata* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @bcopy(i8* %23, i32 %26, i64 %27)
  %29 = load %struct.preloaded_file*, %struct.preloaded_file** %5, align 8
  %30 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %29, i32 0, i32 0
  %31 = load %struct.file_metadata*, %struct.file_metadata** %30, align 8
  %32 = load %struct.file_metadata*, %struct.file_metadata** %9, align 8
  %33 = getelementptr inbounds %struct.file_metadata, %struct.file_metadata* %32, i32 0, i32 2
  store %struct.file_metadata* %31, %struct.file_metadata** %33, align 8
  br label %34

34:                                               ; preds = %16, %4
  %35 = load %struct.file_metadata*, %struct.file_metadata** %9, align 8
  %36 = load %struct.preloaded_file*, %struct.preloaded_file** %5, align 8
  %37 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %36, i32 0, i32 0
  store %struct.file_metadata* %35, %struct.file_metadata** %37, align 8
  ret void
}

declare dso_local %struct.file_metadata* @malloc(i32) #1

declare dso_local i32 @bcopy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
