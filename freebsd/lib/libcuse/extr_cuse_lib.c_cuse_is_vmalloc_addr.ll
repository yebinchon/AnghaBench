; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcuse/extr_cuse_lib.c_cuse_is_vmalloc_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcuse/extr_cuse_lib.c_cuse_is_vmalloc_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@f_cuse = common dso_local global i64 0, align 8
@CUSE_ALLOC_UNIT_MAX = common dso_local global i32 0, align 4
@a_cuse = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cuse_is_vmalloc_addr(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i64, i64* @f_cuse, align 8
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %1
  store i32 0, i32* %2, align 4
  br label %37

11:                                               ; preds = %7
  %12 = call i32 (...) @CUSE_LOCK()
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %28, %11
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @CUSE_ALLOC_UNIT_MAX, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @a_cuse, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = icmp eq i8* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %31

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %13

31:                                               ; preds = %26, %13
  %32 = call i32 (...) @CUSE_UNLOCK()
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @CUSE_ALLOC_UNIT_MAX, align 4
  %35 = icmp ne i32 %33, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %31, %10
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @CUSE_LOCK(...) #1

declare dso_local i32 @CUSE_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
