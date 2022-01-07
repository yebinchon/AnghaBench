; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_environment.c_read_env_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_environment.c_read_env_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"#\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8***, i32*)* @read_env_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_env_file(i32* %0, i8*** %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8***, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8*** %1, i8**** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %17 = load i32, i32* @BUFSIZ, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  store i32 0, i32* %15, align 4
  %21 = load i32*, i32** %6, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %37, %3
  %23 = load i8***, i8**** %5, align 8
  %24 = load i8**, i8*** %23, align 8
  %25 = icmp ne i8** %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i8***, i8**** %5, align 8
  %28 = load i8**, i8*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br label %34

34:                                               ; preds = %26, %22
  %35 = phi i1 [ false, %22 ], [ %33, %26 ]
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %22

40:                                               ; preds = %34
  %41 = load i8***, i8**** %5, align 8
  %42 = load i8**, i8*** %41, align 8
  store i8** %42, i8*** %9, align 8
  br label %43

43:                                               ; preds = %134, %91, %71, %65, %40
  %44 = load i32, i32* @BUFSIZ, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = call i32* @fgets(i8* %20, i32 %44, i32* %45)
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %143

48:                                               ; preds = %43
  %49 = call i64 @strcspn(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %50 = getelementptr inbounds i8, i8* %20, i64 %49
  store i8 0, i8* %50, align 1
  store i8* %20, i8** %12, align 8
  br label %51

51:                                               ; preds = %57, %48
  %52 = load i8*, i8** %12, align 8
  %53 = load i8, i8* %52, align 1
  %54 = call i64 @isspace(i8 zeroext %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56
  %58 = load i8*, i8** %12, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %12, align 8
  br label %51

60:                                               ; preds = %51
  %61 = load i8*, i8** %12, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %43

66:                                               ; preds = %60
  %67 = load i8*, i8** %12, align 8
  %68 = call i8* @strchr(i8* %67, i8 signext 61)
  store i8* %68, i8** %13, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %43

72:                                               ; preds = %66
  %73 = load i8**, i8*** %9, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = load i8*, i8** %13, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = add nsw i64 %79, 1
  %81 = trunc i64 %80 to i32
  %82 = call i32 @find_var(i8** %73, i8* %74, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %106

84:                                               ; preds = %72
  %85 = load i8*, i8** %12, align 8
  %86 = call i8* @strdup(i8* %85)
  store i8* %86, i8** %16, align 8
  %87 = load i8*, i8** %16, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* @ENOMEM, align 4
  store i32 %90, i32* %15, align 4
  br label %143

91:                                               ; preds = %84
  %92 = load i8**, i8*** %9, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @free(i8* %96)
  %98 = load i8*, i8** %16, align 8
  %99 = load i8**, i8*** %9, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  store i8* %98, i8** %102, align 8
  %103 = load i32*, i32** %6, align 8
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  br label %43

106:                                              ; preds = %72
  %107 = load i8**, i8*** %9, align 8
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 2
  %110 = sext i32 %109 to i64
  %111 = mul i64 %110, 8
  %112 = trunc i64 %111 to i32
  %113 = call i8** @realloc(i8** %107, i32 %112)
  store i8** %113, i8*** %14, align 8
  %114 = load i8**, i8*** %14, align 8
  %115 = icmp eq i8** %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %106
  %117 = load i32, i32* @ENOMEM, align 4
  store i32 %117, i32* %15, align 4
  br label %143

118:                                              ; preds = %106
  %119 = load i8**, i8*** %14, align 8
  store i8** %119, i8*** %9, align 8
  %120 = load i8*, i8** %12, align 8
  %121 = call i8* @strdup(i8* %120)
  %122 = load i8**, i8*** %9, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  store i8* %121, i8** %125, align 8
  %126 = load i8**, i8*** %9, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = icmp eq i8* %130, null
  br i1 %131, label %132, label %134

132:                                              ; preds = %118
  %133 = load i32, i32* @ENOMEM, align 4
  store i32 %133, i32* %15, align 4
  br label %143

134:                                              ; preds = %118
  %135 = load i8**, i8*** %9, align 8
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8*, i8** %135, i64 %138
  store i8* null, i8** %139, align 8
  %140 = load i32*, i32** %6, align 8
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  br label %43

143:                                              ; preds = %132, %116, %89, %43
  %144 = load i32*, i32** %4, align 8
  %145 = call i64 @ferror(i32* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = load i32, i32* @errno, align 4
  store i32 %148, i32* %15, align 4
  br label %149

149:                                              ; preds = %147, %143
  %150 = load i8**, i8*** %9, align 8
  %151 = load i8***, i8**** %5, align 8
  store i8** %150, i8*** %151, align 8
  %152 = load i32, i32* %15, align 4
  %153 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %153)
  ret i32 %152
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i64 @strcspn(i8*, i8*) #2

declare dso_local i64 @isspace(i8 zeroext) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @find_var(i8**, i8*, i32) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8** @realloc(i8**, i32) #2

declare dso_local i64 @ferror(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
