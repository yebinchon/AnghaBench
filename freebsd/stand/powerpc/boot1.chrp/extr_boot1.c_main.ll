; ModuleID = '/home/carl/AnghaBench/freebsd/stand/powerpc/boot1.chrp/extr_boot1.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/powerpc/boot1.chrp/extr_boot1.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_LOADER = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [85 x i8] c" \0A>> FreeBSD/powerpc Open Firmware boot block\0A   Boot path:   %s\0A   Boot loader: %s\0A\00", align 1
@bootpath = common dso_local global i8* null, align 8
@bootdev = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"domount\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"   Boot volume:   %s\0A\00", align 1
@chosenh = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"bootargs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [255 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i8*, i8** @PATH_LOADER, align 8
  store i8* %10, i8** %6, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %43, %2
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  %16 = load i8**, i8*** %5, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  switch i32 %23, label %36 [
    i32 45, label %24
  ]

24:                                               ; preds = %15
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  switch i32 %32, label %33 [
  ]

33:                                               ; preds = %24
  %34 = call i32 (...) @usage()
  br label %35

35:                                               ; preds = %33
  br label %42

36:                                               ; preds = %15
  %37 = load i8**, i8*** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %6, align 8
  br label %42

42:                                               ; preds = %36, %35
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %11

46:                                               ; preds = %11
  %47 = load i8*, i8** @bootpath, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i8* %47, i8* %48)
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %58, %46
  %51 = load i8*, i8** @bootpath, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %50

61:                                               ; preds = %50
  %62 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 0
  %63 = load i8*, i8** @bootpath, align 8
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  %66 = call i32 @memcpy(i8* %62, i8* %63, i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 58
  br i1 %73, label %74, label %91

74:                                               ; preds = %61
  %75 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 0
  %76 = call i64 @domount(i8* %75, i32 1)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %146

79:                                               ; preds = %74
  %80 = load i64, i64* @bootdev, align 8
  %81 = icmp sgt i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i64, i64* @bootdev, align 8
  %84 = call i32 @ofw_close(i64 %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 %87
  store i8 58, i8* %88, align 1
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %85, %61
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %137, %91
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %93, 16
  br i1 %94, label %95, label %140

95:                                               ; preds = %92
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %96, 10
  br i1 %97, label %98, label %109

98:                                               ; preds = %95
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 48
  %101 = trunc i32 %100 to i8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 %103
  store i8 %101, i8* %104, align 1
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 %107
  store i8 0, i8* %108, align 1
  br label %125

109:                                              ; preds = %95
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 %111
  store i8 49, i8* %112, align 1
  %113 = load i32, i32* %8, align 4
  %114 = sub nsw i32 %113, 10
  %115 = add nsw i32 %114, 48
  %116 = trunc i32 %115 to i8
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 %119
  store i8 %116, i8* %120, align 1
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 2
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 %123
  store i8 0, i8* %124, align 1
  br label %125

125:                                              ; preds = %109, %98
  %126 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 0
  %127 = call i64 @domount(i8* %126, i32 1)
  %128 = icmp sge i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  br label %140

130:                                              ; preds = %125
  %131 = load i64, i64* @bootdev, align 8
  %132 = icmp sgt i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i64, i64* @bootdev, align 8
  %135 = call i32 @ofw_close(i64 %134)
  br label %136

136:                                              ; preds = %133, %130
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  br label %92

140:                                              ; preds = %129, %92
  %141 = load i32, i32* %8, align 4
  %142 = icmp sge i32 %141, 16
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = call i32 @panic(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %140
  br label %146

146:                                              ; preds = %145, %78
  %147 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 0
  %148 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %147)
  %149 = load i32, i32* @chosenh, align 4
  %150 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 0
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 2
  %153 = call i32 @ofw_setprop(i32 %149, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %150, i32 %152)
  %154 = load i8*, i8** %6, align 8
  %155 = call i32 @load(i8* %154)
  ret i32 1
}

declare dso_local i32 @usage(...) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @domount(i8*, i32) #1

declare dso_local i32 @ofw_close(i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ofw_setprop(i32, i8*, i8*, i32) #1

declare dso_local i32 @load(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
