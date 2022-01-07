; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_config.c_check_config_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_config.c_check_config_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"prepend_config_files\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"'%s' != '%s'\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"pp ended before res list\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"get_default_config_files\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"pp ended before def list\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"pp ended after res (and def) list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8**, i32)* @check_config_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_config_file(i32 %0, i8* %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32 %3, i32* %8, align 4
  store i8** null, i8*** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @krb5_prepend_config_files_default(i8* %17, i8*** %10)
  store i64 %18, i64* %9, align 8
  br label %22

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @krb5_prepend_config_files(i8* %20, i32* null, i8*** %10)
  store i64 %21, i64* %9, align 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @krb5_err(i32 %26, i32 1, i64 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %25, %22
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %73, %29
  %31 = load i8**, i8*** %7, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load i8**, i8*** %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br label %44

44:                                               ; preds = %37, %30
  %45 = phi i1 [ false, %30 ], [ %43, %37 ]
  br i1 %45, label %46, label %76

46:                                               ; preds = %44
  %47 = load i8**, i8*** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = load i8**, i8*** %7, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @strcmp(i8* %51, i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %46
  %60 = load i32, i32* %5, align 4
  %61 = load i8**, i8*** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = load i8**, i8*** %7, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %60, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %65, i8* %70)
  br label %72

72:                                               ; preds = %59, %46
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %30

76:                                               ; preds = %44
  %77 = load i8**, i8*** %7, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i32, i32* %5, align 4
  %85 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %84, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %76
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %159

89:                                               ; preds = %86
  %90 = call i64 @krb5_get_default_config_files(i8*** %12)
  store i64 %90, i64* %9, align 8
  %91 = load i64, i64* %9, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i32, i32* %5, align 4
  %95 = load i64, i64* %9, align 8
  %96 = call i32 @krb5_err(i32 %94, i32 1, i64 %95, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %97

97:                                               ; preds = %93, %89
  store i32 0, i32* %13, align 4
  br label %98

98:                                               ; preds = %141, %97
  %99 = load i8**, i8*** %10, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %98
  %106 = load i8**, i8*** %12, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br label %112

112:                                              ; preds = %105, %98
  %113 = phi i1 [ false, %98 ], [ %111, %105 ]
  br i1 %113, label %114, label %146

114:                                              ; preds = %112
  %115 = load i8**, i8*** %10, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = load i8**, i8*** %12, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = call i64 @strcmp(i8* %119, i8* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %114
  %128 = load i32, i32* %5, align 4
  %129 = load i8**, i8*** %10, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %129, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = load i8**, i8*** %12, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %134, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %128, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %133, i8* %138)
  br label %140

140:                                              ; preds = %127, %114
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %13, align 4
  br label %98

146:                                              ; preds = %112
  %147 = load i8**, i8*** %12, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  %151 = load i8*, i8** %150, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %146
  %154 = load i32, i32* %5, align 4
  %155 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %154, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %156

156:                                              ; preds = %153, %146
  %157 = load i8**, i8*** %12, align 8
  %158 = call i32 @krb5_free_config_files(i8** %157)
  br label %159

159:                                              ; preds = %156, %86
  %160 = load i8**, i8*** %10, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %160, i64 %162
  %164 = load i8*, i8** %163, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %159
  %167 = load i32, i32* %5, align 4
  %168 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %167, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %169

169:                                              ; preds = %166, %159
  %170 = load i8**, i8*** %10, align 8
  %171 = call i32 @krb5_free_config_files(i8** %170)
  ret i32 0
}

declare dso_local i64 @krb5_prepend_config_files_default(i8*, i8***) #1

declare dso_local i64 @krb5_prepend_config_files(i8*, i32*, i8***) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*, ...) #1

declare dso_local i64 @krb5_get_default_config_files(i8***) #1

declare dso_local i32 @krb5_free_config_files(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
