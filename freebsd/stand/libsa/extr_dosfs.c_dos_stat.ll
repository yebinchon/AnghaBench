; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_dosfs.c_dos_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_dosfs.c_dos_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i64 }
%struct.stat = type { i32, i32, i32, i64, i64 }
%struct.TYPE_3__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@FA_DIR = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, %struct.stat*)* @dos_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dos_stat(%struct.open_file* %0, %struct.stat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.open_file*, align 8
  %5 = alloca %struct.stat*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store %struct.open_file* %0, %struct.open_file** %4, align 8
  store %struct.stat* %1, %struct.stat** %5, align 8
  %7 = load %struct.open_file*, %struct.open_file** %4, align 8
  %8 = getelementptr inbounds %struct.open_file, %struct.open_file* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %6, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @FA_DIR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @S_IFDIR, align 4
  %20 = or i32 %19, 365
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @S_IFREG, align 4
  %23 = or i32 %22, 292
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i32 [ %20, %18 ], [ %23, %21 ]
  %26 = load %struct.stat*, %struct.stat** %5, align 8
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.stat*, %struct.stat** %5, align 8
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.stat*, %struct.stat** %5, align 8
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load %struct.stat*, %struct.stat** %5, align 8
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = call i32 @fsize(i32 %36, %struct.TYPE_4__* %38)
  %40 = load %struct.stat*, %struct.stat** %5, align 8
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = icmp eq i32 %39, -1
  br i1 %42, label %43, label %45

43:                                               ; preds = %24
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %3, align 4
  br label %46

45:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %43
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @fsize(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
