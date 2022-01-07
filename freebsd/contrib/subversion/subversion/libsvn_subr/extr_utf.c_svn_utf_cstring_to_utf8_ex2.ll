; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf.c_svn_utf_cstring_to_utf8_ex2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf.c_svn_utf_cstring_to_utf8_ex2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_APR_UTF8_CHARSET = common dso_local global i32 0, align 4
@SVN_UTF_NTOU_XLATE_HANDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_utf_cstring_to_utf8_ex2(i8** %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* @SVN_APR_UTF8_CHARSET, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = call i8* @get_xlate_key(i32 %12, i8* %13, i32* %14)
  store i8* %15, i8** %11, align 8
  %16 = load i32, i32* @SVN_APR_UTF8_CHARSET, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @get_xlate_handle_node(i32** %9, i32 %16, i8* %17, i8* %18, i32* %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  %22 = load i8**, i8*** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32* @convert_cstring(i8** %22, i8* %23, i32* %24, i32* %25)
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* @SVN_UTF_NTOU_XLATE_HANDLE, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @put_xlate_handle_node(i32* %28, i32 %29, i32* %30)
  %32 = call i32 @svn_error_compose_create(i32* %27, i32 %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i8**, i8*** %5, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i32* @check_cstring_utf8(i8* %35, i32* %36)
  ret i32* %37
}

declare dso_local i8* @get_xlate_key(i32, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_xlate_handle_node(i32**, i32, i8*, i8*, i32*) #1

declare dso_local i32* @convert_cstring(i8**, i8*, i32*, i32*) #1

declare dso_local i32 @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @put_xlate_handle_node(i32*, i32, i32*) #1

declare dso_local i32* @check_cstring_utf8(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
