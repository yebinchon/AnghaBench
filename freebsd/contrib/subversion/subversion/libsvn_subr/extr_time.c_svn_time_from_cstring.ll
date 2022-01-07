; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_time.c_svn_time_from_cstring.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_time.c_svn_time_from_cstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i64, i8*, i64, i64, i8*, i8*, i8*, i8*, i8* }

@APR_SUCCESS = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_BAD_DATE = common dso_local global i32 0, align 4
@OLD_TIMESTAMP_FORMAT = common dso_local global i32 0, align 4
@apr_day_snames = common dso_local global i32 0, align 4
@apr_month_snames = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_time_from_cstring(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i64, align 8
  %10 = alloca [4 x i8], align 1
  %11 = alloca [4 x i8], align 1
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @svn__strtoul(i8* %13, i8** %12)
  %15 = inttoptr i64 %14 to i8*
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  store i8* %15, i8** %16, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %12, align 8
  %19 = load i8, i8* %17, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 45
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %110

23:                                               ; preds = %3
  %24 = load i8*, i8** %12, align 8
  %25 = call i64 @svn__strtoul(i8* %24, i8** %12)
  %26 = inttoptr i64 %25 to i8*
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %12, align 8
  %30 = load i8, i8* %28, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 45
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %110

34:                                               ; preds = %23
  %35 = load i8*, i8** %12, align 8
  %36 = call i64 @svn__strtoul(i8* %35, i8** %12)
  %37 = inttoptr i64 %36 to i8*
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 10
  store i8* %37, i8** %38, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %12, align 8
  %41 = load i8, i8* %39, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 84
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %110

45:                                               ; preds = %34
  %46 = load i8*, i8** %12, align 8
  %47 = call i64 @svn__strtoul(i8* %46, i8** %12)
  %48 = inttoptr i64 %47 to i8*
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 9
  store i8* %48, i8** %49, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %12, align 8
  %52 = load i8, i8* %50, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 58
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %110

56:                                               ; preds = %45
  %57 = load i8*, i8** %12, align 8
  %58 = call i64 @svn__strtoul(i8* %57, i8** %12)
  %59 = inttoptr i64 %58 to i8*
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 8
  store i8* %59, i8** %60, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %12, align 8
  %63 = load i8, i8* %61, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 58
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %110

67:                                               ; preds = %56
  %68 = load i8*, i8** %12, align 8
  %69 = call i64 @svn__strtoul(i8* %68, i8** %12)
  %70 = inttoptr i64 %69 to i8*
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 7
  store i8* %70, i8** %71, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %12, align 8
  %74 = load i8, i8* %72, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 46
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %110

78:                                               ; preds = %67
  %79 = load i8*, i8** %12, align 8
  %80 = call i64 @svn__strtoul(i8* %79, i8** %12)
  %81 = inttoptr i64 %80 to i8*
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 6
  store i8* %81, i8** %82, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %12, align 8
  %85 = load i8, i8* %83, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 90
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %110

89:                                               ; preds = %78
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr i8, i8* %91, i64 -1900
  store i8* %92, i8** %90, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr i8, i8* %94, i64 -1
  store i8* %95, i8** %93, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i8* null, i8** %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i64 0, i64* %97, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 5
  store i64 0, i64* %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  store i64 0, i64* %99, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = call i64 @apr_time_exp_gmt_get(i32* %100, %struct.TYPE_3__* %8)
  store i64 %101, i64* %9, align 8
  %102 = load i64, i64* %9, align 8
  %103 = load i64, i64* @APR_SUCCESS, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %89
  %106 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %106, i32** %4, align 8
  br label %154

107:                                              ; preds = %89
  %108 = load i32, i32* @SVN_ERR_BAD_DATE, align 4
  %109 = call i32* @svn_error_create(i32 %108, i32* null, i32* null)
  store i32* %109, i32** %4, align 8
  br label %154

110:                                              ; preds = %88, %77, %66, %55, %44, %33, %22
  %111 = load i8*, i8** %6, align 8
  %112 = load i32, i32* @OLD_TIMESTAMP_FORMAT, align 4
  %113 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 10
  %115 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 9
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 7
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 6
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  %124 = call i32 @sscanf(i8* %111, i32 %112, i8* %113, i8** %114, i8* %115, i8** %116, i8** %117, i8** %118, i8** %119, i8** %120, i64* %121, i64* %122, i64* %123)
  %125 = icmp eq i32 %124, 11
  br i1 %125, label %126, label %151

126:                                              ; preds = %110
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %128 = load i8*, i8** %127, align 8
  %129 = getelementptr i8, i8* %128, i64 -1900
  store i8* %129, i8** %127, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = sub nsw i64 %131, 1
  store i64 %132, i64* %130, align 8
  %133 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %134 = load i32, i32* @apr_day_snames, align 4
  %135 = call i8* @find_matching_string(i8* %133, i32 7, i32 %134)
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i8* %135, i8** %136, align 8
  %137 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %138 = load i32, i32* @apr_month_snames, align 4
  %139 = call i8* @find_matching_string(i8* %137, i32 12, i32 %138)
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i8* %139, i8** %140, align 8
  %141 = load i32*, i32** %5, align 8
  %142 = call i64 @apr_time_exp_gmt_get(i32* %141, %struct.TYPE_3__* %8)
  store i64 %142, i64* %9, align 8
  %143 = load i64, i64* %9, align 8
  %144 = load i64, i64* @APR_SUCCESS, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %126
  %147 = load i32, i32* @SVN_ERR_BAD_DATE, align 4
  %148 = call i32* @svn_error_create(i32 %147, i32* null, i32* null)
  store i32* %148, i32** %4, align 8
  br label %154

149:                                              ; preds = %126
  %150 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %150, i32** %4, align 8
  br label %154

151:                                              ; preds = %110
  %152 = load i32, i32* @SVN_ERR_BAD_DATE, align 4
  %153 = call i32* @svn_error_create(i32 %152, i32* null, i32* null)
  store i32* %153, i32** %4, align 8
  br label %154

154:                                              ; preds = %151, %149, %146, %107, %105
  %155 = load i32*, i32** %4, align 8
  ret i32* %155
}

declare dso_local i64 @svn__strtoul(i8*, i8**) #1

declare dso_local i64 @apr_time_exp_gmt_get(i32*, %struct.TYPE_3__*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i32 @sscanf(i8*, i32, i8*, i8**, i8*, i8**, i8**, i8**, i8**, i8**, i64*, i64*, i64*) #1

declare dso_local i8* @find_matching_string(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
