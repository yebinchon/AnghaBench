; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_mapper.c__citrus_mapper_create_area.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_mapper.c__citrus_mapper_create_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_mapper_area = type { i32, i32* }
%struct.stat = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@cm_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@_CITRUS_MAPPER_DIR = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@CM_HASH_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_citrus_mapper_create_area(%struct._citrus_mapper_area** noalias %0, i8* noalias %1) #0 {
  %3 = alloca %struct._citrus_mapper_area**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._citrus_mapper_area*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct._citrus_mapper_area** %0, %struct._citrus_mapper_area*** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* @PATH_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = call i32 @WLOCK(i32* @cm_lock)
  %15 = load %struct._citrus_mapper_area**, %struct._citrus_mapper_area*** %3, align 8
  %16 = load %struct._citrus_mapper_area*, %struct._citrus_mapper_area** %15, align 8
  %17 = icmp ne %struct._citrus_mapper_area* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %55

19:                                               ; preds = %2
  %20 = load i32, i32* @PATH_MAX, align 4
  %21 = sext i32 %20 to i64
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** @_CITRUS_MAPPER_DIR, align 8
  %24 = call i32 @snprintf(i8* %13, i64 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %23)
  %25 = call i32 @stat(i8* %13, %struct.stat* %6)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %55

29:                                               ; preds = %19
  %30 = call %struct._citrus_mapper_area* @malloc(i32 16)
  store %struct._citrus_mapper_area* %30, %struct._citrus_mapper_area** %5, align 8
  %31 = load %struct._citrus_mapper_area*, %struct._citrus_mapper_area** %5, align 8
  %32 = icmp eq %struct._citrus_mapper_area* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @errno, align 4
  store i32 %34, i32* %9, align 4
  br label %55

35:                                               ; preds = %29
  %36 = load i8*, i8** %4, align 8
  %37 = call i32* @strdup(i8* %36)
  %38 = load %struct._citrus_mapper_area*, %struct._citrus_mapper_area** %5, align 8
  %39 = getelementptr inbounds %struct._citrus_mapper_area, %struct._citrus_mapper_area* %38, i32 0, i32 1
  store i32* %37, i32** %39, align 8
  %40 = load %struct._citrus_mapper_area*, %struct._citrus_mapper_area** %5, align 8
  %41 = getelementptr inbounds %struct._citrus_mapper_area, %struct._citrus_mapper_area* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load i32, i32* @errno, align 4
  store i32 %45, i32* %9, align 4
  %46 = load %struct._citrus_mapper_area*, %struct._citrus_mapper_area** %5, align 8
  %47 = call i32 @free(%struct._citrus_mapper_area* %46)
  br label %55

48:                                               ; preds = %35
  %49 = load %struct._citrus_mapper_area*, %struct._citrus_mapper_area** %5, align 8
  %50 = getelementptr inbounds %struct._citrus_mapper_area, %struct._citrus_mapper_area* %49, i32 0, i32 0
  %51 = load i32, i32* @CM_HASH_SIZE, align 4
  %52 = call i32 @_CITRUS_HASH_INIT(i32* %50, i32 %51)
  %53 = load %struct._citrus_mapper_area*, %struct._citrus_mapper_area** %5, align 8
  %54 = load %struct._citrus_mapper_area**, %struct._citrus_mapper_area*** %3, align 8
  store %struct._citrus_mapper_area* %53, %struct._citrus_mapper_area** %54, align 8
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %48, %44, %33, %28, %18
  %56 = call i32 @UNLOCK(i32* @cm_lock)
  %57 = load i32, i32* %9, align 4
  %58 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %58)
  ret i32 %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @WLOCK(i32*) #2

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local %struct._citrus_mapper_area* @malloc(i32) #2

declare dso_local i32* @strdup(i8*) #2

declare dso_local i32 @free(%struct._citrus_mapper_area*) #2

declare dso_local i32 @_CITRUS_HASH_INIT(i32*, i32) #2

declare dso_local i32 @UNLOCK(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
