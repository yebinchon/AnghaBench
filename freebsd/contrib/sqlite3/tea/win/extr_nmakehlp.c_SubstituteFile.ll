; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/tea/win/extr_nmakehlp.c_SubstituteFile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/tea/win/extr_nmakehlp.c_SubstituteFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, %struct.TYPE_4__* }

@SubstituteFile.szBuffer = internal global [1024 x i8] zeroinitializer, align 16
@SubstituteFile.szCopy = internal global [1024 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @SubstituteFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SubstituteFile(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 1024, i64* %5, align 8
  store i8* null, i8** %6, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %7, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32* @fopen(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %210

23:                                               ; preds = %2
  %24 = load i8*, i8** %3, align 8
  %25 = call i32* @fopen(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %131

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %122, %28
  %30 = load i64, i64* %5, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32* @fgets(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @SubstituteFile.szBuffer, i64 0, i64 0), i64 %30, i32* %31)
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %128

34:                                               ; preds = %29
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @SubstituteFile.szBuffer, i64 0, i64 0), i8** %10, align 8
  br label %35

35:                                               ; preds = %50, %34
  %36 = load i8*, i8** %10, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load i8*, i8** %10, align 8
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i8*, i8** %10, align 8
  %45 = load i8, i8* %44, align 1
  %46 = call i64 @isspace(i8 zeroext %45)
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %43, %38, %35
  %49 = phi i1 [ false, %38 ], [ false, %35 ], [ %47, %43 ]
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = load i8*, i8** %10, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %10, align 8
  br label %35

53:                                               ; preds = %48
  %54 = load i8*, i8** %10, align 8
  store i8* %54, i8** %11, align 8
  br label %55

55:                                               ; preds = %71, %53
  %56 = load i8*, i8** %11, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load i8*, i8** %11, align 8
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i8*, i8** %11, align 8
  %65 = load i8, i8* %64, align 1
  %66 = call i64 @isspace(i8 zeroext %65)
  %67 = icmp ne i64 %66, 0
  %68 = xor i1 %67, true
  br label %69

69:                                               ; preds = %63, %58, %55
  %70 = phi i1 [ false, %58 ], [ false, %55 ], [ %68, %63 ]
  br i1 %70, label %71, label %74

71:                                               ; preds = %69
  %72 = load i8*, i8** %11, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %11, align 8
  br label %55

74:                                               ; preds = %69
  %75 = load i8*, i8** %11, align 8
  store i8* %75, i8** %12, align 8
  br label %76

76:                                               ; preds = %91, %74
  %77 = load i8*, i8** %12, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = load i8*, i8** %12, align 8
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i8*, i8** %12, align 8
  %86 = load i8, i8* %85, align 1
  %87 = call i64 @isspace(i8 zeroext %86)
  %88 = icmp ne i64 %87, 0
  br label %89

89:                                               ; preds = %84, %79, %76
  %90 = phi i1 [ false, %79 ], [ false, %76 ], [ %88, %84 ]
  br i1 %90, label %91, label %94

91:                                               ; preds = %89
  %92 = load i8*, i8** %12, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %12, align 8
  br label %76

94:                                               ; preds = %89
  %95 = load i8*, i8** %12, align 8
  store i8* %95, i8** %13, align 8
  br label %96

96:                                               ; preds = %119, %94
  %97 = load i8*, i8** %13, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %117

99:                                               ; preds = %96
  %100 = load i8*, i8** %13, align 8
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %99
  %105 = load i8*, i8** %13, align 8
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %107, 13
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = load i8*, i8** %13, align 8
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp eq i32 %112, 10
  br label %114

114:                                              ; preds = %109, %104
  %115 = phi i1 [ true, %104 ], [ %113, %109 ]
  %116 = xor i1 %115, true
  br label %117

117:                                              ; preds = %114, %99, %96
  %118 = phi i1 [ false, %99 ], [ false, %96 ], [ %116, %114 ]
  br i1 %118, label %119, label %122

119:                                              ; preds = %117
  %120 = load i8*, i8** %13, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %13, align 8
  br label %96

122:                                              ; preds = %117
  %123 = load i8*, i8** %11, align 8
  store i8 0, i8* %123, align 1
  %124 = load i8*, i8** %13, align 8
  store i8 0, i8* %124, align 1
  %125 = load i8*, i8** %10, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = call i32 @list_insert(%struct.TYPE_4__** %7, i8* %125, i8* %126)
  br label %29

128:                                              ; preds = %29
  %129 = load i32*, i32** %9, align 8
  %130 = call i32 @fclose(i32* %129)
  br label %131

131:                                              ; preds = %128, %23
  br label %132

132:                                              ; preds = %206, %131
  %133 = load i64, i64* %5, align 8
  %134 = load i32*, i32** %8, align 8
  %135 = call i32* @fgets(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @SubstituteFile.szBuffer, i64 0, i64 0), i64 %133, i32* %134)
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %208

137:                                              ; preds = %132
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %14, align 8
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %138, %struct.TYPE_4__** %14, align 8
  br label %139

139:                                              ; preds = %202, %137
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %141 = icmp ne %struct.TYPE_4__* %140, null
  br i1 %141, label %142, label %206

142:                                              ; preds = %139
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = call i8* @strstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @SubstituteFile.szBuffer, i64 0, i64 0), i8* %145)
  store i8* %146, i8** %15, align 8
  %147 = load i8*, i8** %15, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %201

