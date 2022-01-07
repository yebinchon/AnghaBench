; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_install.c_setmultipath.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_install.c_setmultipath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8***, i8*)* @setmultipath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setmultipath(i8*** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8***, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8*** %0, i8**** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %7, align 8
  br label %12

12:                                               ; preds = %25, %2
  %13 = load i32, i32* %8, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %8, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call i8* @strchr(i8* %15, i8 signext 44)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %23

20:                                               ; preds = %12
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  br label %23

23:                                               ; preds = %20, %19
  %24 = phi i8* [ null, %19 ], [ %22, %20 ]
  store i8* %24, i8** %7, align 8
  br label %25

25:                                               ; preds = %23
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %12, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i8** @calloc(i32 %30, i32 8)
  %32 = load i8***, i8**** %4, align 8
  store i8** %31, i8*** %32, align 8
  %33 = load i8***, i8**** %4, align 8
  %34 = load i8**, i8*** %33, align 8
  %35 = icmp eq i8** %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @ENOMEM, align 4
  store i32 %37, i32* %3, align 4
  br label %69

38:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %65, %38
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %68

43:                                               ; preds = %39
  %44 = load i8*, i8** %5, align 8
  %45 = call i8* @strchr(i8* %44, i8 signext 44)
  store i8* %45, i8** %6, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %6, align 8
  store i8 0, i8* %49, align 1
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i8***, i8**** %4, align 8
  %53 = load i8**, i8*** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @setpath(i8** %56, i8* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %3, align 4
  br label %69

63:                                               ; preds = %51
  %64 = load i8*, i8** %6, align 8
  store i8* %64, i8** %5, align 8
  br label %65

65:                                               ; preds = %63
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %39

68:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %61, %36
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8** @calloc(i32, i32) #1

declare dso_local i32 @setpath(i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
