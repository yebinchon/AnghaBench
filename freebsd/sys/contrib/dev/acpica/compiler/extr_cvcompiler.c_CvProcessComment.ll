; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_cvcompiler.c_CvProcessComment.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_cvcompiler.c_CvProcessComment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64 }

@AcpiGbl_CaptureComments = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Multi-line comment\0A\00", align 1
@AslGbl_MsgBuffer = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"CommentString: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@ASL_COMMENT_STANDARD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CvProcessComment(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %1, i8** %4, align 8
  store i32 %2, i32* %5, align 4
  %12 = load i64, i64* @AcpiGbl_CaptureComments, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %179

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %179

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = trunc i32 %19 to i8
  %21 = load i8*, i8** %4, align 8
  store i8 %20, i8* %21, align 1
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  store i8 0, i8* %24, align 1
  %25 = call i32 (i8*, ...) @CvDbgPrint(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %26 = load i8*, i8** @AslGbl_MsgBuffer, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = add nsw i32 %27, 1
  %29 = call i8* @UtLocalCacheCalloc(i32 %28)
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i8*, i8** @AslGbl_MsgBuffer, align 8
  %32 = call i32 @strcpy(i8* %30, i8* %31)
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 (i8*, ...) @CvDbgPrint(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load i8*, i8** %10, align 8
  %36 = call i8* @strtok(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %142

39:                                               ; preds = %18
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = add nsw i32 %41, 1
  %43 = call i8* @UtLocalCacheCalloc(i32 %42)
  store i8* %43, i8** %8, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @strcpy(i8* %44, i8* %45)
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %47, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 13
  br i1 %55, label %56, label %63

56:                                               ; preds = %39
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %57, i64 %61
  store i8 0, i8* %62, align 1
  br label %63

63:                                               ; preds = %56, %39
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @CvAddToCommentList(i8* %64)
  %66 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %66, i8** %7, align 8
  br label %67

67:                                               ; preds = %137, %63
  %68 = load i8*, i8** %7, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %141

70:                                               ; preds = %67
  %71 = load i64, i64* @FALSE, align 8
  store i64 %71, i64* %9, align 8
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %110, %70
  %73 = load i32, i32* %6, align 4
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @strlen(i8* %74)
  %76 = add nsw i32 %75, 1
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i64, i64* %9, align 8
  %80 = icmp ne i64 %79, 0
  %81 = xor i1 %80, true
  br label %82

82:                                               ; preds = %78, %72
  %83 = phi i1 [ false, %72 ], [ %81, %78 ]
  br i1 %83, label %84, label %113

84:                                               ; preds = %82
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 32
  br i1 %91, label %92, label %109

92:                                               ; preds = %84
  %93 = load i8*, i8** %7, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 9
  br i1 %99, label %100, label %109

100:                                              ; preds = %92
  %101 = load i64, i64* @TRUE, align 8
  store i64 %101, i64* %9, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sub nsw i32 %102, 1
  %104 = load i8*, i8** %7, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8* %106, i8** %7, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  store i8 32, i8* %108, align 1
  br label %109

109:                                              ; preds = %100, %92, %84
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %72

113:                                              ; preds = %82
  %114 = load i8*, i8** %7, align 8
  %115 = call i32 @strlen(i8* %114)
  %116 = add nsw i32 %115, 1
  %117 = call i8* @UtLocalCacheCalloc(i32 %116)
  store i8* %117, i8** %8, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = load i8*, i8** %7, align 8
  %120 = call i32 @strcat(i8* %118, i8* %119)
  %121 = load i8*, i8** %8, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = call i32 @strlen(i8* %122)
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %121, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 13
  br i1 %129, label %130, label %137

130:                                              ; preds = %113
  %131 = load i8*, i8** %8, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = call i32 @strlen(i8* %132)
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %131, i64 %135
  store i8 0, i8* %136, align 1
  br label %137

137:                                              ; preds = %130, %113
  %138 = load i8*, i8** %8, align 8
  %139 = call i32 @CvAddToCommentList(i8* %138)
  %140 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %140, i8** %7, align 8
  br label %67

141:                                              ; preds = %67
  br label %178

142:                                              ; preds = %18
  %143 = load i8*, i8** %10, align 8
  %144 = call i32 @strlen(i8* %143)
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %144, %146
  %148 = add nsw i32 %147, 1
  %149 = call i8* @UtLocalCacheCalloc(i32 %148)
  store i8* %149, i8** %11, align 8
  store i32 0, i32* %6, align 4
  br label %150

150:                                              ; preds = %167, %142
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @ASL_COMMENT_STANDARD, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = load i32, i32* %6, align 4
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp slt i32 %156, %158
  br label %160

160:                                              ; preds = %155, %150
  %161 = phi i1 [ false, %150 ], [ %159, %155 ]
  br i1 %161, label %162, label %170

162:                                              ; preds = %160
  %163 = load i8*, i8** %11, align 8
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  store i8 32, i8* %166, align 1
  br label %167

167:                                              ; preds = %162
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %6, align 4
  br label %150

170:                                              ; preds = %160
  %171 = load i8*, i8** %11, align 8
  %172 = load i8*, i8** %10, align 8
  %173 = call i32 @strcat(i8* %171, i8* %172)
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i8*, i8** %11, align 8
  %177 = call i32 @CvPlaceComment(i64 %175, i8* %176)
  br label %178

178:                                              ; preds = %170, %141
  br label %179

179:                                              ; preds = %178, %14, %3
  ret void
}

declare dso_local i32 @CvDbgPrint(i8*, ...) #1

declare dso_local i8* @UtLocalCacheCalloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @CvAddToCommentList(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @CvPlaceComment(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
