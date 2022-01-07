; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_somsolib.c_som_solib_sizeof_symbol_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_somsolib.c_som_solib_sizeof_symbol_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@gnutarget = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"\22%s\22: can't open to read symbols: %s.\00", align 1
@bfd_object = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"\22%s\22: can't read symbols: %s.\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"$DEBUG$\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"$PINFO$\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @som_solib_sizeof_symbol_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @som_solib_sizeof_symbol_table(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %6, align 4
  %8 = call i32 @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %9 = load i8*, i8** %2, align 8
  %10 = load i32, i32* @O_RDONLY, align 4
  %11 = load i32, i32* @O_BINARY, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @openp(i32 %8, i32 1, i8* %9, i32 %12, i32 0, i8** %5)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @perror_with_name(i8* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load i8*, i8** %5, align 8
  store i8* %20, i8** %2, align 8
  %21 = load i8*, i8** %2, align 8
  %22 = load i32, i32* @gnutarget, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32* @bfd_fdopenr(i8* %21, i32 %22, i32 %23)
  store i32* %24, i32** %3, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @close(i32 %28)
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @make_cleanup(i32 (i8*)* @xfree, i8* %30)
  %32 = load i8*, i8** %2, align 8
  %33 = call i32 (...) @bfd_get_error()
  %34 = call i8* @bfd_errmsg(i32 %33)
  %35 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %32, i8* %34)
  br label %36

36:                                               ; preds = %27, %19
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* @bfd_object, align 4
  %39 = call i32 @bfd_check_format(i32* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %36
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @bfd_close(i32* %42)
  %44 = load i8*, i8** %2, align 8
  %45 = call i32 @make_cleanup(i32 (i8*)* @xfree, i8* %44)
  %46 = load i8*, i8** %2, align 8
  %47 = call i32 (...) @bfd_get_error()
  %48 = call i8* @bfd_errmsg(i32 %47)
  %49 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %46, i8* %48)
  br label %50

50:                                               ; preds = %41, %36
  %51 = load i32*, i32** %3, align 8
  %52 = call i32* @bfd_get_section_by_name(i32* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32* %52, i32** %7, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load i32*, i32** %3, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = call i64 @bfd_section_size(i32* %56, i32* %57)
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %55, %50
  %63 = load i32*, i32** %3, align 8
  %64 = call i32* @bfd_get_section_by_name(i32* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32* %64, i32** %7, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i32*, i32** %3, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = call i64 @bfd_section_size(i32* %68, i32* %69)
  %71 = trunc i64 %70 to i32
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %67, %62
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @bfd_close(i32* %75)
  %77 = load i8*, i8** %2, align 8
  %78 = call i32 @xfree(i8* %77)
  %79 = load i32, i32* %6, align 4
  %80 = mul nsw i32 %79, 10
  ret i32 %80
}

declare dso_local i32 @openp(i32, i32, i8*, i32, i32, i8**) #1

declare dso_local i32 @getenv(i8*) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i32* @bfd_fdopenr(i8*, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @make_cleanup(i32 (i8*)*, i8*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local i8* @bfd_errmsg(i32) #1

declare dso_local i32 @bfd_get_error(...) #1

declare dso_local i32 @bfd_check_format(i32*, i32) #1

declare dso_local i32 @bfd_close(i32*) #1

declare dso_local i32* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local i64 @bfd_section_size(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
