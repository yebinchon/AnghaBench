; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_util.c_archive_utility_string_sort_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_util.c_archive_utility_string_sort_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32)* @archive_utility_string_sort_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_utility_string_sort_helper(i8** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ule i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %18, i32* %3, align 4
  br label %164

19:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i8** null, i8*** %10, align 8
  store i8** null, i8*** %9, align 8
  %20 = load i8**, i8*** %4, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %12, align 8
  store i32 1, i32* %6, align 4
  br label %23

23:                                               ; preds = %97, %19
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %100

27:                                               ; preds = %23
  %28 = load i8**, i8*** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = call i64 @strcmp(i8* %32, i8* %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %27
  %37 = load i32, i32* %7, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %7, align 4
  %39 = load i8**, i8*** %9, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = mul i64 %41, 8
  %43 = trunc i64 %42 to i32
  %44 = call i64 @realloc(i8** %39, i32 %43)
  %45 = inttoptr i64 %44 to i8**
  store i8** %45, i8*** %11, align 8
  %46 = load i8**, i8*** %11, align 8
  %47 = icmp ne i8** %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %36
  %49 = load i8**, i8*** %10, align 8
  %50 = call i32 @free(i8** %49)
  %51 = load i8**, i8*** %9, align 8
  %52 = call i32 @free(i8** %51)
  %53 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %53, i32* %3, align 4
  br label %164

54:                                               ; preds = %36
  %55 = load i8**, i8*** %11, align 8
  store i8** %55, i8*** %9, align 8
  %56 = load i8**, i8*** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = load i8**, i8*** %9, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sub i32 %62, 1
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %61, i64 %64
  store i8* %60, i8** %65, align 8
  br label %96

66:                                               ; preds = %27
  %67 = load i32, i32* %8, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %8, align 4
  %69 = load i8**, i8*** %10, align 8
  %70 = load i32, i32* %8, align 4
  %71 = zext i32 %70 to i64
  %72 = mul i64 %71, 8
  %73 = trunc i64 %72 to i32
  %74 = call i64 @realloc(i8** %69, i32 %73)
  %75 = inttoptr i64 %74 to i8**
  store i8** %75, i8*** %11, align 8
  %76 = load i8**, i8*** %11, align 8
  %77 = icmp ne i8** %76, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %66
  %79 = load i8**, i8*** %10, align 8
  %80 = call i32 @free(i8** %79)
  %81 = load i8**, i8*** %9, align 8
  %82 = call i32 @free(i8** %81)
  %83 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %83, i32* %3, align 4
  br label %164

84:                                               ; preds = %66
  %85 = load i8**, i8*** %11, align 8
  store i8** %85, i8*** %10, align 8
  %86 = load i8**, i8*** %4, align 8
  %87 = load i32, i32* %6, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = load i8**, i8*** %10, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sub i32 %92, 1
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %91, i64 %94
  store i8* %90, i8** %95, align 8
  br label %96

96:                                               ; preds = %84, %54
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %6, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %23

100:                                              ; preds = %23
  %101 = load i8**, i8*** %9, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @archive_utility_string_sort_helper(i8** %101, i32 %102)
  store i32 %103, i32* %13, align 4
  store i32 0, i32* %6, align 4
  br label %104

104:                                              ; preds = %118, %100
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %104
  %109 = load i8**, i8*** %9, align 8
  %110 = load i32, i32* %6, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = load i8**, i8*** %4, align 8
  %115 = load i32, i32* %6, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  store i8* %113, i8** %117, align 8
  br label %118

118:                                              ; preds = %108
  %119 = load i32, i32* %6, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %104

121:                                              ; preds = %104
  %122 = load i8**, i8*** %9, align 8
  %123 = call i32 @free(i8** %122)
  %124 = load i8*, i8** %12, align 8
  %125 = load i8**, i8*** %4, align 8
  %126 = load i32, i32* %7, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  store i8* %124, i8** %128, align 8
  %129 = load i8**, i8*** %10, align 8
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @archive_utility_string_sort_helper(i8** %129, i32 %130)
  store i32 %131, i32* %14, align 4
  store i32 0, i32* %6, align 4
  br label %132

132:                                              ; preds = %149, %121
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp ult i32 %133, %134
  br i1 %135, label %136, label %152

136:                                              ; preds = %132
  %137 = load i8**, i8*** %10, align 8
  %138 = load i32, i32* %6, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = load i8**, i8*** %4, align 8
  %143 = load i32, i32* %7, align 4
  %144 = add i32 %143, 1
  %145 = load i32, i32* %6, align 4
  %146 = add i32 %144, %145
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %142, i64 %147
  store i8* %141, i8** %148, align 8
  br label %149

149:                                              ; preds = %136
  %150 = load i32, i32* %6, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %6, align 4
  br label %132

152:                                              ; preds = %132
  %153 = load i8**, i8*** %10, align 8
  %154 = call i32 @free(i8** %153)
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* %14, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %152
  %159 = load i32, i32* %13, align 4
  br label %162

160:                                              ; preds = %152
  %161 = load i32, i32* %14, align 4
  br label %162

162:                                              ; preds = %160, %158
  %163 = phi i32 [ %159, %158 ], [ %161, %160 ]
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %162, %78, %48, %17
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @realloc(i8**, i32) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
