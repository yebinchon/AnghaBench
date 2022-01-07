; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_utils.c_xfullpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_utils.c_xfullpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SLASH_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xfullpath(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i8* @lbasename(i8* %8)
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = icmp eq i8* %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call i8* @xstrdup(i8* %14)
  store i8* %15, i8** %2, align 8
  br label %66

16:                                               ; preds = %1
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = ptrtoint i8* %17 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  %22 = add nsw i64 %21, 2
  %23 = call i8* @alloca(i64 %22)
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  %32 = call i32 @strncpy(i8* %24, i8* %25, i32 %31)
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = getelementptr inbounds i8, i8* %33, i64 %38
  store i8 0, i8* %39, align 1
  %40 = load i8*, i8** %5, align 8
  %41 = call i8* @gdb_realpath(i8* %40)
  store i8* %41, i8** %6, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %42, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = call i64 @IS_DIR_SEPARATOR(i8 signext %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %16
  %52 = load i8*, i8** %6, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = call i8* (i8*, i8*, i8*, ...) @concat(i8* %52, i8* %53, i8* null)
  store i8* %54, i8** %7, align 8
  br label %62

55:                                               ; preds = %16
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* @SLASH_STRING, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = load i8*, i8** %4, align 8
  %61 = call i8* (i8*, i8*, i8*, ...) @concat(i8* %56, i8* %59, i8* %60, i8* null)
  store i8* %61, i8** %7, align 8
  br label %62

62:                                               ; preds = %55, %51
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @xfree(i8* %63)
  %65 = load i8*, i8** %7, align 8
  store i8* %65, i8** %2, align 8
  br label %66

66:                                               ; preds = %62, %13
  %67 = load i8*, i8** %2, align 8
  ret i8* %67
}

declare dso_local i8* @lbasename(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @gdb_realpath(i8*) #1

declare dso_local i64 @IS_DIR_SEPARATOR(i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @concat(i8*, i8*, i8*, ...) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
