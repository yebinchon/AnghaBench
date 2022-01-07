; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libbe/extr_be.c_be_root_concat.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libbe/extr_be.c_be_root_concat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@BE_ERR_INVALIDNAME = common dso_local global i32 0, align 4
@BE_MAXPATHLEN = common dso_local global i64 0, align 8
@BE_ERR_PATHLEN = common dso_local global i32 0, align 4
@BE_ERR_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_root_concat(%struct.TYPE_3__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %8, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32* @strrchr(i8* %16, i8 signext 47)
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %41

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @strstr(i8* %20, i8* %23)
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @BE_ERR_INVALIDNAME, align 4
  store i32 %28, i32* %4, align 4
  br label %60

29:                                               ; preds = %19
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @BE_MAXPATHLEN, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @BE_ERR_PATHLEN, align 4
  store i32 %34, i32* %4, align 4
  br label %60

35:                                               ; preds = %29
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* @BE_MAXPATHLEN, align 8
  %39 = call i32 @strlcpy(i8* %36, i8* %37, i64 %38)
  %40 = load i32, i32* @BE_ERR_SUCCESS, align 4
  store i32 %40, i32* %4, align 4
  br label %60

41:                                               ; preds = %3
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = add i64 %42, %43
  %45 = add i64 %44, 1
  %46 = load i64, i64* @BE_MAXPATHLEN, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* @BE_MAXPATHLEN, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @snprintf(i8* %49, i64 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %53, i8* %54)
  %56 = load i32, i32* @BE_ERR_SUCCESS, align 4
  store i32 %56, i32* %4, align 4
  br label %60

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* @BE_ERR_PATHLEN, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %58, %48, %35, %33, %27
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
