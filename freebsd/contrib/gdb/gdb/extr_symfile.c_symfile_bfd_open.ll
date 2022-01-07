; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_symfile_bfd_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_symfile_bfd_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@gnutarget = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"\22%s\22: can't open to read symbols: %s.\00", align 1
@bfd_object = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"\22%s\22: can't read symbols: %s.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @symfile_bfd_open(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i8* @tilde_expand(i8* %6)
  store i8* %7, i8** %2, align 8
  %8 = call i32 @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %9 = load i8*, i8** %2, align 8
  %10 = load i32, i32* @O_RDONLY, align 4
  %11 = load i32, i32* @O_BINARY, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @openp(i32 %8, i32 1, i8* %9, i32 %12, i32 0, i8** %5)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @make_cleanup(i32 (i8*)* @xfree, i8* %17)
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @perror_with_name(i8* %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @xfree(i8* %22)
  %24 = load i8*, i8** %5, align 8
  store i8* %24, i8** %2, align 8
  %25 = load i8*, i8** %2, align 8
  %26 = load i32, i32* @gnutarget, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32* @bfd_fdopenr(i8* %25, i32 %26, i32 %27)
  store i32* %28, i32** %3, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @close(i32 %32)
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 @make_cleanup(i32 (i8*)* @xfree, i8* %34)
  %36 = load i8*, i8** %2, align 8
  %37 = call i32 (...) @bfd_get_error()
  %38 = call i8* @bfd_errmsg(i32 %37)
  %39 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %36, i8* %38)
  br label %40

40:                                               ; preds = %31, %21
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @bfd_set_cacheable(i32* %41, i32 1)
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* @bfd_object, align 4
  %45 = call i32 @bfd_check_format(i32* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %40
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @bfd_close(i32* %48)
  %50 = load i8*, i8** %2, align 8
  %51 = call i32 @make_cleanup(i32 (i8*)* @xfree, i8* %50)
  %52 = load i8*, i8** %2, align 8
  %53 = call i32 (...) @bfd_get_error()
  %54 = call i8* @bfd_errmsg(i32 %53)
  %55 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %52, i8* %54)
  br label %56

56:                                               ; preds = %47, %40
  %57 = load i32*, i32** %3, align 8
  ret i32* %57
}

declare dso_local i8* @tilde_expand(i8*) #1

declare dso_local i32 @openp(i32, i32, i8*, i32, i32, i8**) #1

declare dso_local i32 @getenv(i8*) #1

declare dso_local i32 @make_cleanup(i32 (i8*)*, i8*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i32* @bfd_fdopenr(i8*, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local i8* @bfd_errmsg(i32) #1

declare dso_local i32 @bfd_get_error(...) #1

declare dso_local i32 @bfd_set_cacheable(i32*, i32) #1

declare dso_local i32 @bfd_check_format(i32*, i32) #1

declare dso_local i32 @bfd_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
