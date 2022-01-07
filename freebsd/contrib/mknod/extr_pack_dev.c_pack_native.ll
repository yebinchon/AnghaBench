; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mknod/extr_pack_dev.c_pack_native.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mknod/extr_pack_dev.c_pack_native.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iMajorError = common dso_local global i8* null, align 8
@iMinorError = common dso_local global i8* null, align 8
@tooManyFields = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pack_native(i32 %0, i64* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  store i8** %2, i8*** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %39

10:                                               ; preds = %3
  %11 = load i64*, i64** %5, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @makedev(i64 %13, i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @major(i32 %18)
  %20 = load i64*, i64** %5, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %10
  %25 = load i8*, i8** @iMajorError, align 8
  %26 = load i8**, i8*** %6, align 8
  store i8* %25, i8** %26, align 8
  br label %38

27:                                               ; preds = %10
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @minor(i32 %28)
  %30 = load i64*, i64** %5, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i8*, i8** @iMinorError, align 8
  %36 = load i8**, i8*** %6, align 8
  store i8* %35, i8** %36, align 8
  br label %37

37:                                               ; preds = %34, %27
  br label %38

38:                                               ; preds = %37, %24
  br label %42

39:                                               ; preds = %3
  %40 = load i8*, i8** @tooManyFields, align 8
  %41 = load i8**, i8*** %6, align 8
  store i8* %40, i8** %41, align 8
  br label %42

42:                                               ; preds = %39, %38
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @makedev(i64, i64) #1

declare dso_local i64 @major(i32) #1

declare dso_local i64 @minor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
