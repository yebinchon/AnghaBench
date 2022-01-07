; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_adfile.c_FlSplitInputPathname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_adfile.c_FlSplitInputPathname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AE_OK = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FlSplitInputPathname(i8* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = load i8**, i8*** %6, align 8
  %12 = icmp ne i8** %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i8**, i8*** %6, align 8
  store i8* null, i8** %14, align 8
  br label %15

15:                                               ; preds = %13, %3
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @AE_OK, align 4
  store i32 %19, i32* %4, align 4
  br label %71

20:                                               ; preds = %15
  %21 = load i8*, i8** %5, align 8
  %22 = call i8* @FlStrdup(i8* %21)
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %26, i32* %4, align 4
  br label %71

27:                                               ; preds = %20
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @UtConvertBackslashes(i8* %28)
  %30 = load i8*, i8** %9, align 8
  %31 = call i8* @strrchr(i8* %30, i8 signext 47)
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i8*, i8** %9, align 8
  %36 = call i8* @strrchr(i8* %35, i8 signext 58)
  store i8* %36, i8** %8, align 8
  br label %37

37:                                               ; preds = %34, %27
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = load i8*, i8** %9, align 8
  %42 = call i8* @FlStrdup(i8* %41)
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  store i8 0, i8* %44, align 1
  br label %51

45:                                               ; preds = %37
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = call i8* @FlStrdup(i8* %47)
  store i8* %48, i8** %10, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  store i8 0, i8* %50, align 1
  br label %51

51:                                               ; preds = %45, %40
  %52 = load i8*, i8** %10, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %55, i32* %4, align 4
  br label %71

56:                                               ; preds = %51
  %57 = load i8**, i8*** %6, align 8
  %58 = icmp ne i8** %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i8*, i8** %9, align 8
  %61 = load i8**, i8*** %6, align 8
  store i8* %60, i8** %61, align 8
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i8**, i8*** %7, align 8
  %64 = icmp ne i8** %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i8*, i8** %10, align 8
  %67 = load i8**, i8*** %7, align 8
  store i8* %66, i8** %67, align 8
  %68 = load i32, i32* @AE_OK, align 4
  store i32 %68, i32* %4, align 4
  br label %71

69:                                               ; preds = %62
  %70 = load i32, i32* @AE_OK, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %65, %54, %25, %18
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i8* @FlStrdup(i8*) #1

declare dso_local i32 @UtConvertBackslashes(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
