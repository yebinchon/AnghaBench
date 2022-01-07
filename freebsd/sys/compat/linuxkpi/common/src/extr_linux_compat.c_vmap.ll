; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_vmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_vmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vmap(%struct.page** %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.page**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.page** %0, %struct.page*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = mul i32 %12, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %11, align 8
  %16 = load i64, i64* %11, align 8
  %17 = call i64 @kva_alloc(i64 %16)
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %32

21:                                               ; preds = %4
  %22 = load i64, i64* %10, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @vmmap_add(i8* %23, i64 %24)
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.page**, %struct.page*** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @pmap_qenter(i64 %26, %struct.page** %27, i32 %28)
  %30 = load i64, i64* %10, align 8
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %5, align 8
  br label %32

32:                                               ; preds = %21, %20
  %33 = load i8*, i8** %5, align 8
  ret i8* %33
}

declare dso_local i64 @kva_alloc(i64) #1

declare dso_local i32 @vmmap_add(i8*, i64) #1

declare dso_local i32 @pmap_qenter(i64, %struct.page**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
