; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/libcasper/extr_libcasper.c_cap_clone.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/libcasper/extr_libcasper.c_cap_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }

@CAP_CHANNEL_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"clone\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"sock\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @cap_clone(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = icmp ne %struct.TYPE_7__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CAP_CHANNEL_MAGIC, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = call i32 @channel_nvlist_flags(%struct.TYPE_7__* %19)
  %21 = call i32* @nvlist_create(i32 %20)
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @nvlist_add_string(i32* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32* @cap_xfer_nvlist(%struct.TYPE_7__* %24, i32* %25)
  store i32* %26, i32** %5, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %59

30:                                               ; preds = %1
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @nvlist_get_number(i32* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @nvlist_get_number(i32* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* @errno, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @nvlist_destroy(i32* %38)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %59

40:                                               ; preds = %30
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @nvlist_take_descriptor(i32* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 %42, i32* %6, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @nvlist_destroy(i32* %43)
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.TYPE_7__* @cap_wrap(i32 %45, i32 %48)
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %4, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = icmp eq %struct.TYPE_7__* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %40
  %53 = load i32, i32* @errno, align 4
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @close(i32 %54)
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* @errno, align 4
  br label %57

57:                                               ; preds = %52, %40
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %2, align 8
  br label %59

59:                                               ; preds = %57, %34, %29
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %60
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @nvlist_create(i32) #1

declare dso_local i32 @channel_nvlist_flags(%struct.TYPE_7__*) #1

declare dso_local i32 @nvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32* @cap_xfer_nvlist(%struct.TYPE_7__*, i32*) #1

declare dso_local i64 @nvlist_get_number(i32*, i8*) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

declare dso_local i32 @nvlist_take_descriptor(i32*, i8*) #1

declare dso_local %struct.TYPE_7__* @cap_wrap(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
