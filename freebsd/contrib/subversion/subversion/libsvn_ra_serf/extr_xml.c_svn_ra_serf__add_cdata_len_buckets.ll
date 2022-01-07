; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_xml.c_svn_ra_serf__add_cdata_len_buckets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_xml.c_svn_ra_serf__add_cdata_len_buckets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"&#13;\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svn_ra_serf__add_cdata_len_buckets(i32* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %10, align 8
  br label %18

18:                                               ; preds = %4, %113
  %19 = load i8*, i8** %10, align 8
  store i8* %19, i8** %11, align 8
  br label %20

20:                                               ; preds = %46, %18
  %21 = load i8*, i8** %11, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ult i8* %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %20
  %25 = load i8*, i8** %11, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 38
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load i8*, i8** %11, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 60
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load i8*, i8** %11, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 62
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i8*, i8** %11, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 13
  br label %44

44:                                               ; preds = %39, %34, %29, %24, %20
  %45 = phi i1 [ false, %34 ], [ false, %29 ], [ false, %24 ], [ false, %20 ], [ %43, %39 ]
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i8*, i8** %11, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %11, align 8
  br label %20

49:                                               ; preds = %44
  %50 = load i8*, i8** %10, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  %57 = load i32*, i32** %6, align 8
  %58 = call i32* @SERF_BUCKET_SIMPLE_STRING_LEN(i8* %50, i32 %56, i32* %57)
  store i32* %58, i32** %12, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = call i32 @serf_bucket_aggregate_append(i32* %59, i32* %60)
  %62 = load i8*, i8** %11, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = icmp eq i8* %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %49
  br label %116

66:                                               ; preds = %49
  %67 = load i8*, i8** %11, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 38
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i32*, i32** %6, align 8
  %73 = call i32* @SERF_BUCKET_SIMPLE_STRING_LEN(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5, i32* %72)
  store i32* %73, i32** %12, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = call i32 @serf_bucket_aggregate_append(i32* %74, i32* %75)
  br label %113

77:                                               ; preds = %66
  %78 = load i8*, i8** %11, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 60
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i32*, i32** %6, align 8
  %84 = call i32* @SERF_BUCKET_SIMPLE_STRING_LEN(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4, i32* %83)
  store i32* %84, i32** %12, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = call i32 @serf_bucket_aggregate_append(i32* %85, i32* %86)
  br label %112

88:                                               ; preds = %77
  %89 = load i8*, i8** %11, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 62
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load i32*, i32** %6, align 8
  %95 = call i32* @SERF_BUCKET_SIMPLE_STRING_LEN(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4, i32* %94)
  store i32* %95, i32** %12, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = load i32*, i32** %12, align 8
  %98 = call i32 @serf_bucket_aggregate_append(i32* %96, i32* %97)
  br label %111

99:                                               ; preds = %88
  %100 = load i8*, i8** %11, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 13
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load i32*, i32** %6, align 8
  %106 = call i32* @SERF_BUCKET_SIMPLE_STRING_LEN(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5, i32* %105)
  store i32* %106, i32** %12, align 8
  %107 = load i32*, i32** %5, align 8
  %108 = load i32*, i32** %12, align 8
  %109 = call i32 @serf_bucket_aggregate_append(i32* %107, i32* %108)
  br label %110

110:                                              ; preds = %104, %99
  br label %111

111:                                              ; preds = %110, %93
  br label %112

112:                                              ; preds = %111, %82
  br label %113

113:                                              ; preds = %112, %71
  %114 = load i8*, i8** %11, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  store i8* %115, i8** %10, align 8
  br label %18

116:                                              ; preds = %65
  ret void
}

declare dso_local i32* @SERF_BUCKET_SIMPLE_STRING_LEN(i8*, i32, i32*) #1

declare dso_local i32 @serf_bucket_aggregate_append(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
