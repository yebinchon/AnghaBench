; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_file.c_isc_file_splitpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_file.c_isc_file_splitpath.c"
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
  %13 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i8* @strrchr(i8* %14, i8 signext 47)
  store i8* %15, i8** %12, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i8* @strrchr(i8* %16, i8 signext 92)
  store i8* %17, i8** %13, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load i8*, i8** %13, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i8*, i8** %13, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = icmp ugt i8* %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %23, %20, %4
  %28 = load i8*, i8** %12, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i8*, i8** %13, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30, %23
  %34 = load i8*, i8** %13, align 8
  store i8* %34, i8** %12, align 8
  br label %35

35:                                               ; preds = %33, %30, %27
  %36 = load i8*, i8** %12, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i8*, i8** %12, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %12, align 8
  store i8* %41, i8** %11, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i8* @isc_mem_strdup(i32* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %43, i8** %10, align 8
  br label %76

44:                                               ; preds = %35
  %45 = load i8*, i8** %12, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %71

47:                                               ; preds = %44
  %48 = load i8*, i8** %12, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %12, align 8
  store i8* %49, i8** %11, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  %57 = call i8* @isc_mem_allocate(i32* %50, i32 %56)
  store i8* %57, i8** %10, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %47
  %61 = load i8*, i8** %10, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = trunc i64 %67 to i32
  %69 = call i32 @strlcpy(i8* %61, i8* %62, i32 %68)
  br label %70

70:                                               ; preds = %60, %47
  br label %75

71:                                               ; preds = %44
  %72 = load i8*, i8** %7, align 8
  store i8* %72, i8** %11, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = call i8* @isc_mem_strdup(i32* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %74, i8** %10, align 8
  br label %75

75:                                               ; preds = %71, %70
  br label %76

76:                                               ; preds = %75, %39
  %77 = load i8*, i8** %10, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32, i32* @ISC_R_NOMEMORY, align 4
  store i32 %80, i32* %5, align 4
  br label %97

81:                                               ; preds = %76
  %82 = load i8*, i8** %11, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load i32*, i32** %6, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = call i32 @isc_mem_free(i32* %87, i8* %88)
  %90 = load i32, i32* @ISC_R_INVALIDFILE, align 4
  store i32 %90, i32* %5, align 4
  br label %97

91:                                               ; preds = %81
  %92 = load i8*, i8** %10, align 8
  %93 = load i8**, i8*** %8, align 8
  store i8* %92, i8** %93, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = load i8**, i8*** %9, align 8
  store i8* %94, i8** %95, align 8
  %96 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %91, %86, %79
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

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
