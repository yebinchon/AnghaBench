; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tabs.c_add_to_tab_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tabs.c_add_to_tab_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"add_to_tab_list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**, i8*)* @add_to_tab_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @add_to_tab_list(i8** %0, i8* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8**, i8*** %3, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @trimmed_tab_list(i8* %11)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %82

15:                                               ; preds = %2
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %82

20:                                               ; preds = %15
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = add i64 1, %22
  store i64 %23, i64* %8, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 44
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %36

29:                                               ; preds = %20
  %30 = load i8**, i8*** %3, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @comma_is_needed(i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %35

35:                                               ; preds = %34, %29
  br label %36

36:                                               ; preds = %35, %28
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %8, align 8
  %41 = load i8**, i8*** %3, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load i8**, i8*** %3, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @strlen(i8* %46)
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %8, align 8
  br label %50

50:                                               ; preds = %44, %36
  %51 = load i64, i64* %8, align 8
  %52 = call i8* @malloc(i64 %51)
  store i8* %52, i8** %5, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 @failed(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %50
  %58 = load i8*, i8** %5, align 8
  store i8 0, i8* %58, align 1
  %59 = load i8**, i8*** %3, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load i8*, i8** %5, align 8
  %64 = load i8**, i8*** %3, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @_nc_STRCPY(i8* %63, i8* %65, i64 %66)
  %68 = load i8**, i8*** %3, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @free(i8* %69)
  br label %71

71:                                               ; preds = %62, %57
  %72 = load i8*, i8** %5, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @_nc_STRCAT(i8* %72, i8* %73, i64 %74)
  %76 = load i8*, i8** %5, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @_nc_STRCAT(i8* %76, i8* %77, i64 %78)
  %80 = load i8*, i8** %5, align 8
  %81 = load i8**, i8*** %3, align 8
  store i8* %80, i8** %81, align 8
  br label %82

82:                                               ; preds = %71, %15, %2
  %83 = load i8*, i8** %5, align 8
  ret i8* %83
}

declare dso_local i8* @trimmed_tab_list(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @comma_is_needed(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @failed(i8*) #1

declare dso_local i32 @_nc_STRCPY(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @_nc_STRCAT(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
