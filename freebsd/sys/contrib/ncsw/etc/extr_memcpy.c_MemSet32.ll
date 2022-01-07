; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/etc/extr_memcpy.c_MemSet32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/etc/extr_memcpy.c_MemSet32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @MemSet32(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i8**
  store i8** %11, i8*** %9, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = ptrtoint i8* %12 to i32
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = shl i32 %14, 8
  %16 = load i32, i32* %7, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = shl i32 %18, 16
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %32, %3
  %23 = load i8**, i8*** %9, align 8
  %24 = call i32 @PTR_TO_UINT(i8** %23)
  %25 = and i32 %24, 3
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %27, %22
  %31 = phi i1 [ false, %22 ], [ %29, %27 ]
  br i1 %31, label %32, label %38

32:                                               ; preds = %30
  %33 = load i8*, i8** %5, align 8
  %34 = load i8**, i8*** %9, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i32 1
  store i8** %35, i8*** %9, align 8
  store i8* %33, i8** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %6, align 4
  br label %22

38:                                               ; preds = %30
  %39 = load i8**, i8*** %9, align 8
  %40 = bitcast i8** %39 to i32*
  store i32* %40, i32** %8, align 8
  br label %41

41:                                               ; preds = %45, %38
  %42 = load i32, i32* %6, align 4
  %43 = ashr i32 %42, 2
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %8, align 8
  store i32 %46, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 %49, 4
  store i32 %50, i32* %6, align 4
  br label %41

51:                                               ; preds = %41
  %52 = load i32*, i32** %8, align 8
  %53 = bitcast i32* %52 to i8**
  store i8** %53, i8*** %9, align 8
  br label %54

54:                                               ; preds = %58, %51
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %6, align 4
  %57 = icmp ne i32 %55, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i8*, i8** %5, align 8
  %60 = load i8**, i8*** %9, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i32 1
  store i8** %61, i8*** %9, align 8
  store i8* %59, i8** %60, align 8
  br label %54

62:                                               ; preds = %54
  %63 = load i8*, i8** %4, align 8
  ret i8* %63
}

declare dso_local i32 @PTR_TO_UINT(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
