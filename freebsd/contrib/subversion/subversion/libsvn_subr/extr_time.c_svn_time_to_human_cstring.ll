; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_time.c_svn_time_to_human_cstring.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_time.c_svn_time_to_human_cstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i64, i64 }

@SVN_TIME__MAX_LENGTH = common dso_local global i32 0, align 4
@HUMAN_TIMESTAMP_FORMAT = common dso_local global i32 0, align 4
@HUMAN_TIMESTAMP_FORMAT_SUFFIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @svn_time_to_human_cstring(i32 %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %17 = load i32, i32* @SVN_TIME__MAX_LENGTH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @apr_time_exp_lt(%struct.TYPE_4__* %6, i32 %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  store i32 1, i32* %14, align 4
  br label %97

26:                                               ; preds = %2
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* @SVN_TIME__MAX_LENGTH, align 4
  %29 = call i8* @apr_palloc(i32* %27, i32 %28)
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* @SVN_TIME__MAX_LENGTH, align 4
  %32 = load i32, i32* @HUMAN_TIMESTAMP_FORMAT, align 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1900
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sdiv i32 %48, 3600
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @abs(i32 %51) #4
  %53 = sdiv i32 %52, 60
  %54 = srem i32 %53, 60
  %55 = call i32 @apr_snprintf(i8* %30, i32 %31, i32 %32, i64 %35, i64 %38, i32 %40, i32 %42, i32 %44, i32 %46, i32 %49, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @SVN_TIME__MAX_LENGTH, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %26
  %60 = load i8*, i8** %10, align 8
  store i8* %60, i8** %3, align 8
  store i32 1, i32* %14, align 4
  br label %97

61:                                               ; preds = %26
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  store i8* %65, i8** %11, align 8
  %66 = load i32, i32* @SVN_TIME__MAX_LENGTH, align 4
  %67 = load i32, i32* %7, align 4
  %68 = sub nsw i32 %66, %67
  %69 = load i32, i32* @HUMAN_TIMESTAMP_FORMAT_SUFFIX, align 4
  %70 = call i64 @apr_strftime(i8* %20, i32* %8, i32 %68, i32 %69, %struct.TYPE_4__* %6)
  store i64 %70, i64* %9, align 8
  %71 = load i64, i64* %9, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %61
  %74 = load i32, i32* %8, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73, %61
  %77 = load i8*, i8** %11, align 8
  store i8 0, i8* %77, align 1
  br label %95

78:                                               ; preds = %73
  %79 = load i32*, i32** %5, align 8
  %80 = call i32* @svn_utf_cstring_to_utf8(i8** %15, i8* %20, i32* %79)
  store i32* %80, i32** %16, align 8
  %81 = load i32*, i32** %16, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i8*, i8** %11, align 8
  store i8 0, i8* %84, align 1
  %85 = load i32*, i32** %16, align 8
  %86 = call i32 @svn_error_clear(i32* %85)
  br label %94

87:                                               ; preds = %78
  %88 = load i8*, i8** %11, align 8
  %89 = load i8*, i8** %15, align 8
  %90 = load i32, i32* @SVN_TIME__MAX_LENGTH, align 4
  %91 = load i32, i32* %7, align 4
  %92 = sub nsw i32 %90, %91
  %93 = call i32 @apr_cpystrn(i8* %88, i8* %89, i32 %92)
  br label %94

94:                                               ; preds = %87, %83
  br label %95

95:                                               ; preds = %94, %76
  %96 = load i8*, i8** %10, align 8
  store i8* %96, i8** %3, align 8
  store i32 1, i32* %14, align 4
  br label %97

97:                                               ; preds = %95, %59, %25
  %98 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %98)
  %99 = load i8*, i8** %3, align 8
  ret i8* %99
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @apr_time_exp_lt(%struct.TYPE_4__*, i32) #2

declare dso_local i8* @apr_palloc(i32*, i32) #2

declare dso_local i32 @apr_snprintf(i8*, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #3

declare dso_local i64 @apr_strftime(i8*, i32*, i32, i32, %struct.TYPE_4__*) #2

declare dso_local i32* @svn_utf_cstring_to_utf8(i8**, i8*, i32*) #2

declare dso_local i32 @svn_error_clear(i32*) #2

declare dso_local i32 @apr_cpystrn(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
