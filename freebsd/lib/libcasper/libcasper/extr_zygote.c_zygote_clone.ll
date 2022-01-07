; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/libcasper/extr_zygote.c_zygote_clone.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/libcasper/extr_zygote.c_zygote_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zygote_sock = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"funcidx\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"chanfd\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"procfd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zygote_clone(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* @zygote_sock, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %45

14:                                               ; preds = %3
  %15 = call i32* @nvlist_create(i32 0)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @nvlist_add_number(i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @zygote_sock, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = call i32* @nvlist_xfer(i32 %19, i32* %20, i32 0)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  store i32 -1, i32* %4, align 4
  br label %45

25:                                               ; preds = %14
  %26 = load i32*, i32** %8, align 8
  %27 = call i64 @nvlist_exists_number(i32* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i32*, i32** %8, align 8
  %31 = call i64 @nvlist_get_number(i32* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %9, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @nvlist_destroy(i32* %33)
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %45

36:                                               ; preds = %25
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @nvlist_take_descriptor(i32* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32*, i32** %6, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @nvlist_take_descriptor(i32* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @nvlist_destroy(i32* %43)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %36, %29, %24, %12
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32* @nvlist_create(i32) #1

declare dso_local i32 @nvlist_add_number(i32*, i8*, i32) #1

declare dso_local i32* @nvlist_xfer(i32, i32*, i32) #1

declare dso_local i64 @nvlist_exists_number(i32*, i8*) #1

declare dso_local i64 @nvlist_get_number(i32*, i8*) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

declare dso_local i32 @nvlist_take_descriptor(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
