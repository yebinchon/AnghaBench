; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_file_io.c_io_copy_attrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_file_io.c_io_copy_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@warn_fchown = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"%s: Cannot set the file owner: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: Cannot set the file group: %s\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"%s: Cannot set the file permissions: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @io_copy_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_copy_attrs(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %6 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @fchown(i32 %8, i32 %12, i32 -1)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load i64, i64* @warn_fchown, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 @strerror(i32 %23)
  %25 = call i32 @message_warning(i32 %19, i32 %22, i32 %24)
  br label %26

26:                                               ; preds = %18, %15, %1
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @fchown(i32 %29, i32 -1, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %26
  %37 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 @strerror(i32 %41)
  %43 = call i32 @message_warning(i32 %37, i32 %40, i32 %42)
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, 56
  %49 = ashr i32 %48, 3
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, 7
  %55 = and i32 %49, %54
  store i32 %55, i32* %3, align 4
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, 448
  %61 = load i32, i32* %3, align 4
  %62 = shl i32 %61, 3
  %63 = or i32 %60, %62
  %64 = load i32, i32* %3, align 4
  %65 = or i32 %63, %64
  store i32 %65, i32* %3, align 4
  br label %72

66:                                               ; preds = %26
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, 511
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %66, %36
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = call i64 @fchmod(i32 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @errno, align 4
  %85 = call i32 @strerror(i32 %84)
  %86 = call i32 @message_warning(i32 %80, i32 %83, i32 %85)
  br label %87

87:                                               ; preds = %79, %72
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  ret void
}

declare dso_local i64 @fchown(i32, i32, i32) #1

declare dso_local i32 @message_warning(i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @fchmod(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
