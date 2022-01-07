; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_bzipfs.c_check_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_bzipfs.c_check_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bz_file = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@bz_magic = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bz_file*)* @check_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_header(%struct.bz_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bz_file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bz_file* %0, %struct.bz_file** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %21, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp ult i32 %7, 3
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  %10 = load %struct.bz_file*, %struct.bz_file** %3, align 8
  %11 = call i32 @get_byte(%struct.bz_file* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32*, i32** @bz_magic, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %12, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %44

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %4, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %6

24:                                               ; preds = %6
  %25 = load %struct.bz_file*, %struct.bz_file** %3, align 8
  %26 = call i32 @get_byte(%struct.bz_file* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 49
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = icmp sgt i32 %30, 57
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %24
  store i32 1, i32* %2, align 4
  br label %44

33:                                               ; preds = %29
  %34 = load %struct.bz_file*, %struct.bz_file** %3, align 8
  %35 = getelementptr inbounds %struct.bz_file, %struct.bz_file* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 4
  store i32 %38, i32* %36, align 4
  %39 = load %struct.bz_file*, %struct.bz_file** %3, align 8
  %40 = getelementptr inbounds %struct.bz_file, %struct.bz_file* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 4
  store i32 %43, i32* %41, align 4
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %33, %32, %19
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @get_byte(%struct.bz_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
