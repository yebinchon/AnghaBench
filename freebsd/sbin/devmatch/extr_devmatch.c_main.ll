; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/devmatch/extr_devmatch.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/devmatch/extr_devmatch.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"adh:p:uv\00", align 1
@longopts = common dso_local global i32 0, align 4
@all_flag = common dso_local global i32 0, align 4
@dump_flag = common dso_local global i64 0, align 8
@optarg = common dso_local global i8* null, align 8
@linker_hints = common dso_local global i8* null, align 8
@nomatch_str = common dso_local global i32* null, align 8
@unbound_flag = common dso_local global i32 0, align 4
@verbose_flag = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"devinfo_init\00", align 1
@DEVINFO_ROOT_DEVICE = common dso_local global i32 0, align 4
@root = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"can't find root device\00", align 1
@find_unmatched = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %7

7:                                                ; preds = %34, %2
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = load i32, i32* @longopts, align 4
  %11 = call i32 @getopt_long(i32 %8, i8** %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %10, i32* null)
  store i32 %11, i32* %6, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %35

13:                                               ; preds = %7
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %32 [
    i32 97, label %15
    i32 100, label %18
    i32 104, label %21
    i32 112, label %23
    i32 117, label %26
    i32 118, label %29
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* @all_flag, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @all_flag, align 4
  br label %34

18:                                               ; preds = %13
  %19 = load i64, i64* @dump_flag, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* @dump_flag, align 8
  br label %34

21:                                               ; preds = %13
  %22 = load i8*, i8** @optarg, align 8
  store i8* %22, i8** @linker_hints, align 8
  br label %34

23:                                               ; preds = %13
  %24 = load i8*, i8** @optarg, align 8
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** @nomatch_str, align 8
  br label %34

26:                                               ; preds = %13
  %27 = load i32, i32* @unbound_flag, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @unbound_flag, align 4
  br label %34

29:                                               ; preds = %13
  %30 = load i32, i32* @verbose_flag, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @verbose_flag, align 4
  br label %34

32:                                               ; preds = %13
  %33 = call i32 (...) @usage()
  br label %34

34:                                               ; preds = %32, %29, %26, %23, %21, %18, %15
  br label %7

35:                                               ; preds = %7
  %36 = load i64, i64* @optind, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %4, align 4
  %41 = load i64, i64* @optind, align 8
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 %41
  store i8** %43, i8*** %5, align 8
  %44 = load i32, i32* %4, align 4
  %45 = icmp sge i32 %44, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = call i32 (...) @usage()
  br label %48

48:                                               ; preds = %46, %35
  %49 = call i32 (...) @read_linker_hints()
  %50 = load i64, i64* @dump_flag, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = call i32 @search_hints(i32* null, i32* null, i32* null)
  %54 = call i32 @exit(i32 0) #3
  unreachable

55:                                               ; preds = %48
  %56 = call i64 (...) @devinfo_init()
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %55
  %61 = load i32, i32* @DEVINFO_ROOT_DEVICE, align 4
  %62 = call i32* @devinfo_handle_to_device(i32 %61)
  store i32* %62, i32** @root, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call i32 @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %60
  %67 = load i32*, i32** @nomatch_str, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32*, i32** @nomatch_str, align 8
  %71 = call i32 @find_nomatch(i32* %70)
  br label %76

72:                                               ; preds = %66
  %73 = load i32*, i32** @root, align 8
  %74 = load i32, i32* @find_unmatched, align 4
  %75 = call i32 @devinfo_foreach_device_child(i32* %73, i32 %74, i8* null)
  br label %76

76:                                               ; preds = %72, %69
  %77 = call i32 (...) @devinfo_free()
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @read_linker_hints(...) #1

declare dso_local i32 @search_hints(i32*, i32*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @devinfo_init(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32* @devinfo_handle_to_device(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @find_nomatch(i32*) #1

declare dso_local i32 @devinfo_foreach_device_child(i32*, i32, i8*) #1

declare dso_local i32 @devinfo_free(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
