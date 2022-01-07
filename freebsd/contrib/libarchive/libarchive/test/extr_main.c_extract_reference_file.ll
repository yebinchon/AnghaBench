; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_extract_reference_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_extract_reference_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%s/%s.uu\00", align 1
@refdir = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Couldn't open reference file %s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"begin \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"end\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @extract_reference_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %10 = load i8*, i8** @refdir, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @sprintf(i8* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %10, i8* %11)
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %14 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %14, i32** %4, align 8
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %16 = call i32 @failure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %15)
  %17 = load i32*, i32** %4, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %147

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %36, %24
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %27 = load i32*, i32** %4, align 8
  %28 = call i32* @fgets(i8* %26, i32 1024, i32* %27)
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %147

31:                                               ; preds = %25
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %33 = call i64 @memcmp(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %37

36:                                               ; preds = %31
  br label %25

37:                                               ; preds = %35
  %38 = load i8*, i8** %2, align 8
  %39 = call i32* @fopen(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %39, i32** %5, align 8
  br label %40

40:                                               ; preds = %141, %37
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %42 = load i32*, i32** %4, align 8
  %43 = call i32* @fgets(i8* %41, i32 1024, i32* %42)
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %142

45:                                               ; preds = %40
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  store i8* %46, i8** %6, align 8
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %48 = call i64 @memcmp(i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 3)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %142

51:                                               ; preds = %45
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %6, align 8
  %54 = load i8, i8* %52, align 1
  %55 = sext i8 %54 to i32
  %56 = call i32 @UUDECODE(i32 %55)
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %140, %51
  %58 = load i32, i32* %7, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %141

60:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %94

63:                                               ; preds = %60
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = call i32 @VALID_UUDECODE(i8 signext %66)
  %68 = call i32 @assert(i32 %67)
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i8, i8* %70, align 1
  %72 = call i32 @VALID_UUDECODE(i8 signext %71)
  %73 = call i32 @assert(i32 %72)
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %6, align 8
  %76 = load i8, i8* %74, align 1
  %77 = sext i8 %76 to i32
  %78 = call i32 @UUDECODE(i32 %77)
  %79 = shl i32 %78, 18
  store i32 %79, i32* %8, align 4
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %6, align 8
  %82 = load i8, i8* %80, align 1
  %83 = sext i8 %82 to i32
  %84 = call i32 @UUDECODE(i32 %83)
  %85 = shl i32 %84, 12
  %86 = load i32, i32* %8, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = ashr i32 %88, 16
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @fputc(i32 %89, i32* %90)
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %63, %60
  %95 = load i32, i32* %7, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %118

97:                                               ; preds = %94
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  %100 = load i8, i8* %99, align 1
  %101 = call i32 @VALID_UUDECODE(i8 signext %100)
  %102 = call i32 @assert(i32 %101)
  %103 = load i8*, i8** %6, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %6, align 8
  %105 = load i8, i8* %103, align 1
  %106 = sext i8 %105 to i32
  %107 = call i32 @UUDECODE(i32 %106)
  %108 = shl i32 %107, 6
  %109 = load i32, i32* %8, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = ashr i32 %111, 8
  %113 = and i32 %112, 255
  %114 = load i32*, i32** %5, align 8
  %115 = call i32 @fputc(i32 %113, i32* %114)
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %97, %94
  %119 = load i32, i32* %7, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %140

121:                                              ; preds = %118
  %122 = load i8*, i8** %6, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 0
  %124 = load i8, i8* %123, align 1
  %125 = call i32 @VALID_UUDECODE(i8 signext %124)
  %126 = call i32 @assert(i32 %125)
  %127 = load i8*, i8** %6, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %6, align 8
  %129 = load i8, i8* %127, align 1
  %130 = sext i8 %129 to i32
  %131 = call i32 @UUDECODE(i32 %130)
  %132 = load i32, i32* %8, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = and i32 %134, 255
  %136 = load i32*, i32** %5, align 8
  %137 = call i32 @fputc(i32 %135, i32* %136)
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %7, align 4
  br label %140

140:                                              ; preds = %121, %118
  br label %57

141:                                              ; preds = %57
  br label %40

142:                                              ; preds = %50, %40
  %143 = load i32*, i32** %5, align 8
  %144 = call i32 @fclose(i32* %143)
  %145 = load i32*, i32** %4, align 8
  %146 = call i32 @fclose(i32* %145)
  br label %147

147:                                              ; preds = %142, %30, %23
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @failure(i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @UUDECODE(i32) #1

declare dso_local i32 @VALID_UUDECODE(i8 signext) #1

declare dso_local i32 @fputc(i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
