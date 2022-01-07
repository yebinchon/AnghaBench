; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_infocmp.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_infocmp.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@usage.tbl = internal global [33 x i8*] [i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [69 x i8] c"Usage: infocmp [options] [-A directory] [-B directory] [termname...]\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Options:\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"  -0    print single-row\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"  -1    print single-column\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"  -K    use termcap-names and BSD syntax\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"  -C    use termcap-names\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"  -F    compare terminfo-files\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"  -I    use terminfo-names\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"  -L    use long names\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"  -R subset (see manpage)\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"  -T    eliminate size limits (test)\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"  -U    eliminate post-processing of entries\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"  -D    print database locations\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"  -V    print version\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"  -c    list common capabilities\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"  -d    list different capabilities\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"  -e    format output for C initializer\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"  -E    format output as C tables\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"  -f    with -1, format complex strings\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"  -G    format %{number} to %'char'\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"  -g    format %'char' to %{number}\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"  -i    analyze initialization/reset\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"  -l    output terminfo names\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"  -n    list capabilities in neither\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"  -p    ignore padding specifiers\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"  -q    brief listing, removes headers\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"  -r    with -C, output in termcap form\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"  -r    with -F, resolve use-references\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"  -s [d|i|l|c] sort fields\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"  -u    produce source with 'use='\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"  -v number  (verbose)\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"  -w number  (width)\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [12 x i8] c"%-40.40s%s\0A\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 3, i64* %1, align 8
  %6 = call i64 @SIZEOF(i8** getelementptr inbounds ([33 x i8*], [33 x i8*]* @usage.tbl, i64 0, i64 0))
  store i64 %6, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = sub i64 %7, 3
  %9 = add i64 %8, 1
  %10 = udiv i64 %9, 2
  %11 = add i64 %10, 3
  store i64 %11, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %47, %0
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* %3, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %12
  %17 = load i64, i64* %4, align 8
  %18 = icmp ult i64 %17, 3
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i64, i64* %2, align 8
  br label %26

21:                                               ; preds = %16
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %22, %23
  %25 = sub i64 %24, 3
  br label %26

26:                                               ; preds = %21, %19
  %27 = phi i64 [ %20, %19 ], [ %25, %21 ]
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %2, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load i32, i32* @stderr, align 4
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds [33 x i8*], [33 x i8*]* @usage.tbl, i64 0, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds [33 x i8*], [33 x i8*]* @usage.tbl, i64 0, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i8* %35, i8* %38)
  br label %46

40:                                               ; preds = %26
  %41 = load i32, i32* @stderr, align 4
  %42 = load i64, i64* %4, align 8
  %43 = getelementptr inbounds [33 x i8*], [33 x i8*]* @usage.tbl, i64 0, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %40, %31
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %4, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %4, align 8
  br label %12

50:                                               ; preds = %12
  %51 = load i32, i32* @EXIT_FAILURE, align 4
  %52 = call i32 @ExitProgram(i32 %51)
  ret void
}

declare dso_local i64 @SIZEOF(i8**) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @ExitProgram(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
