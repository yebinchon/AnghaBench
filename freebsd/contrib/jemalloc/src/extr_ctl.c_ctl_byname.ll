; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_ctl.c_ctl_byname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_ctl.c_ctl_byname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32*, i64*, i64, i8*, i64*, i8*, i64)* }

@CTL_MAX_DEPTH = common dso_local global i32 0, align 4
@ctl_initialized = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_byname(i32* %0, i8* %1, i8* %2, i64* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64* %3, i64** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %19 = load i32, i32* @CTL_MAX_DEPTH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %15, align 8
  %22 = alloca i32*, i64 %20, align 16
  store i64 %20, i64* %16, align 8
  %23 = load i32, i32* @CTL_MAX_DEPTH, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i64, i64 %24, align 16
  store i64 %24, i64* %17, align 8
  %26 = load i32, i32* @ctl_initialized, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %6
  %29 = load i32*, i32** %7, align 8
  %30 = call i64 @ctl_init(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @EAGAIN, align 4
  store i32 %33, i32* %13, align 4
  br label %71

34:                                               ; preds = %28, %6
  %35 = load i32, i32* @CTL_MAX_DEPTH, align 4
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %14, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @tsd_tsdn(i32* %37)
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @ctl_lookup(i32 %38, i8* %39, i32** %22, i64* %25, i64* %14)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %71

44:                                               ; preds = %34
  %45 = load i64, i64* %14, align 8
  %46 = sub i64 %45, 1
  %47 = getelementptr inbounds i32*, i32** %22, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = call %struct.TYPE_3__* @ctl_named_node(i32* %48)
  store %struct.TYPE_3__* %49, %struct.TYPE_3__** %18, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %51 = icmp ne %struct.TYPE_3__* %50, null
  br i1 %51, label %52, label %68

52:                                               ; preds = %44
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32 (i32*, i64*, i64, i8*, i64*, i8*, i64)*, i32 (i32*, i64*, i64, i8*, i64*, i8*, i64)** %54, align 8
  %56 = icmp ne i32 (i32*, i64*, i64, i8*, i64*, i8*, i64)* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32 (i32*, i64*, i64, i8*, i64*, i8*, i64)*, i32 (i32*, i64*, i64, i8*, i64*, i8*, i64)** %59, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = load i64, i64* %14, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = load i64*, i64** %10, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = load i64, i64* %12, align 8
  %67 = call i32 %60(i32* %61, i64* %25, i64 %62, i8* %63, i64* %64, i8* %65, i64 %66)
  store i32 %67, i32* %13, align 4
  br label %70

68:                                               ; preds = %52, %44
  %69 = load i32, i32* @ENOENT, align 4
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %68, %57
  br label %71

71:                                               ; preds = %70, %43, %32
  %72 = load i32, i32* %13, align 4
  %73 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %73)
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ctl_init(i32*) #2

declare dso_local i32 @ctl_lookup(i32, i8*, i32**, i64*, i64*) #2

declare dso_local i32 @tsd_tsdn(i32*) #2

declare dso_local %struct.TYPE_3__* @ctl_named_node(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
