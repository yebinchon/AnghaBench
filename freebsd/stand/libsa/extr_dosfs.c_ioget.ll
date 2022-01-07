; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_dosfs.c_ioget.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_dosfs.c_ioget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32, i64, i8*, i64*)* }

@F_READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, i32, i8*, i64)* @ioget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioget(%struct.open_file* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.open_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.open_file* %0, %struct.open_file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %11 = load %struct.open_file*, %struct.open_file** %5, align 8
  %12 = getelementptr inbounds %struct.open_file, %struct.open_file* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (i32, i32, i32, i64, i8*, i64*)*, i32 (i32, i32, i32, i64, i8*, i64*)** %14, align 8
  %16 = load %struct.open_file*, %struct.open_file** %5, align 8
  %17 = getelementptr inbounds %struct.open_file, %struct.open_file* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @F_READ, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i64, i64* %8, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 %15(i32 %18, i32 %19, i32 %20, i64 %21, i8* %22, i64* %9)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %4
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @EIO, align 4
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %30, %26, %4
  %33 = load i32, i32* %10, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
