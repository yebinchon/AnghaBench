; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_lib.c_growfldtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_lib.c_growfldtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nfields = common dso_local global i32 0, align 4
@fldtab = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [32 x i8] c"out of space creating %d fields\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @growfldtab(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @nfields, align 4
  %6 = mul nsw i32 2, %5
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sgt i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 8
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = udiv i64 %17, 8
  %19 = sub i64 %18, 1
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp eq i64 %19, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %12
  %24 = load i32**, i32*** @fldtab, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @realloc(i32** %24, i64 %25)
  %27 = inttoptr i64 %26 to i32**
  store i32** %27, i32*** @fldtab, align 8
  br label %31

28:                                               ; preds = %12
  %29 = load i32**, i32*** @fldtab, align 8
  %30 = call i32 @xfree(i32** %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32**, i32*** @fldtab, align 8
  %33 = icmp eq i32** %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @FATAL(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* @nfields, align 4
  %39 = add nsw i32 %38, 1
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @makefields(i32 %39, i32 %40)
  %42 = load i32, i32* %3, align 4
  store i32 %42, i32* @nfields, align 4
  ret void
}

declare dso_local i64 @realloc(i32**, i64) #1

declare dso_local i32 @xfree(i32**) #1

declare dso_local i32 @FATAL(i8*, i32) #1

declare dso_local i32 @makefields(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
