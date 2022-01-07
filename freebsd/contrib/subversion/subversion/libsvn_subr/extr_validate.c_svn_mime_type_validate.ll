; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_validate.c_svn_mime_type_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_validate.c_svn_mime_type_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"()<>@,;:\\\22/[]?=\00", align 1
@SVN_ERR_BAD_MIME_TYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"MIME type '%s' has empty media type\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"MIME type '%s' does not contain '/'\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"MIME type '%s' contains invalid character '%c' in media type\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"MIME type '%s' contains invalid character '0x%02x' in postfix\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_mime_type_validate(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @strcspn(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i64 %12, i64* %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strlen(i8* %13)
  store i64 %14, i64* %7, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @strchr(i8* %15, i8 signext 47)
  store i8* %16, i8** %8, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i32, i32* @SVN_ERR_BAD_MIME_TYPE, align 4
  %21 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i8*, i8** %4, align 8
  %23 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %20, i32* null, i32 %21, i8* %22)
  store i32* %23, i32** %3, align 8
  br label %127

24:                                               ; preds = %2
  %25 = load i8*, i8** %8, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** %8, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = icmp uge i8* %28, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27, %24
  %34 = load i32, i32* @SVN_ERR_BAD_MIME_TYPE, align 4
  %35 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i8*, i8** %4, align 8
  %37 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %34, i32* null, i32 %35, i8* %36)
  store i32* %37, i32** %3, align 8
  br label %127

38:                                               ; preds = %27
  store i64 0, i64* %9, align 8
  br label %39

39:                                               ; preds = %89, %38
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %92

43:                                               ; preds = %39
  %44 = load i8*, i8** %4, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i8*, i8** %8, align 8
  %48 = icmp ne i8* %46, %47
  br i1 %48, label %49, label %88

49:                                               ; preds = %43
  %50 = load i8*, i8** %4, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = call i32 @svn_ctype_isascii(i8 signext %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %49
  %57 = load i8*, i8** %4, align 8
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = call i64 @svn_ctype_iscntrl(i8 signext %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %78, label %63

63:                                               ; preds = %56
  %64 = load i8*, i8** %4, align 8
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = call i64 @svn_ctype_isspace(i8 signext %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %63
  %71 = load i8*, i8** %10, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = call i8* @strchr(i8* %71, i8 signext %75)
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %88

78:                                               ; preds = %70, %63, %56, %49
  %79 = load i32, i32* @SVN_ERR_BAD_MIME_TYPE, align 4
  %80 = call i32 @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  %81 = load i8*, i8** %4, align 8
  %82 = load i8*, i8** %4, align 8
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %79, i32* null, i32 %80, i8* %81, i32 %86)
  store i32* %87, i32** %3, align 8
  br label %127

88:                                               ; preds = %70, %43
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %9, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %9, align 8
  br label %39

92:                                               ; preds = %39
  store i64 0, i64* %9, align 8
  br label %93

93:                                               ; preds = %122, %92
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* %7, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %125

97:                                               ; preds = %93
  %98 = load i8*, i8** %4, align 8
  %99 = load i64, i64* %9, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = call i64 @svn_ctype_iscntrl(i8 signext %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %121

104:                                              ; preds = %97
  %105 = load i8*, i8** %4, align 8
  %106 = load i64, i64* %9, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 9
  br i1 %110, label %111, label %121

111:                                              ; preds = %104
  %112 = load i32, i32* @SVN_ERR_BAD_MIME_TYPE, align 4
  %113 = call i32 @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0))
  %114 = load i8*, i8** %4, align 8
  %115 = load i8*, i8** %4, align 8
  %116 = load i64, i64* %9, align 8
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %112, i32* null, i32 %113, i8* %114, i32 %119)
  store i32* %120, i32** %3, align 8
  br label %127

121:                                              ; preds = %104, %97
  br label %122

122:                                              ; preds = %121
  %123 = load i64, i64* %9, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %9, align 8
  br label %93

125:                                              ; preds = %93
  %126 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %126, i32** %3, align 8
  br label %127

127:                                              ; preds = %125, %111, %78, %33, %19
  %128 = load i32*, i32** %3, align 8
  ret i32* %128
}

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_ctype_isascii(i8 signext) #1

declare dso_local i64 @svn_ctype_iscntrl(i8 signext) #1

declare dso_local i64 @svn_ctype_isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
