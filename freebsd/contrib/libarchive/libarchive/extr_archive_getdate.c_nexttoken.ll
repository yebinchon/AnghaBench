; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_getdate.c_nexttoken.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_getdate.c_nexttoken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LEXICON = type { i8*, i64, i32, i32 }

@TimeWords = common dso_local global %struct.LEXICON* null, align 8
@tUNUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*)* @nexttoken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nexttoken(i8** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8, align 1
  %7 = alloca [64 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.LEXICON*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i8** %0, i8*** %4, align 8
  store i32* %1, i32** %5, align 8
  br label %13

13:                                               ; preds = %61, %2
  br label %14

14:                                               ; preds = %20, %13
  %15 = load i8**, i8*** %4, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = call i64 @isspace(i8 zeroext %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i8**, i8*** %4, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %21, align 8
  br label %14

24:                                               ; preds = %14
  %25 = load i8**, i8*** %4, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 40
  br i1 %29, label %30, label %62

30:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %58, %30
  %32 = load i8**, i8*** %4, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %32, align 8
  %35 = load i8, i8* %33, align 1
  store i8 %35, i8* %6, align 1
  %36 = load i8, i8* %6, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i8, i8* %6, align 1
  %41 = sext i8 %40 to i32
  store i32 %41, i32* %3, align 4
  br label %199

42:                                               ; preds = %31
  %43 = load i8, i8* %6, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 40
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %57

49:                                               ; preds = %42
  %50 = load i8, i8* %6, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 41
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %53, %49
  br label %57

57:                                               ; preds = %56, %46
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %31, label %61

61:                                               ; preds = %58
  br label %13

62:                                               ; preds = %24
  %63 = load i8**, i8*** %4, align 8
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %9, align 8
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %112, %62
  %66 = load i8*, i8** %9, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %65
  %71 = load i8*, i8** %9, align 8
  %72 = load i8, i8* %71, align 1
  %73 = call i64 @isalnum(i8 zeroext %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load i8*, i8** %9, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 46
  br i1 %79, label %80, label %84

80:                                               ; preds = %75, %70
  %81 = load i32, i32* %11, align 4
  %82 = zext i32 %81 to i64
  %83 = icmp ult i64 %82, 63
  br label %84

84:                                               ; preds = %80, %75, %65
  %85 = phi i1 [ false, %75 ], [ false, %65 ], [ %83, %80 ]
  br i1 %85, label %86, label %115

86:                                               ; preds = %84
  %87 = load i8*, i8** %9, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 46
  br i1 %90, label %91, label %112

91:                                               ; preds = %86
  %92 = load i8*, i8** %9, align 8
  %93 = load i8, i8* %92, align 1
  %94 = call i64 @isupper(i8 zeroext %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = load i8*, i8** %9, align 8
  %98 = load i8, i8* %97, align 1
  %99 = call signext i8 @tolower(i8 zeroext %98)
  %100 = load i32, i32* %11, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %11, align 4
  %102 = zext i32 %100 to i64
  %103 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 %102
  store i8 %99, i8* %103, align 1
  br label %111

104:                                              ; preds = %91
  %105 = load i8*, i8** %9, align 8
  %106 = load i8, i8* %105, align 1
  %107 = load i32, i32* %11, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %11, align 4
  %109 = zext i32 %107 to i64
  %110 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 %109
  store i8 %106, i8* %110, align 1
  br label %111

111:                                              ; preds = %104, %96
  br label %112

112:                                              ; preds = %111, %86
  %113 = load i8*, i8** %9, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %9, align 8
  br label %65

115:                                              ; preds = %84
  %116 = load i32, i32* %11, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 %117
  store i8 0, i8* %118, align 1
  %119 = load %struct.LEXICON*, %struct.LEXICON** @TimeWords, align 8
  store %struct.LEXICON* %119, %struct.LEXICON** %10, align 8
  br label %120

120:                                              ; preds = %161, %115
  %121 = load %struct.LEXICON*, %struct.LEXICON** %10, align 8
  %122 = getelementptr inbounds %struct.LEXICON, %struct.LEXICON* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %164

125:                                              ; preds = %120
  %126 = load %struct.LEXICON*, %struct.LEXICON** %10, align 8
  %127 = getelementptr inbounds %struct.LEXICON, %struct.LEXICON* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %12, align 8
  %129 = load i64, i64* %12, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %125
  %132 = load %struct.LEXICON*, %struct.LEXICON** %10, align 8
  %133 = getelementptr inbounds %struct.LEXICON, %struct.LEXICON* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i64 @strlen(i8* %134)
  store i64 %135, i64* %12, align 8
  br label %136

136:                                              ; preds = %131, %125
  %137 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %138 = call i64 @strlen(i8* %137)
  %139 = load i64, i64* %12, align 8
  %140 = icmp uge i64 %138, %139
  br i1 %140, label %141, label %160

141:                                              ; preds = %136
  %142 = load %struct.LEXICON*, %struct.LEXICON** %10, align 8
  %143 = getelementptr inbounds %struct.LEXICON, %struct.LEXICON* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %146 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %147 = call i64 @strlen(i8* %146)
  %148 = call i64 @strncmp(i8* %144, i8* %145, i64 %147)
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %141
  %151 = load i8*, i8** %9, align 8
  %152 = load i8**, i8*** %4, align 8
  store i8* %151, i8** %152, align 8
  %153 = load %struct.LEXICON*, %struct.LEXICON** %10, align 8
  %154 = getelementptr inbounds %struct.LEXICON, %struct.LEXICON* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load i32*, i32** %5, align 8
  store i32 %155, i32* %156, align 4
  %157 = load %struct.LEXICON*, %struct.LEXICON** %10, align 8
  %158 = getelementptr inbounds %struct.LEXICON, %struct.LEXICON* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %3, align 4
  br label %199

160:                                              ; preds = %141, %136
  br label %161

161:                                              ; preds = %160
  %162 = load %struct.LEXICON*, %struct.LEXICON** %10, align 8
  %163 = getelementptr inbounds %struct.LEXICON, %struct.LEXICON* %162, i32 1
  store %struct.LEXICON* %163, %struct.LEXICON** %10, align 8
  br label %120

164:                                              ; preds = %120
  %165 = load i8**, i8*** %4, align 8
  %166 = load i8*, i8** %165, align 8
  %167 = load i8, i8* %166, align 1
  store i8 %167, i8* %6, align 1
  %168 = call i64 @isdigit(i8 zeroext %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %193

170:                                              ; preds = %164
  %171 = load i32*, i32** %5, align 8
  store i32 0, i32* %171, align 4
  br label %172

172:                                              ; preds = %179, %170
  %173 = load i8**, i8*** %4, align 8
  %174 = load i8*, i8** %173, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %173, align 8
  %176 = load i8, i8* %174, align 1
  store i8 %176, i8* %6, align 1
  %177 = call i64 @isdigit(i8 zeroext %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %172
  %180 = load i32*, i32** %5, align 8
  %181 = load i32, i32* %180, align 4
  %182 = mul nsw i32 10, %181
  %183 = load i8, i8* %6, align 1
  %184 = sext i8 %183 to i32
  %185 = add nsw i32 %182, %184
  %186 = sub nsw i32 %185, 48
  %187 = load i32*, i32** %5, align 8
  store i32 %186, i32* %187, align 4
  br label %172

188:                                              ; preds = %172
  %189 = load i8**, i8*** %4, align 8
  %190 = load i8*, i8** %189, align 8
  %191 = getelementptr inbounds i8, i8* %190, i32 -1
  store i8* %191, i8** %189, align 8
  %192 = load i32, i32* @tUNUMBER, align 4
  store i32 %192, i32* %3, align 4
  br label %199

193:                                              ; preds = %164
  %194 = load i8**, i8*** %4, align 8
  %195 = load i8*, i8** %194, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %196, i8** %194, align 8
  %197 = load i8, i8* %195, align 1
  %198 = sext i8 %197 to i32
  store i32 %198, i32* %3, align 4
  br label %199

199:                                              ; preds = %193, %188, %150, %39
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64 @isalnum(i8 zeroext) #1

declare dso_local i64 @isupper(i8 zeroext) #1

declare dso_local signext i8 @tolower(i8 zeroext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
