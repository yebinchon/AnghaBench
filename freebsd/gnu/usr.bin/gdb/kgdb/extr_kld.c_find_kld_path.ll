; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_kld.c_find_kld_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_kld.c_find_kld_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exec_bfd = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@module_path_addr = common dso_local global i64 0, align 8
@PATH_MAX = common dso_local global i32 0, align 4
@xfree = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c";\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @find_kld_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_kld_path(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* @exec_bfd, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %3
  %16 = load i64, i64* @exec_bfd, align 8
  %17 = call i32 @bfd_get_filename(i64 %16)
  %18 = call i8* @dirname(i32 %17)
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @snprintf(i8* %22, i64 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %25)
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @check_kld_path(i8* %27, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 1, i32* %4, align 4
  br label %66

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32, %15
  br label %34

34:                                               ; preds = %33, %3
  %35 = load i64, i64* @module_path_addr, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %34
  %38 = load i64, i64* @module_path_addr, align 8
  %39 = load i32, i32* @PATH_MAX, align 4
  %40 = call i32 @target_read_string(i64 %38, i8** %8, i32 %39, i32* %12)
  %41 = load i32, i32* %12, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %37
  %44 = load i32, i32* @xfree, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @make_cleanup(i32 %44, i8* %45)
  %47 = load i8*, i8** %8, align 8
  store i8* %47, i8** %11, align 8
  br label %48

48:                                               ; preds = %62, %43
  %49 = call i8* @strsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %49, i8** %10, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load i8*, i8** %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @snprintf(i8* %52, i64 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %54, i8* %55)
  %57 = load i8*, i8** %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i64 @check_kld_path(i8* %57, i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  store i32 1, i32* %4, align 4
  br label %66

62:                                               ; preds = %51
  br label %48

63:                                               ; preds = %48
  br label %64

64:                                               ; preds = %63, %37
  br label %65

65:                                               ; preds = %64, %34
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %61, %31
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i8* @dirname(i32) #1

declare dso_local i32 @bfd_get_filename(i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*) #1

declare dso_local i64 @check_kld_path(i8*, i64) #1

declare dso_local i32 @target_read_string(i64, i8**, i32, i32*) #1

declare dso_local i32 @make_cleanup(i32, i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
