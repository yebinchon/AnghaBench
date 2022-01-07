; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_read_info_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_read_info_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_read_info_internal(i32* %0, i32* %1, i32* %2, i8** %3, i32* %4, i32* %5, i32* %6, i8** %7, i32* %8, i32** %9, i8** %10, i8** %11, i32* %12, i32* %13, i32** %14, i32* %15, i32* %16, i8** %17, i32* %18, i32* %19, i32* %20, i32* %21, i32* %22, i32* %23, i32* %24, i32* %25, i8* %26, i32* %27, i32* %28) #0 {
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i8**, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i8**, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32**, align 8
  %40 = alloca i8**, align 8
  %41 = alloca i8**, align 8
  %42 = alloca i32*, align 8
  %43 = alloca i32*, align 8
  %44 = alloca i32**, align 8
  %45 = alloca i32*, align 8
  %46 = alloca i32*, align 8
  %47 = alloca i8**, align 8
  %48 = alloca i32*, align 8
  %49 = alloca i32*, align 8
  %50 = alloca i32*, align 8
  %51 = alloca i32*, align 8
  %52 = alloca i32*, align 8
  %53 = alloca i32*, align 8
  %54 = alloca i32*, align 8
  %55 = alloca i32*, align 8
  %56 = alloca i8*, align 8
  %57 = alloca i32*, align 8
  %58 = alloca i32*, align 8
  store i32* %0, i32** %30, align 8
  store i32* %1, i32** %31, align 8
  store i32* %2, i32** %32, align 8
  store i8** %3, i8*** %33, align 8
  store i32* %4, i32** %34, align 8
  store i32* %5, i32** %35, align 8
  store i32* %6, i32** %36, align 8
  store i8** %7, i8*** %37, align 8
  store i32* %8, i32** %38, align 8
  store i32** %9, i32*** %39, align 8
  store i8** %10, i8*** %40, align 8
  store i8** %11, i8*** %41, align 8
  store i32* %12, i32** %42, align 8
  store i32* %13, i32** %43, align 8
  store i32** %14, i32*** %44, align 8
  store i32* %15, i32** %45, align 8
  store i32* %16, i32** %46, align 8
  store i8** %17, i8*** %47, align 8
  store i32* %18, i32** %48, align 8
  store i32* %19, i32** %49, align 8
  store i32* %20, i32** %50, align 8
  store i32* %21, i32** %51, align 8
  store i32* %22, i32** %52, align 8
  store i32* %23, i32** %53, align 8
  store i32* %24, i32** %54, align 8
  store i32* %25, i32** %55, align 8
  store i8* %26, i8** %56, align 8
  store i32* %27, i32** %57, align 8
  store i32* %28, i32** %58, align 8
  %59 = load i32*, i32** %30, align 8
  %60 = load i32*, i32** %31, align 8
  %61 = load i32*, i32** %32, align 8
  %62 = load i8**, i8*** %33, align 8
  %63 = load i32*, i32** %34, align 8
  %64 = load i32*, i32** %35, align 8
  %65 = load i32*, i32** %36, align 8
  %66 = load i8**, i8*** %37, align 8
  %67 = load i32*, i32** %38, align 8
  %68 = load i32**, i32*** %39, align 8
  %69 = load i8**, i8*** %40, align 8
  %70 = load i8**, i8*** %41, align 8
  %71 = load i32*, i32** %42, align 8
  %72 = load i32*, i32** %43, align 8
  %73 = load i32**, i32*** %44, align 8
  %74 = load i32*, i32** %45, align 8
  %75 = load i32*, i32** %46, align 8
  %76 = load i8**, i8*** %47, align 8
  %77 = load i32*, i32** %48, align 8
  %78 = load i32*, i32** %49, align 8
  %79 = load i32*, i32** %50, align 8
  %80 = load i32*, i32** %51, align 8
  %81 = load i32*, i32** %52, align 8
  %82 = load i32*, i32** %53, align 8
  %83 = load i32*, i32** %54, align 8
  %84 = load i32*, i32** %55, align 8
  %85 = load i8*, i8** %56, align 8
  %86 = load i32*, i32** %57, align 8
  %87 = load i32*, i32** %58, align 8
  %88 = call i32 @read_info(i32* %59, i32* %60, i32* %61, i8** %62, i32* %63, i32* %64, i32* %65, i8** %66, i32* %67, i32** %68, i8** %69, i8** %70, i32* %71, i32* %72, i32** %73, i32* %74, i32* %75, i8** %76, i32* %77, i32* %78, i32* %79, i32* %80, i32* %81, i32* %82, i32* %83, i32* %84, i8* %85, i32* %86, i32* %87)
  %89 = call i32* @svn_error_trace(i32 %88)
  ret i32* %89
}

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @read_info(i32*, i32*, i32*, i8**, i32*, i32*, i32*, i8**, i32*, i32**, i8**, i8**, i32*, i32*, i32**, i32*, i32*, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
