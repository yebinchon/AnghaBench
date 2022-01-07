; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/rcorder/extr_rcorder.c_crunch_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/rcorder/extr_rcorder.c_crunch_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@__const.crunch_file.delims = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"could not open %s\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"could not stat %s\00", align 1
@REQUIRE_STR = common dso_local global i32 0, align 4
@REQUIRE_LEN = common dso_local global i32 0, align 4
@REQUIRES_STR = common dso_local global i32 0, align 4
@REQUIRES_LEN = common dso_local global i32 0, align 4
@PROVIDE_STR = common dso_local global i32 0, align 4
@PROVIDE_LEN = common dso_local global i32 0, align 4
@PROVIDES_STR = common dso_local global i32 0, align 4
@PROVIDES_LEN = common dso_local global i32 0, align 4
@BEFORE_STR = common dso_local global i32 0, align 4
@BEFORE_LEN = common dso_local global i32 0, align 4
@KEYWORD_STR = common dso_local global i32 0, align 4
@KEYWORD_LEN = common dso_local global i32 0, align 4
@KEYWORDS_STR = common dso_local global i32 0, align 4
@KEYWORDS_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @crunch_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crunch_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca [3 x i8], align 1
  %12 = alloca %struct.stat, align 4
  store i8* %0, i8** %2, align 8
  %13 = bitcast [3 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.crunch_file.delims, i32 0, i32 0), i64 3, i1 false)
  %14 = load i8*, i8** %2, align 8
  %15 = call i32* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %3, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  br label %168

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @fileno(i32* %21)
  %23 = call i32 @fstat(i32 %22, %struct.stat* %12)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 @warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @fclose(i32* %28)
  br label %168

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @S_ISREG(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @fclose(i32* %36)
  br label %168

38:                                               ; preds = %30
  %39 = load i8*, i8** %2, align 8
  %40 = call i32* @filenode_new(i8* %39)
  store i32* %40, i32** %10, align 8
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %162, %38
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 2
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32*, i32** %3, align 8
  %46 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %47 = call i8* @fparseln(i32* %45, i32* null, i32* null, i8* %46, i32 0)
  store i8* %47, i8** %4, align 8
  %48 = icmp ne i8* %47, null
  br label %49

49:                                               ; preds = %44, %41
  %50 = phi i1 [ false, %41 ], [ %48, %44 ]
  br i1 %50, label %51, label %165

51:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %52 = load i32, i32* @REQUIRE_STR, align 4
  %53 = load i8*, i8** %4, align 8
  %54 = load i32, i32* @REQUIRE_LEN, align 4
  %55 = call i64 @strncmp(i32 %52, i8* %53, i32 %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @REQUIRE_LEN, align 4
  store i32 %58, i32* %5, align 4
  br label %118

59:                                               ; preds = %51
  %60 = load i32, i32* @REQUIRES_STR, align 4
  %61 = load i8*, i8** %4, align 8
  %62 = load i32, i32* @REQUIRES_LEN, align 4
  %63 = call i64 @strncmp(i32 %60, i8* %61, i32 %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @REQUIRES_LEN, align 4
  store i32 %66, i32* %5, align 4
  br label %117

67:                                               ; preds = %59
  %68 = load i32, i32* @PROVIDE_STR, align 4
  %69 = load i8*, i8** %4, align 8
  %70 = load i32, i32* @PROVIDE_LEN, align 4
  %71 = call i64 @strncmp(i32 %68, i8* %69, i32 %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @PROVIDE_LEN, align 4
  store i32 %74, i32* %6, align 4
  br label %116

75:                                               ; preds = %67
  %76 = load i32, i32* @PROVIDES_STR, align 4
  %77 = load i8*, i8** %4, align 8
  %78 = load i32, i32* @PROVIDES_LEN, align 4
  %79 = call i64 @strncmp(i32 %76, i8* %77, i32 %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @PROVIDES_LEN, align 4
  store i32 %82, i32* %6, align 4
  br label %115

83:                                               ; preds = %75
  %84 = load i32, i32* @BEFORE_STR, align 4
  %85 = load i8*, i8** %4, align 8
  %86 = load i32, i32* @BEFORE_LEN, align 4
  %87 = call i64 @strncmp(i32 %84, i8* %85, i32 %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* @BEFORE_LEN, align 4
  store i32 %90, i32* %7, align 4
  br label %114

91:                                               ; preds = %83
  %92 = load i32, i32* @KEYWORD_STR, align 4
  %93 = load i8*, i8** %4, align 8
  %94 = load i32, i32* @KEYWORD_LEN, align 4
  %95 = call i64 @strncmp(i32 %92, i8* %93, i32 %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* @KEYWORD_LEN, align 4
  store i32 %98, i32* %8, align 4
  br label %113

99:                                               ; preds = %91
  %100 = load i32, i32* @KEYWORDS_STR, align 4
  %101 = load i8*, i8** %4, align 8
  %102 = load i32, i32* @KEYWORDS_LEN, align 4
  %103 = call i64 @strncmp(i32 %100, i8* %101, i32 %102)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i32, i32* @KEYWORDS_LEN, align 4
  store i32 %106, i32* %8, align 4
  br label %112

107:                                              ; preds = %99
  %108 = load i32, i32* %9, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i32 2, i32* %9, align 4
  br label %111

111:                                              ; preds = %110, %107
  br label %162

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %112, %97
  br label %114

114:                                              ; preds = %113, %89
  br label %115

115:                                              ; preds = %114, %81
  br label %116

116:                                              ; preds = %115, %73
  br label %117

117:                                              ; preds = %116, %65
  br label %118

118:                                              ; preds = %117, %57
  store i32 1, i32* %9, align 4
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %118
  %122 = load i32*, i32** %10, align 8
  %123 = load i8*, i8** %4, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = call i32 @parse_require(i32* %122, i8* %126)
  br label %161

128:                                              ; preds = %118
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %128
  %132 = load i32*, i32** %10, align 8
  %133 = load i8*, i8** %4, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  %137 = call i32 @parse_provide(i32* %132, i8* %136)
  br label %160

138:                                              ; preds = %128
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %138
  %142 = load i32*, i32** %10, align 8
  %143 = load i8*, i8** %4, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = call i32 @parse_before(i32* %142, i8* %146)
  br label %159

148:                                              ; preds = %138
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %148
  %152 = load i32*, i32** %10, align 8
  %153 = load i8*, i8** %4, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = call i32 @parse_keywords(i32* %152, i8* %156)
  br label %158

158:                                              ; preds = %151, %148
  br label %159

159:                                              ; preds = %158, %141
  br label %160

160:                                              ; preds = %159, %131
  br label %161

161:                                              ; preds = %160, %121
  br label %162

162:                                              ; preds = %161, %111
  %163 = load i8*, i8** %4, align 8
  %164 = call i32 @free(i8* %163)
  br label %41

165:                                              ; preds = %49
  %166 = load i32*, i32** %3, align 8
  %167 = call i32 @fclose(i32* %166)
  br label %168

168:                                              ; preds = %165, %35, %25, %17
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local i32 @fstat(i32, %struct.stat*) #2

declare dso_local i32 @fileno(i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @S_ISREG(i32) #2

declare dso_local i32* @filenode_new(i8*) #2

declare dso_local i8* @fparseln(i32*, i32*, i32*, i8*, i32) #2

declare dso_local i64 @strncmp(i32, i8*, i32) #2

declare dso_local i32 @parse_require(i32*, i8*) #2

declare dso_local i32 @parse_provide(i32*, i8*) #2

declare dso_local i32 @parse_before(i32*, i8*) #2

declare dso_local i32 @parse_keywords(i32*, i8*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
