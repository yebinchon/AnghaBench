; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/TEST/extr_wtc1.c_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/TEST/extr_wtc1.c_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32* }
%struct.TYPE_3__ = type { i32*, i32* }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@MB_LEN_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@CC_ERROR = common dso_local global i8 0, align 1
@CC_REFRESH = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i32*, i32)* @complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @complete(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca [1024 x i32], align 16
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = call i32* @opendir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call %struct.TYPE_3__* @el_wline(i32* %17)
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %10, align 8
  store i8 0, i8* %14, align 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 -1
  store i32* %22, i32** %7, align 8
  br label %23

23:                                               ; preds = %37, %2
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @iswspace(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load i32*, i32** %7, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ugt i32* %29, %32
  br label %34

34:                                               ; preds = %28, %23
  %35 = phi i1 [ false, %23 ], [ %33, %28 ]
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  br label %37

37:                                               ; preds = %36
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 -1
  store i32* %39, i32** %7, align 8
  br label %23

40:                                               ; preds = %34
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %7, align 8
  %46 = ptrtoint i32* %43 to i64
  %47 = ptrtoint i32* %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 4
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %11, align 4
  %51 = call i32 @wctomb(i8* null, i32 0)
  %52 = load i32, i32* @MB_LEN_MAX, align 4
  %53 = load i32, i32* %11, align 4
  %54 = mul nsw i32 %52, %53
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i8* @malloc(i32 %56)
  store i8* %57, i8** %9, align 8
  store i8* %57, i8** %8, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %40
  %61 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %40
  store i32 0, i32* %13, align 4
  br label %63

63:                                               ; preds = %78, %62
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = load i8*, i8** %9, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @wctomb(i8* %68, i32 %73)
  %75 = load i8*, i8** %9, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %9, align 8
  br label %78

78:                                               ; preds = %67
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %13, align 4
  br label %63

81:                                               ; preds = %63
  %82 = load i8*, i8** %9, align 8
  store i8 0, i8* %82, align 1
  %83 = load i8*, i8** %9, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %12, align 4
  %89 = load i32*, i32** %5, align 8
  %90 = call %struct.dirent* @readdir(i32* %89)
  store %struct.dirent* %90, %struct.dirent** %6, align 8
  br label %91

91:                                               ; preds = %129, %81
  %92 = load %struct.dirent*, %struct.dirent** %6, align 8
  %93 = icmp ne %struct.dirent* %92, null
  br i1 %93, label %94, label %132

94:                                               ; preds = %91
  %95 = load i32, i32* %12, align 4
  %96 = load %struct.dirent*, %struct.dirent** %6, align 8
  %97 = getelementptr inbounds %struct.dirent, %struct.dirent* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @strlen(i32* %98)
  %100 = icmp sgt i32 %95, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %129

102:                                              ; preds = %94
  %103 = load %struct.dirent*, %struct.dirent** %6, align 8
  %104 = getelementptr inbounds %struct.dirent, %struct.dirent* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = load i32, i32* %12, align 4
  %108 = call i64 @strncmp(i32* %105, i8* %106, i32 %107)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %128

110:                                              ; preds = %102
  %111 = getelementptr inbounds [1024 x i32], [1024 x i32]* %15, i64 0, i64 0
  %112 = load %struct.dirent*, %struct.dirent** %6, align 8
  %113 = getelementptr inbounds %struct.dirent, %struct.dirent* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = call i32 @mbstowcs(i32* %111, i32* %117, i32 1024)
  %119 = load i32*, i32** %3, align 8
  %120 = getelementptr inbounds [1024 x i32], [1024 x i32]* %15, i64 0, i64 0
  %121 = call i32 @el_winsertstr(i32* %119, i32* %120)
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %125

123:                                              ; preds = %110
  %124 = load i8, i8* @CC_ERROR, align 1
  store i8 %124, i8* %14, align 1
  br label %127

125:                                              ; preds = %110
  %126 = load i8, i8* @CC_REFRESH, align 1
  store i8 %126, i8* %14, align 1
  br label %127

127:                                              ; preds = %125, %123
  br label %132

128:                                              ; preds = %102
  br label %129

129:                                              ; preds = %128, %101
  %130 = load i32*, i32** %5, align 8
  %131 = call %struct.dirent* @readdir(i32* %130)
  store %struct.dirent* %131, %struct.dirent** %6, align 8
  br label %91

132:                                              ; preds = %127, %91
  %133 = load i32*, i32** %5, align 8
  %134 = call i32 @closedir(i32* %133)
  %135 = load i8*, i8** %8, align 8
  %136 = call i32 @free(i8* %135)
  %137 = load i8, i8* %14, align 1
  ret i8 %137
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.TYPE_3__* @el_wline(i32*) #1

declare dso_local i32 @iswspace(i32) #1

declare dso_local i32 @wctomb(i8*, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i64 @strncmp(i32*, i8*, i32) #1

declare dso_local i32 @mbstowcs(i32*, i32*, i32) #1

declare dso_local i32 @el_winsertstr(i32*, i32*) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
