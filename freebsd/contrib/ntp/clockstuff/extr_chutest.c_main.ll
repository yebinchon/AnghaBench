; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/clockstuff/extr_chutest.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/clockstuff/extr_chutest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timezone = type { i32 }

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"cdfpt\00", align 1
@EOF = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"%s: CHU line discipline not available on this machine\0A\00", align 1
@debug = common dso_local global i32 0, align 4
@dofilter = common dso_local global i32 0, align 4
@doprocess = common dso_local global i32 0, align 4
@showtimes = common dso_local global i32 0, align 4
@ntp_optind = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"usage: %s [-cdft] tty_device\0A\00", align 1
@lasttv = common dso_local global i32 0, align 4
@usechuldisc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i8**, i8*** %5, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** @progname, align 8
  br label %11

11:                                               ; preds = %33, %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @ntp_getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @EOF, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %30 [
    i32 99, label %19
    i32 100, label %24
    i32 102, label %27
    i32 112, label %28
    i32 116, label %29
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* @stderr, align 4
  %21 = load i8*, i8** @progname, align 8
  %22 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = call i32 @exit(i32 2) #3
  unreachable

24:                                               ; preds = %17
  %25 = load i32, i32* @debug, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @debug, align 4
  br label %33

27:                                               ; preds = %17
  store i32 1, i32* @dofilter, align 4
  br label %33

28:                                               ; preds = %17
  store i32 1, i32* @doprocess, align 4
  br label %29

29:                                               ; preds = %17, %28
  store i32 1, i32* @showtimes, align 4
  br label %33

30:                                               ; preds = %17
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %30, %29, %27, %24
  br label %11

34:                                               ; preds = %11
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @ntp_optind, align 4
  %39 = add nsw i32 %38, 1
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %37, %34
  %43 = load i32, i32* @stderr, align 4
  %44 = load i8*, i8** @progname, align 8
  %45 = call i32 @fprintf(i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  %46 = call i32 @exit(i32 2) #3
  unreachable

47:                                               ; preds = %37
  %48 = call i32 @gettimeofday(i32* @lasttv, %struct.timezone* null)
  %49 = load i8**, i8*** %5, align 8
  %50 = load i32, i32* @ntp_optind, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @openterm(i8* %53)
  store i32 %54, i32* %6, align 4
  %55 = call i32 (...) @init_chu()
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @process_raw(i32 %56)
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @ntp_getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @gettimeofday(i32*, %struct.timezone*) #1

declare dso_local i32 @openterm(i8*) #1

declare dso_local i32 @init_chu(...) #1

declare dso_local i32 @process_raw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
