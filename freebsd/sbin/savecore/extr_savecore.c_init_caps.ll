; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/savecore/extr_savecore.c_init_caps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/savecore/extr_savecore.c_init_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cap_init(): %m\00", align 1
@CAP_PREAD = common dso_local global i32 0, align 4
@CAP_WRITE = common dso_local global i32 0, align 4
@CAP_IOCTL = common dso_local global i32 0, align 4
@checkfor = common dso_local global i64 0, align 8
@keep = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@FA_OPEN = common dso_local global i32 0, align 4
@capfa = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"fileargs_init(): %m\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"caph_enter_casper(): %m\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"system.syslog\00", align 1
@capsyslog = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"cap_service_open(system.syslog): %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @init_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_caps(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %7 = call i32* (...) @cap_init()
  store i32* %7, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @LOG_ERR, align 4
  %12 = call i32 @logmsg(i32 %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @exit(i32 1) #3
  unreachable

14:                                               ; preds = %2
  %15 = load i32, i32* @CAP_PREAD, align 4
  %16 = load i32, i32* @CAP_WRITE, align 4
  %17 = load i32, i32* @CAP_IOCTL, align 4
  %18 = call i32 @cap_rights_init(i32* %5, i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = load i8**, i8*** %4, align 8
  %21 = load i64, i64* @checkfor, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = load i64, i64* @keep, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %14
  %27 = load i32, i32* @O_RDONLY, align 4
  br label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @O_RDWR, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = load i32, i32* @FA_OPEN, align 4
  %33 = call i32* @fileargs_init(i32 %19, i8** %20, i32 %31, i32 0, i32* %5, i32 %32)
  store i32* %33, i32** @capfa, align 8
  %34 = load i32*, i32** @capfa, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* @LOG_ERR, align 4
  %38 = call i32 @logmsg(i32 %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 @exit(i32 1) #3
  unreachable

40:                                               ; preds = %30
  %41 = call i32 (...) @caph_cache_catpages()
  %42 = call i32 (...) @caph_cache_tzdata()
  %43 = call i64 (...) @caph_enter_casper()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @LOG_ERR, align 4
  %47 = call i32 @logmsg(i32 %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %48 = call i32 @exit(i32 1) #3
  unreachable

49:                                               ; preds = %40
  %50 = load i32*, i32** %6, align 8
  %51 = call i32* @cap_service_open(i32* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32* %51, i32** @capsyslog, align 8
  %52 = load i32*, i32** @capsyslog, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @LOG_ERR, align 4
  %56 = call i32 @logmsg(i32 %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %57 = call i32 @exit(i32 1) #3
  unreachable

58:                                               ; preds = %49
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @cap_close(i32* %59)
  ret void
}

declare dso_local i32* @cap_init(...) #1

declare dso_local i32 @logmsg(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @cap_rights_init(i32*, i32, i32, i32) #1

declare dso_local i32* @fileargs_init(i32, i8**, i32, i32, i32*, i32) #1

declare dso_local i32 @caph_cache_catpages(...) #1

declare dso_local i32 @caph_cache_tzdata(...) #1

declare dso_local i64 @caph_enter_casper(...) #1

declare dso_local i32* @cap_service_open(i32*, i8*) #1

declare dso_local i32 @cap_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
