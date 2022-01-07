; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam.c_cam_strvis_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam.c_cam_strvis_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }

@CAM_STRVIS_FLAG_NONASCII_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"\\%c%c%c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cam_strvis_sbuf(%struct.sbuf* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sbuf* %0, %struct.sbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  br label %9

9:                                                ; preds = %20, %4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 32
  br label %18

18:                                               ; preds = %12, %9
  %19 = phi i1 [ false, %9 ], [ %17, %12 ]
  br i1 %19, label %20, label %25

20:                                               ; preds = %18
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %7, align 4
  br label %9

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %51, %25
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 32
  br i1 %37, label %47, label %38

38:                                               ; preds = %29
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br label %47

47:                                               ; preds = %38, %29
  %48 = phi i1 [ true, %29 ], [ %46, %38 ]
  br label %49

49:                                               ; preds = %47, %26
  %50 = phi i1 [ false, %26 ], [ %48, %47 ]
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %7, align 4
  br label %26

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %118, %54
  %56 = load i32, i32* %7, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %123

58:                                               ; preds = %55
  %59 = load i8*, i8** %6, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp slt i32 %61, 32
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i8*, i8** %6, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp sge i32 %66, 128
  br i1 %67, label %68, label %113

68:                                               ; preds = %63, %58
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @CAM_STRVIS_FLAG_NONASCII_MASK, align 4
  %71 = and i32 %69, %70
  switch i32 %71, label %111 [
    i32 131, label %72
    i32 130, label %93
    i32 129, label %107
    i32 128, label %110
  ]

72:                                               ; preds = %68
  %73 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = and i32 %76, 192
  %78 = ashr i32 %77, 6
  %79 = add nsw i32 %78, 48
  %80 = load i8*, i8** %6, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = and i32 %82, 56
  %84 = ashr i32 %83, 3
  %85 = add nsw i32 %84, 48
  %86 = load i8*, i8** %6, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = and i32 %88, 7
  %90 = ashr i32 %89, 0
  %91 = add nsw i32 %90, 48
  %92 = call i32 @sbuf_printf(%struct.sbuf* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %85, i32 %91)
  br label %112

93:                                               ; preds = %68
  %94 = load i8*, i8** %6, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = load i8, i8* %100, align 1
  %102 = call i32 @sbuf_putc(%struct.sbuf* %99, i8 signext %101)
  br label %106

103:                                              ; preds = %93
  %104 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %105 = call i32 @sbuf_putc(%struct.sbuf* %104, i8 signext 32)
  br label %106

106:                                              ; preds = %103, %98
  br label %112

107:                                              ; preds = %68
  %108 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %109 = call i32 @sbuf_putc(%struct.sbuf* %108, i8 signext 32)
  br label %112

110:                                              ; preds = %68
  br label %111

111:                                              ; preds = %68, %110
  br label %112

112:                                              ; preds = %111, %107, %106, %72
  br label %118

113:                                              ; preds = %63
  %114 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = load i8, i8* %115, align 1
  %117 = call i32 @sbuf_putc(%struct.sbuf* %114, i8 signext %116)
  br label %118

118:                                              ; preds = %113, %112
  %119 = load i8*, i8** %6, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %6, align 8
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %7, align 4
  br label %55

123:                                              ; preds = %55
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i32, i32, i32) #1

declare dso_local i32 @sbuf_putc(%struct.sbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
