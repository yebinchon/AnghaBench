; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditfilterd/extr_auditfilterd.c_mainloop_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditfilterd/extr_auditfilterd.c_mainloop_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }

@reread_config = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"rereading configuration\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@quit = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"quitting\00", align 1
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"clock_gettime\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32*)* @mainloop_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mainloop_file(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.timespec, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  br label %11

11:                                               ; preds = %3, %49, %56
  %12 = load i64, i64* @reread_config, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %11
  store i64 0, i64* @reread_config, align 8
  %15 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %16 = load i8*, i8** %4, align 8
  %17 = call i32* @fopen(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %20, %14
  %24 = load i8*, i8** %4, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @auditfilterd_conf(i8* %24, i32* %25)
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @fclose(i32* %27)
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @fclose(i32* %29)
  %31 = load i8*, i8** %5, align 8
  %32 = call i32* @fopen(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %35, %23
  br label %39

39:                                               ; preds = %38, %11
  %40 = load i64, i64* @quit, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 @warnx(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %65

44:                                               ; preds = %39
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @au_read_rec(i32* %45, i32** %9)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %11

50:                                               ; preds = %44
  %51 = load i32, i32* @CLOCK_REALTIME, align 4
  %52 = call i64 @clock_gettime(i32 %51, %struct.timespec* %7)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @present_rawrecord(%struct.timespec* %7, i32* %57, i32 %58)
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @present_tokens(%struct.timespec* %7, i32* %60, i32 %61)
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @free(i32* %63)
  br label %11

65:                                               ; preds = %42
  ret void
}

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @auditfilterd_conf(i8*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @au_read_rec(i32*, i32**) #1

declare dso_local i64 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @present_rawrecord(%struct.timespec*, i32*, i32) #1

declare dso_local i32 @present_tokens(%struct.timespec*, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
