; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_from_text.c_acl_from_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_from_text.c_acl_from_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@ACL_BRAND_UNKNOWN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i8* null, align 8
@errno = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @acl_from_text(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i8* @strdup(i8* %12)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %86

17:                                               ; preds = %1
  %18 = call i32* @acl_init(i32 3)
  store i32* %18, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @free(i8* %22)
  store i32* null, i32** %2, align 8
  br label %86

24:                                               ; preds = %17
  %25 = load i8*, i8** %5, align 8
  store i8* %25, i8** %7, align 8
  br label %26

26:                                               ; preds = %76, %24
  %27 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %27, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %77

29:                                               ; preds = %26
  %30 = load i8*, i8** %6, align 8
  store i8* %30, i8** %9, align 8
  %31 = call i8* @strsep(i8** %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %31, i8** %8, align 8
  br label %32

32:                                               ; preds = %75, %40, %29
  %33 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %33, i8** %10, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %76

35:                                               ; preds = %32
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @string_skip_whitespace(i8* %36)
  %38 = call i64 @strlen(i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %32

41:                                               ; preds = %35
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @_acl_brand(i32* %42)
  %44 = load i32, i32* @ACL_BRAND_UNKNOWN, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load i8*, i8** %10, align 8
  %48 = call i64 @_text_is_nfs4_entry(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @_acl_brand_as(i32* %51, i32 129)
  br label %56

53:                                               ; preds = %46
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @_acl_brand_as(i32* %54, i32 128)
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56, %41
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @_acl_brand(i32* %58)
  switch i32 %59, label %68 [
    i32 129, label %60
    i32 128, label %64
  ]

60:                                               ; preds = %57
  %61 = load i32*, i32** %4, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = call i32 @_nfs4_acl_entry_from_text(i32* %61, i8* %62)
  store i32 %63, i32* %11, align 4
  br label %71

64:                                               ; preds = %57
  %65 = load i32*, i32** %4, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @_posix1e_acl_entry_from_text(i32* %65, i8* %66)
  store i32 %67, i32* %11, align 4
  br label %71

68:                                               ; preds = %57
  %69 = load i8*, i8** @EINVAL, align 8
  %70 = ptrtoint i8* %69 to i32
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %68, %64, %60
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %81

75:                                               ; preds = %71
  br label %32

76:                                               ; preds = %32
  br label %26

77:                                               ; preds = %26
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 @free(i8* %78)
  %80 = load i32*, i32** %4, align 8
  store i32* %80, i32** %2, align 8
  br label %86

81:                                               ; preds = %74
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @acl_free(i32* %82)
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 @free(i8* %84)
  store i32* null, i32** %2, align 8
  br label %86

86:                                               ; preds = %81, %77, %21, %16
  %87 = load i32*, i32** %2, align 8
  ret i32* %87
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32* @acl_init(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @string_skip_whitespace(i8*) #1

declare dso_local i32 @_acl_brand(i32*) #1

declare dso_local i64 @_text_is_nfs4_entry(i8*) #1

declare dso_local i32 @_acl_brand_as(i32*, i32) #1

declare dso_local i32 @_nfs4_acl_entry_from_text(i32*, i8*) #1

declare dso_local i32 @_posix1e_acl_entry_from_text(i32*, i8*) #1

declare dso_local i32 @acl_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
