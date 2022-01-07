; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_from_text_nfs4.c__nfs4_acl_entry_from_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_from_text_nfs4.c__nfs4_acl_entry_from_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACL_BRAND_NFS4 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"malformed ACL: unknown user or group name \22%s\22\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_nfs4_acl_entry_from_text(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = call i32 @acl_create_entry(i32* %4, i32* %8)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %126

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @_entry_brand(i32 %17)
  %19 = load i64, i64* @ACL_BRAND_NFS4, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i8*, i8** %5, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %120

26:                                               ; preds = %16
  %27 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i8* @string_skip_whitespace(i8* %28)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load i8*, i8** %5, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %126

38:                                               ; preds = %34, %26
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @parse_tag(i8* %39, i32 %40, i32* %7)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %121

45:                                               ; preds = %38
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load i8*, i8** %5, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %120

52:                                               ; preds = %48
  %53 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %53, i8** %9, align 8
  store i8* %53, i8** %10, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @parse_qualifier(i8* %54, i32 %55, i32* %7)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %121

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %45
  %62 = load i8*, i8** %5, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %120

65:                                               ; preds = %61
  %66 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %66, i8** %9, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @parse_access_mask(i8* %67, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %121

73:                                               ; preds = %65
  %74 = load i8*, i8** %5, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %120

77:                                               ; preds = %73
  %78 = load i8*, i8** %5, align 8
  %79 = call i64 @number_of_colons(i8* %78)
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %82, i8** %9, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @parse_flags(i8* %83, i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %121

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %77
  %91 = load i8*, i8** %5, align 8
  %92 = icmp eq i8* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %120

94:                                               ; preds = %90
  %95 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %95, i8** %9, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @parse_entry_type(i8* %96, i32 %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %121

102:                                              ; preds = %94
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %102
  %106 = load i8*, i8** %5, align 8
  %107 = icmp eq i8* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i8*, i8** %10, align 8
  %110 = call i32 @warnx(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %109)
  br label %120

111:                                              ; preds = %105
  %112 = load i8*, i8** %5, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @parse_appended_id(i8* %112, i32 %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %121

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118, %102
  store i32 0, i32* %3, align 4
  br label %126

120:                                              ; preds = %108, %93, %76, %64, %51, %25
  br label %121

121:                                              ; preds = %120, %117, %101, %88, %72, %59, %44
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @acl_delete_entry(i32 %122, i32 %123)
  %125 = load i32, i32* @EINVAL, align 4
  store i32 %125, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %126

126:                                              ; preds = %121, %119, %37, %14
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @acl_create_entry(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @_entry_brand(i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @string_skip_whitespace(i8*) #1

declare dso_local i32 @parse_tag(i8*, i32, i32*) #1

declare dso_local i32 @parse_qualifier(i8*, i32, i32*) #1

declare dso_local i32 @parse_access_mask(i8*, i32) #1

declare dso_local i64 @number_of_colons(i8*) #1

declare dso_local i32 @parse_flags(i8*, i32) #1

declare dso_local i32 @parse_entry_type(i8*, i32) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @parse_appended_id(i8*, i32) #1

declare dso_local i32 @acl_delete_entry(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
