; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_bzipfs.c_bzf_fill.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_bzipfs.c_bzf_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bz_file = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@BZ_BUFSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bz_file*)* @bzf_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bzf_fill(%struct.bz_file* %0) #0 {
  %2 = alloca %struct.bz_file*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bz_file* %0, %struct.bz_file** %2, align 8
  %5 = load i32, i32* @BZ_BUFSIZE, align 4
  %6 = load %struct.bz_file*, %struct.bz_file** %2, align 8
  %7 = getelementptr inbounds %struct.bz_file, %struct.bz_file* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sub nsw i32 %5, %9
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %60

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @BZ_BUFSIZE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load %struct.bz_file*, %struct.bz_file** %2, align 8
  %19 = getelementptr inbounds %struct.bz_file, %struct.bz_file* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %20, %21
  %23 = load %struct.bz_file*, %struct.bz_file** %2, align 8
  %24 = getelementptr inbounds %struct.bz_file, %struct.bz_file* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BZ_BUFSIZE, align 4
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %26, %27
  %29 = call i32 @bcopy(i32 %22, i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %17, %13
  %31 = load %struct.bz_file*, %struct.bz_file** %2, align 8
  %32 = getelementptr inbounds %struct.bz_file, %struct.bz_file* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bz_file*, %struct.bz_file** %2, align 8
  %35 = getelementptr inbounds %struct.bz_file, %struct.bz_file* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.bz_file*, %struct.bz_file** %2, align 8
  %38 = getelementptr inbounds %struct.bz_file, %struct.bz_file* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %36, %40
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @read(i32 %33, i32 %41, i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load %struct.bz_file*, %struct.bz_file** %2, align 8
  %45 = getelementptr inbounds %struct.bz_file, %struct.bz_file* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bz_file*, %struct.bz_file** %2, align 8
  %48 = getelementptr inbounds %struct.bz_file, %struct.bz_file* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %30
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.bz_file*, %struct.bz_file** %2, align 8
  %55 = getelementptr inbounds %struct.bz_file, %struct.bz_file* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, %53
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %52, %30
  br label %60

60:                                               ; preds = %59, %1
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @read(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
