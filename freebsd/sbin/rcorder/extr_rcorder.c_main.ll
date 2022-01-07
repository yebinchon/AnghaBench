; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/rcorder/extr_rcorder.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/rcorder/extr_rcorder.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"dk:s:\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"debugging not compiled in, -d ignored\00", align 1
@keep_list = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@skip_list = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@file_count = common dso_local global i32 0, align 4
@file_list = common dso_local global i8** null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"parse_args\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"initialize\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"crunch_all_files\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"generate_ordering\0A\00", align 1
@exit_code = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4

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

7:                                                ; preds = %23, %2
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 @getopt(i32 %8, i8** %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %6, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %22 [
    i32 100, label %14
    i32 107, label %16
    i32 115, label %19
  ]

14:                                               ; preds = %12
  %15 = call i32 @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %23

16:                                               ; preds = %12
  %17 = load i32, i32* @optarg, align 4
  %18 = call i32 @strnode_add(i32* @keep_list, i32 %17, i32 0)
  br label %23

19:                                               ; preds = %12
  %20 = load i32, i32* @optarg, align 4
  %21 = call i32 @strnode_add(i32* @skip_list, i32 %20, i32 0)
  br label %23

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22, %19, %16, %14
  br label %7

24:                                               ; preds = %7
  %25 = load i64, i64* @optind, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = sub nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %4, align 4
  %30 = load i64, i64* @optind, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 %30
  store i8** %32, i8*** %5, align 8
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* @file_count, align 4
  %34 = load i8**, i8*** %5, align 8
  store i8** %34, i8*** @file_list, align 8
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 @DPRINTF(i32 ptrtoint ([12 x i8]* @.str.2 to i32))
  %37 = call i32 (...) @initialize()
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 @DPRINTF(i32 ptrtoint ([12 x i8]* @.str.3 to i32))
  %40 = call i32 (...) @crunch_all_files()
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 @DPRINTF(i32 ptrtoint ([18 x i8]* @.str.4 to i32))
  %43 = call i32 (...) @generate_ordering()
  %44 = load i32, i32* @stderr, align 4
  %45 = call i32 @DPRINTF(i32 ptrtoint ([19 x i8]* @.str.5 to i32))
  %46 = load i32, i32* @exit_code, align 4
  %47 = call i32 @exit(i32 %46) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @strnode_add(i32*, i32, i32) #1

declare dso_local i32 @DPRINTF(i32) #1

declare dso_local i32 @initialize(...) #1

declare dso_local i32 @crunch_all_files(...) #1

declare dso_local i32 @generate_ordering(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
