; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_dir.c_isc_dir_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_dir.c_isc_dir_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.dirent = type { i32 }

@ISC_R_NOMORE = common dso_local global i32 0, align 4
@ISC_R_UNEXPECTED = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_dir_read(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.dirent*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = call i64 @VALID_DIR(%struct.TYPE_6__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br label %14

14:                                               ; preds = %9, %1
  %15 = phi i1 [ false, %1 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @REQUIRE(i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call %struct.dirent* @readdir(i32* %20)
  store %struct.dirent* %21, %struct.dirent** %4, align 8
  %22 = load %struct.dirent*, %struct.dirent** %4, align 8
  %23 = icmp eq %struct.dirent* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* @ISC_R_NOMORE, align 4
  store i32 %25, i32* %2, align 4
  br label %55

26:                                               ; preds = %14
  %27 = load %struct.dirent*, %struct.dirent** %4, align 8
  %28 = getelementptr inbounds %struct.dirent, %struct.dirent* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strlen(i32 %29)
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp ult i64 4, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @ISC_R_UNEXPECTED, align 4
  store i32 %36, i32* %2, align 4
  br label %55

37:                                               ; preds = %26
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dirent*, %struct.dirent** %4, align 8
  %43 = getelementptr inbounds %struct.dirent, %struct.dirent* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @strlcpy(i32 %41, i32 %44, i64 %45)
  %47 = load %struct.dirent*, %struct.dirent** %4, align 8
  %48 = getelementptr inbounds %struct.dirent, %struct.dirent* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @strlen(i32 %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %37, %35, %24
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i64 @VALID_DIR(%struct.TYPE_6__*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strlcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