149:                                              ; preds = %142
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @SubstituteFile.szCopy, i64 0, i64 0), i8** %16, align 8
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @SubstituteFile.szBuffer, i64 0, i64 0), i8** %17, align 8
  br label %150

150:                                              ; preds = %154, %149
  %151 = load i8*, i8** %17, align 8
  %152 = load i8*, i8** %15, align 8
  %153 = icmp ne i8* %151, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %150
  %155 = load i8*, i8** %17, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %17, align 8
  %157 = load i8, i8* %155, align 1
  %158 = load i8*, i8** %16, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %16, align 8
  store i8 %157, i8* %158, align 1
  br label %150

160:                                              ; preds = %150
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  store i8* %163, i8** %18, align 8
  br label %164

164:                                              ; preds = %174, %160
  %165 = load i8*, i8** %18, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %172

167:                                              ; preds = %164
  %168 = load i8*, i8** %18, align 8
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp ne i32 %170, 0
  br label %172

172:                                              ; preds = %167, %164
  %173 = phi i1 [ false, %164 ], [ %171, %167 ]
  br i1 %173, label %174, label %180

174:                                              ; preds = %172
  %175 = load i8*, i8** %18, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %18, align 8
  %177 = load i8, i8* %175, align 1
  %178 = load i8*, i8** %16, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %16, align 8
  store i8 %177, i8* %178, align 1
  br label %164

180:                                              ; preds = %172
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 @strlen(i8* %183)
  %185 = load i8*, i8** %17, align 8
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i8, i8* %185, i64 %186
  store i8* %187, i8** %17, align 8
  br label %188

188:                                              ; preds = %192, %180
  %189 = load i8*, i8** %17, align 8
  %190 = load i8, i8* %189, align 1
  %191 = icmp ne i8 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %188
  %193 = load i8*, i8** %17, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %17, align 8
  %195 = load i8, i8* %193, align 1
  %196 = load i8*, i8** %16, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** %16, align 8
  store i8 %195, i8* %196, align 1
  br label %188

198:                                              ; preds = %188
  %199 = load i8*, i8** %16, align 8
  store i8 0, i8* %199, align 1
  %200 = call i32 @memcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @SubstituteFile.szBuffer, i64 0, i64 0), i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @SubstituteFile.szCopy, i64 0, i64 0), i32 1024)
  br label %201

201:                                              ; preds = %198, %142
  br label %202

202:                                              ; preds = %201
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 2
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  store %struct.TYPE_4__* %205, %struct.TYPE_4__** %14, align 8
  br label %139

206:                                              ; preds = %139
  %207 = call i32 @printf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @SubstituteFile.szBuffer, i64 0, i64 0))
  br label %132

208:                                              ; preds = %132
  %209 = call i32 @list_free(%struct.TYPE_4__** %7)
  br label %210

210:                                              ; preds = %208, %2
  %211 = load i32*, i32** %8, align 8
  %212 = call i32 @fclose(i32* %211)
  ret i32 0
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32* @fgets(i8*, i64, i32*) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @list_insert(%struct.TYPE_4__**, i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @list_free(%struct.TYPE_4__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
