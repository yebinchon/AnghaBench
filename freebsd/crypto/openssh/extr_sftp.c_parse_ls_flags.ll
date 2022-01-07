; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_parse_ls_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_parse_ls_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optreset = external dso_local global i32, align 4
@optind = external dso_local global i32, align 4
@opterr = external dso_local global i32, align 4
@LS_NAME_SORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"1Safhlnrt\00", align 1
@VIEW_FLAGS = common dso_local global i32 0, align 4
@LS_SHORT_VIEW = common dso_local global i32 0, align 4
@SORT_FLAGS = common dso_local global i32 0, align 4
@LS_SIZE_SORT = common dso_local global i32 0, align 4
@LS_SHOW_ALL = common dso_local global i32 0, align 4
@LS_SI_UNITS = common dso_local global i32 0, align 4
@LS_LONG_VIEW = common dso_local global i32 0, align 4
@LS_NUMERIC_VIEW = common dso_local global i32 0, align 4
@LS_REVERSE_SORT = common dso_local global i32 0, align 4
@LS_TIME_SORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"ls: Invalid flag -%c\00", align 1
@optopt = external dso_local global i32, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32, i32*)* @parse_ls_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ls_flags(i8** %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 1, i32* @optreset, align 4
  store i32 1, i32* @optind, align 4
  store i32 0, i32* @opterr, align 4
  %9 = load i32, i32* @LS_NAME_SORT, align 4
  %10 = load i32*, i32** %7, align 8
  store i32 %9, i32* %10, align 4
  br label %11

11:                                               ; preds = %94, %3
  %12 = load i32, i32* %6, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %8, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %95

16:                                               ; preds = %11
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %91 [
    i32 49, label %18
    i32 83, label %28
    i32 97, label %38
    i32 102, label %43
    i32 104, label %49
    i32 108, label %54
    i32 110, label %64
    i32 114, label %76
    i32 116, label %81
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* @VIEW_FLAGS, align 4
  %20 = xor i32 %19, -1
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %20
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @LS_SHORT_VIEW, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %24
  store i32 %27, i32* %25, align 4
  br label %94

28:                                               ; preds = %16
  %29 = load i32, i32* @SORT_FLAGS, align 4
  %30 = xor i32 %29, -1
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %30
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* @LS_SIZE_SORT, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 4
  br label %94

38:                                               ; preds = %16
  %39 = load i32, i32* @LS_SHOW_ALL, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %39
  store i32 %42, i32* %40, align 4
  br label %94

43:                                               ; preds = %16
  %44 = load i32, i32* @SORT_FLAGS, align 4
  %45 = xor i32 %44, -1
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %45
  store i32 %48, i32* %46, align 4
  br label %94

49:                                               ; preds = %16
  %50 = load i32, i32* @LS_SI_UNITS, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 4
  br label %94

54:                                               ; preds = %16
  %55 = load i32, i32* @LS_SHORT_VIEW, align 4
  %56 = xor i32 %55, -1
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %56
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* @LS_LONG_VIEW, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 4
  br label %94

64:                                               ; preds = %16
  %65 = load i32, i32* @LS_SHORT_VIEW, align 4
  %66 = xor i32 %65, -1
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %66
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* @LS_NUMERIC_VIEW, align 4
  %71 = load i32, i32* @LS_LONG_VIEW, align 4
  %72 = or i32 %70, %71
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %72
  store i32 %75, i32* %73, align 4
  br label %94

76:                                               ; preds = %16
  %77 = load i32, i32* @LS_REVERSE_SORT, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %77
  store i32 %80, i32* %78, align 4
  br label %94

81:                                               ; preds = %16
  %82 = load i32, i32* @SORT_FLAGS, align 4
  %83 = xor i32 %82, -1
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, %83
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* @LS_TIME_SORT, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %87
  store i32 %90, i32* %88, align 4
  br label %94

91:                                               ; preds = %16
  %92 = load i32, i32* @optopt, align 4
  %93 = call i32 @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  store i32 -1, i32* %4, align 4
  br label %97

94:                                               ; preds = %81, %76, %64, %54, %49, %43, %38, %28, %18
  br label %11

95:                                               ; preds = %11
  %96 = load i32, i32* @optind, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %95, %91
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
