; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_file.c_isc_file_splitpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_file.c_isc_file_splitpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@ISC_R_NOMEMORY = common dso_local global i32 0, align 4
@ISC_R_INVALIDFILE = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_file_splitpath(i32* %0, i8* %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @REQUIRE(i32 %15)
  %17 = load i8*, i8** %7, align 8
  %18 = call i8* @strrchr(i8* %17, i8 signext 47)
  store i8* %18, i8** %12, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp eq i8* %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load i8*, i8** %12, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %12, align 8
  store i8* %24, i8** %11, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i8* @isc_mem_strdup(i32* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %26, i8** %10, align 8
  br label %59

27:                                               ; preds = %4
  %28 = load i8*, i8** %12, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %54

30:                                               ; preds = %27
  %31 = load i8*, i8** %12, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %12, align 8
  store i8* %32, i8** %11, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = trunc i64 %38 to i32
  %40 = call i8* @isc_mem_allocate(i32* %33, i32 %39)
  store i8* %40, i8** %10, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %30
  %44 = load i8*, i8** %10, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = trunc i64 %50 to i32
  %52 = call i32 @strlcpy(i8* %44, i8* %45, i32 %51)
  br label %53

53:                                               ; preds = %43, %30
  br label %58

54:                                               ; preds = %27
  %55 = load i8*, i8** %7, align 8
  store i8* %55, i8** %11, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i8* @isc_mem_strdup(i32* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %57, i8** %10, align 8
  br label %58

58:                                               ; preds = %54, %53
  br label %59

59:                                               ; preds = %58, %22
  %60 = load i8*, i8** %10, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @ISC_R_NOMEMORY, align 4
  store i32 %63, i32* %5, align 4
  br label %80

64:                                               ; preds = %59
  %65 = load i8*, i8** %11, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i32*, i32** %6, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 @isc_mem_free(i32* %70, i8* %71)
  %73 = load i32, i32* @ISC_R_INVALIDFILE, align 4
  store i32 %73, i32* %5, align 4
  br label %80

74:                                               ; preds = %64
  %75 = load i8*, i8** %10, align 8
  %76 = load i8**, i8*** %8, align 8
  store i8* %75, i8** %76, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = load i8**, i8*** %9, align 8
  store i8* %77, i8** %78, align 8
  %79 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %74, %69, %62
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @isc_mem_strdup(i32*, i8*) #1

declare dso_local i8* @isc_mem_allocate(i32*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @isc_mem_free(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
