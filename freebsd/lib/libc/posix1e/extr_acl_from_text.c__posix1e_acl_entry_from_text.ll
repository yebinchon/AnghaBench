; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_from_text.c__posix1e_acl_entry_from_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_from_text.c__posix1e_acl_entry_from_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACL_BRAND_POSIX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @_posix1e_acl_entry_from_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_posix1e_acl_entry_from_text(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @_acl_brand(i32 %13)
  %15 = load i64, i64* @ACL_BRAND_POSIX, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %105

24:                                               ; preds = %2
  %25 = load i8*, i8** %8, align 8
  %26 = call i8* @string_skip_whitespace(i8* %25)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %105

35:                                               ; preds = %31, %24
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @string_trim_trailing_whitespace(i8* %36)
  %38 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %105

43:                                               ; preds = %35
  %44 = load i8*, i8** %9, align 8
  %45 = call i8* @string_skip_whitespace(i8* %44)
  store i8* %45, i8** %9, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @string_trim_trailing_whitespace(i8* %46)
  %48 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %48, i8** %10, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %43
  %52 = load i8*, i8** %5, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %51, %43
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %105

56:                                               ; preds = %51
  %57 = load i8*, i8** %10, align 8
  %58 = call i8* @string_skip_whitespace(i8* %57)
  store i8* %58, i8** %10, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @string_trim_trailing_whitespace(i8* %59)
  %61 = load i8*, i8** %8, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @acl_string_to_tag(i8* %61, i8* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %105

68:                                               ; preds = %56
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @_posix1e_acl_string_to_perm(i8* %69, i32* %7)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @EINVAL, align 4
  store i32 %74, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %105

75:                                               ; preds = %68
  %76 = load i32, i32* %6, align 4
  switch i32 %76, label %93 [
    i32 128, label %77
    i32 132, label %77
    i32 131, label %77
    i32 130, label %77
    i32 129, label %85
    i32 133, label %85
  ]

77:                                               ; preds = %75, %75, %75, %75
  %78 = load i8*, i8** %9, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @EINVAL, align 4
  store i32 %83, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %105

84:                                               ; preds = %77
  store i32 0, i32* %11, align 4
  br label %95

85:                                               ; preds = %75, %75
  %86 = load i32, i32* %6, align 4
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 @_acl_name_to_id(i32 %86, i8* %87, i32* %11)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 -1, i32* %3, align 4
  br label %105

92:                                               ; preds = %85
  br label %95

93:                                               ; preds = %75
  %94 = load i32, i32* @EINVAL, align 4
  store i32 %94, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %105

95:                                               ; preds = %92, %84
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @_posix1e_acl_add_entry(i32 %96, i32 %97, i32 %98, i32 %99)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  store i32 -1, i32* %3, align 4
  br label %105

104:                                              ; preds = %95
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %103, %93, %91, %82, %73, %66, %54, %41, %34, %22
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @_acl_brand(i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @string_skip_whitespace(i8*) #1

declare dso_local i32 @string_trim_trailing_whitespace(i8*) #1

declare dso_local i32 @acl_string_to_tag(i8*, i8*) #1

declare dso_local i32 @_posix1e_acl_string_to_perm(i8*, i32*) #1

declare dso_local i32 @_acl_name_to_id(i32, i8*, i32*) #1

declare dso_local i32 @_posix1e_acl_add_entry(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
