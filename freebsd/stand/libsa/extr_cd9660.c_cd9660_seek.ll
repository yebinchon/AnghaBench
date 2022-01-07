; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_cd9660.c_cd9660_seek.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_cd9660.c_cd9660_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i64 }
%struct.file = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, i32, i32)* @cd9660_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cd9660_seek(%struct.open_file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.open_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  store %struct.open_file* %0, %struct.open_file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.open_file*, %struct.open_file** %5, align 8
  %10 = getelementptr inbounds %struct.open_file, %struct.open_file* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.file*
  store %struct.file* %12, %struct.file** %8, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %32 [
    i32 128, label %14
    i32 130, label %18
    i32 129, label %24
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.file*, %struct.file** %8, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %33

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.file*, %struct.file** %8, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %33

24:                                               ; preds = %3
  %25 = load %struct.file*, %struct.file** %8, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 %27, %28
  %30 = load %struct.file*, %struct.file** %8, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %33

32:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %37

33:                                               ; preds = %24, %18, %14
  %34 = load %struct.file*, %struct.file** %8, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %33, %32
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
