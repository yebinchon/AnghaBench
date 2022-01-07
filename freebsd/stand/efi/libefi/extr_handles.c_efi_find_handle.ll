; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_handles.c_efi_find_handle.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_handles.c_efi_find_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, %struct.devsw* }
%struct.devsw = type { i32 }

@nentries = common dso_local global i32 0, align 4
@entry = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @efi_find_handle(%struct.devsw* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.devsw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.devsw* %0, %struct.devsw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %38, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @nentries, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %41

11:                                               ; preds = %7
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @entry, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load %struct.devsw*, %struct.devsw** %16, align 8
  %18 = load %struct.devsw*, %struct.devsw** %4, align 8
  %19 = icmp ne %struct.devsw* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %38

21:                                               ; preds = %11
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @entry, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %38

31:                                               ; preds = %21
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @entry, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %3, align 8
  br label %42

38:                                               ; preds = %30, %20
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %7

41:                                               ; preds = %7
  store i32* null, i32** %3, align 8
  br label %42

42:                                               ; preds = %41, %31
  %43 = load i32*, i32** %3, align 8
  ret i32* %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
