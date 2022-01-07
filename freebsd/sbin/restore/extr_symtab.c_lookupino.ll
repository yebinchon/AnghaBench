; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_symtab.c_lookupino.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_symtab.c_lookupino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i64, %struct.entry* }

@UFS_WINO = common dso_local global i64 0, align 8
@maxino = common dso_local global i64 0, align 8
@entry = common dso_local global %struct.entry** null, align 8
@entrytblsize = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.entry* @lookupino(i64 %0) #0 {
  %2 = alloca %struct.entry*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.entry*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @UFS_WINO, align 8
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @maxino, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %1
  store %struct.entry* null, %struct.entry** %2, align 8
  br label %37

13:                                               ; preds = %8
  %14 = load %struct.entry**, %struct.entry*** @entry, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @entrytblsize, align 8
  %17 = urem i64 %15, %16
  %18 = getelementptr inbounds %struct.entry*, %struct.entry** %14, i64 %17
  %19 = load %struct.entry*, %struct.entry** %18, align 8
  store %struct.entry* %19, %struct.entry** %4, align 8
  br label %20

20:                                               ; preds = %32, %13
  %21 = load %struct.entry*, %struct.entry** %4, align 8
  %22 = icmp ne %struct.entry* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load %struct.entry*, %struct.entry** %4, align 8
  %25 = getelementptr inbounds %struct.entry, %struct.entry* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %3, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load %struct.entry*, %struct.entry** %4, align 8
  store %struct.entry* %30, %struct.entry** %2, align 8
  br label %37

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.entry*, %struct.entry** %4, align 8
  %34 = getelementptr inbounds %struct.entry, %struct.entry* %33, i32 0, i32 1
  %35 = load %struct.entry*, %struct.entry** %34, align 8
  store %struct.entry* %35, %struct.entry** %4, align 8
  br label %20

36:                                               ; preds = %20
  store %struct.entry* null, %struct.entry** %2, align 8
  br label %37

37:                                               ; preds = %36, %29, %12
  %38 = load %struct.entry*, %struct.entry** %2, align 8
  ret %struct.entry* %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
