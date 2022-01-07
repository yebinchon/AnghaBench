; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_req.c_build_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_req.c_build_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@batch = common dso_local global i64 0, align 8
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s [%s]:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"weird input :-(\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32, i32, i8*, i32, i8*, i8*)* @build_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_data(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i8* %5, i8** %16, align 8
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  br label %21

21:                                               ; preds = %143, %9
  %22 = load i64, i64* @batch, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @bio_err, align 4
  %26 = load i8*, i8** %11, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = call i32 (i32, i8*, ...) @BIO_printf(i32 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %27)
  br label %29

29:                                               ; preds = %24, %21
  %30 = load i32, i32* @bio_err, align 4
  %31 = call i32 @BIO_flush(i32 %30)
  %32 = load i8*, i8** %13, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load i8*, i8** %16, align 8
  %36 = load i32, i32* %17, align 4
  %37 = load i8*, i8** %13, align 8
  %38 = load i8*, i8** %18, align 8
  %39 = call i32 @join(i8* %35, i32 %36, i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  br label %145

42:                                               ; preds = %34
  %43 = load i32, i32* @bio_err, align 4
  %44 = load i8*, i8** %13, align 8
  %45 = call i32 (i32, i8*, ...) @BIO_printf(i32 %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  br label %65

46:                                               ; preds = %29
  %47 = load i8*, i8** %16, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  store i8 0, i8* %48, align 1
  %49 = load i64, i64* @batch, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %16, align 8
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* @stdin, align 4
  %55 = call i32 @fgets(i8* %52, i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  store i32 0, i32* %10, align 4
  br label %145

58:                                               ; preds = %51
  br label %64

59:                                               ; preds = %46
  %60 = load i8*, i8** %16, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  store i8 10, i8* %61, align 1
  %62 = load i8*, i8** %16, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  store i8 0, i8* %63, align 1
  br label %64

64:                                               ; preds = %59, %58
  br label %65

65:                                               ; preds = %64, %42
  %66 = load i8*, i8** %16, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 0, i32* %10, align 4
  br label %145

72:                                               ; preds = %65
  %73 = load i8*, i8** %16, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 10
  br i1 %77, label %78, label %97

78:                                               ; preds = %72
  %79 = load i8*, i8** %12, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %78
  %82 = load i8*, i8** %12, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81, %78
  store i32 1, i32* %10, align 4
  br label %145

88:                                               ; preds = %81
  %89 = load i8*, i8** %16, align 8
  %90 = load i32, i32* %17, align 4
  %91 = load i8*, i8** %12, align 8
  %92 = load i8*, i8** %19, align 8
  %93 = call i32 @join(i8* %89, i32 %90, i8* %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %88
  store i32 0, i32* %10, align 4
  br label %145

96:                                               ; preds = %88
  br label %111

97:                                               ; preds = %72
  %98 = load i8*, i8** %16, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 46
  br i1 %102, label %103, label %110

103:                                              ; preds = %97
  %104 = load i8*, i8** %16, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 10
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store i32 1, i32* %10, align 4
  br label %145

110:                                              ; preds = %103, %97
  br label %111

111:                                              ; preds = %110, %96
  %112 = load i8*, i8** %16, align 8
  %113 = call i32 @strlen(i8* %112)
  store i32 %113, i32* %20, align 4
  %114 = load i8*, i8** %16, align 8
  %115 = load i32, i32* %20, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp ne i32 %120, 10
  br i1 %121, label %122, label %125

122:                                              ; preds = %111
  %123 = load i32, i32* @bio_err, align 4
  %124 = call i32 (i32, i8*, ...) @BIO_printf(i32 %123, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %145

125:                                              ; preds = %111
  %126 = load i8*, i8** %16, align 8
  %127 = load i32, i32* %20, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %20, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %126, i64 %129
  store i8 0, i8* %130, align 1
  %131 = load i32, i32* %20, align 4
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* %15, align 4
  %134 = call i32 @req_check_len(i32 %131, i32 %132, i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %144, label %136

136:                                              ; preds = %125
  %137 = load i64, i64* @batch, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = load i8*, i8** %13, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %143

142:                                              ; preds = %139, %136
  store i32 0, i32* %10, align 4
  br label %145

143:                                              ; preds = %139
  br label %21

144:                                              ; preds = %125
  store i32 2, i32* %10, align 4
  br label %145

145:                                              ; preds = %144, %142, %122, %109, %95, %87, %71, %57, %41
  %146 = load i32, i32* %10, align 4
  ret i32 %146
}

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @BIO_flush(i32) #1

declare dso_local i32 @join(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @fgets(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @req_check_len(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
