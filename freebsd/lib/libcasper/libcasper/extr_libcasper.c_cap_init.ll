; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/libcasper/extr_libcasper.c_cap_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/libcasper/extr_libcasper.c_cap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"service\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"chanfd\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"chanflags\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @cap_service_open(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 -1, i32* %8, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @channel_nvlist_flags(i32* %11)
  %13 = call i32* @nvlist_create(i32 %12)
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @nvlist_add_string(i32* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32*, i32** %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @nvlist_add_string(i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  %19 = load i32*, i32** %4, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32* @cap_xfer_nvlist(i32* %19, i32* %20)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %59

25:                                               ; preds = %2
  %26 = load i32*, i32** %7, align 8
  %27 = call i64 @nvlist_get_number(i32* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @nvlist_destroy(i32* %32)
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* @errno, align 4
  store i32* null, i32** %3, align 8
  br label %59

35:                                               ; preds = %25
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @nvlist_take_descriptor(i32* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 %37, i32* %8, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @nvlist_take_number(i32* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp sge i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @nvlist_destroy(i32* %44)
  store i32* null, i32** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32* @cap_wrap(i32 %46, i32 %47)
  store i32* %48, i32** %6, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %35
  br label %54

52:                                               ; preds = %35
  %53 = load i32*, i32** %6, align 8
  store i32* %53, i32** %3, align 8
  br label %59

54:                                               ; preds = %51
  %55 = load i32, i32* @errno, align 4
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @close(i32 %56)
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* @errno, align 4
  store i32* null, i32** %3, align 8
  br label %59

59:                                               ; preds = %54, %52, %31, %24
  %60 = load i32*, i32** %3, align 8
  ret i32* %60
}

declare dso_local i32* @nvlist_create(i32) #1

declare dso_local i32 @channel_nvlist_flags(i32*) #1

declare dso_local i32 @nvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32* @cap_xfer_nvlist(i32*, i32*) #1

declare dso_local i64 @nvlist_get_number(i32*, i8*) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

declare dso_local i32 @nvlist_take_descriptor(i32*, i8*) #1

declare dso_local i32 @nvlist_take_number(i32*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @cap_wrap(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
