; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_fetch.c_auto_put.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_fetch.c_auto_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_C_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mput\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"auto_put: target `%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"put\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Invalid URL `%s'\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"auto_put: URL `%s' argv[2] `%s'\0A\00", align 1
@code = common dso_local global i32 0, align 4
@COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auto_put(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [4 x i8*], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %16 = load i32, i32* @MAX_C_NAME, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %14, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %15, align 8
  %20 = trunc i64 %17 to i32
  %21 = call i32 @strlcpy(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = getelementptr inbounds [4 x i8*], [4 x i8*]* %7, i64 0, i64 0
  store i8* %19, i8** %22, align 16
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds [4 x i8*], [4 x i8*]* %7, i64 0, i64 1
  store i8* %25, i8** %26, align 8
  store i32 2, i32* %10, align 4
  %27 = getelementptr inbounds [4 x i8*], [4 x i8*]* %7, i64 0, i64 3
  store i8* null, i8** %27, align 8
  %28 = getelementptr inbounds [4 x i8*], [4 x i8*]* %7, i64 0, i64 2
  store i8* null, i8** %28, align 16
  store i8* null, i8** %9, align 8
  store i32 1, i32* %11, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 (i8*, i8*, ...) @DPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load i8*, i8** %6, align 8
  %32 = call i8* @ftp_strdup(i8* %31)
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %13, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i64, i64* %13, align 8
  %38 = sub i64 %37, 1
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 47
  br i1 %42, label %43, label %107

43:                                               ; preds = %3
  %44 = load i8*, i8** %8, align 8
  %45 = load i64, i64* %13, align 8
  %46 = sub i64 %45, 1
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 58
  br i1 %50, label %51, label %107

51:                                               ; preds = %43
  %52 = load i32, i32* %4, align 4
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %72

54:                                               ; preds = %51
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = add nsw i32 %56, 2
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %13, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load i64, i64* %13, align 8
  %62 = call i64 @ftp_malloc(i64 %61)
  %63 = inttoptr i64 %62 to i8*
  store i8* %63, i8** %8, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load i64, i64* %13, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @strlcpy(i8* %64, i8* %65, i32 %67)
  %69 = load i8*, i8** %8, align 8
  %70 = load i64, i64* %13, align 8
  %71 = call i32 @strlcat(i8* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 %70)
  br label %106

72:                                               ; preds = %51
  %73 = trunc i64 %17 to i32
  %74 = call i32 @strlcpy(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = getelementptr inbounds [4 x i8*], [4 x i8*]* %7, i64 0, i64 0
  store i8* %19, i8** %75, align 16
  %76 = load i8*, i8** %8, align 8
  %77 = call i8* @strrchr(i8* %76, i8 signext 47)
  store i8* %77, i8** %9, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %96

80:                                               ; preds = %72
  %81 = load i8*, i8** %8, align 8
  %82 = call i8* @strrchr(i8* %81, i8 signext 58)
  store i8* %82, i8** %9, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %86)
  br label %165

88:                                               ; preds = %80
  %89 = load i8*, i8** %9, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %9, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = call i8* @ftp_strdup(i8* %91)
  %93 = getelementptr inbounds [4 x i8*], [4 x i8*]* %7, i64 0, i64 2
  store i8* %92, i8** %93, align 16
  %94 = load i8*, i8** %9, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  store i8 47, i8* %95, align 1
  br label %101

96:                                               ; preds = %72
  %97 = load i8*, i8** %9, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = call i8* @ftp_strdup(i8* %98)
  %100 = getelementptr inbounds [4 x i8*], [4 x i8*]* %7, i64 0, i64 2
  store i8* %99, i8** %100, align 16
  br label %101

101:                                              ; preds = %96, %88
  %102 = load i8*, i8** %9, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  store i8 0, i8* %103, align 1
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %101, %54
  br label %107

107:                                              ; preds = %106, %43, %3
  %108 = load i8*, i8** %8, align 8
  %109 = getelementptr inbounds [4 x i8*], [4 x i8*]* %7, i64 0, i64 2
  %110 = load i8*, i8** %109, align 16
  %111 = call i32 @STRorNULL(i8* %110)
  %112 = call i32 (i8*, i8*, ...) @DPRINTF(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %108, i32 %111)
  %113 = call i32 @auto_fetch(i32 1, i8** %8)
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp sge i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  br label %165

117:                                              ; preds = %107
  store i32 0, i32* %11, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp eq i32 %118, 3
  br i1 %119, label %120, label %134

120:                                              ; preds = %117
  %121 = load i8**, i8*** %5, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 0
  %123 = load i8*, i8** %122, align 8
  %124 = getelementptr inbounds [4 x i8*], [4 x i8*]* %7, i64 0, i64 1
  store i8* %123, i8** %124, align 8
  %125 = load i32, i32* %10, align 4
  %126 = getelementptr inbounds [4 x i8*], [4 x i8*]* %7, i64 0, i64 0
  %127 = call i32 @put(i32 %125, i8** %126)
  %128 = load i32, i32* @code, align 4
  %129 = sdiv i32 %128, 100
  %130 = load i32, i32* @COMPLETE, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %120
  store i32 1, i32* %11, align 4
  br label %133

133:                                              ; preds = %132, %120
  br label %164

134:                                              ; preds = %117
  store i32 0, i32* %12, align 4
  br label %135

135:                                              ; preds = %160, %134
  %136 = load i8**, i8*** %5, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8*, i8** %136, i64 %138
  %140 = load i8*, i8** %139, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %163

142:                                              ; preds = %135
  %143 = load i8**, i8*** %5, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds [4 x i8*], [4 x i8*]* %7, i64 0, i64 1
  store i8* %147, i8** %148, align 8
  %149 = load i32, i32* %10, align 4
  %150 = getelementptr inbounds [4 x i8*], [4 x i8*]* %7, i64 0, i64 0
  %151 = call i32 @mput(i32 %149, i8** %150)
  %152 = load i32, i32* @code, align 4
  %153 = sdiv i32 %152, 100
  %154 = load i32, i32* @COMPLETE, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %142
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %11, align 4
  br label %163

159:                                              ; preds = %142
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %12, align 4
  br label %135

163:                                              ; preds = %156, %135
  br label %164

164:                                              ; preds = %163, %133
  br label %165

165:                                              ; preds = %164, %116, %85
  %166 = load i8*, i8** %8, align 8
  %167 = call i32 @free(i8* %166)
  %168 = getelementptr inbounds [4 x i8*], [4 x i8*]* %7, i64 0, i64 2
  %169 = load i8*, i8** %168, align 16
  %170 = call i32 @FREEPTR(i8* %169)
  %171 = load i32, i32* %11, align 4
  %172 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %172)
  ret i32 %171
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @DPRINTF(i8*, i8*, ...) #2

declare dso_local i8* @ftp_strdup(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @ftp_malloc(i64) #2

declare dso_local i32 @strlcat(i8*, i8*, i64) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @warnx(i8*, i8*) #2

declare dso_local i32 @STRorNULL(i8*) #2

declare dso_local i32 @auto_fetch(i32, i8**) #2

declare dso_local i32 @put(i32, i8**) #2

declare dso_local i32 @mput(i32, i8**) #2

declare dso_local i32 @FREEPTR(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
