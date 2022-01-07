; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_ficlSprintf.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_ficlSprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@FICL_TRUE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FICL_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @ficlSprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ficlSprintf(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [64 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @stackPopINT(i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @stackPopPtr(i32 %24)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %4, align 8
  %27 = load i8*, i8** %4, align 8
  store i8* %27, i8** %5, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @stackPopINT(i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @stackPopPtr(i32 %34)
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8* %40, i8** %8, align 8
  store i32 10, i32* %9, align 4
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* @FICL_TRUE, align 4
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %197, %150, %1
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ult i8* %44, %45
  br i1 %46, label %47, label %200

47:                                               ; preds = %43
  %48 = load i8*, i8** %7, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 37
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i8*, i8** %7, align 8
  store i8* %53, i8** %13, align 8
  store i32 1, i32* %15, align 4
  store i32 1, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %152

54:                                               ; preds = %47
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %7, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = icmp eq i8* %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %200

61:                                               ; preds = %54
  %62 = load i8*, i8** %7, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 48
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %61
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %7, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = icmp eq i8* %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %200

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %61
  %78 = load i8*, i8** %7, align 8
  %79 = load i8, i8* %78, align 1
  %80 = call i32 @isdigit(i8 signext %79)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 @strtol(i8* %84, i8** %7, i32 10)
  store i32 %85, i32* %15, align 4
  %86 = load i8*, i8** %7, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = icmp eq i8* %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %200

90:                                               ; preds = %83
  br label %109

91:                                               ; preds = %77
  %92 = load i8*, i8** %7, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 42
  br i1 %95, label %96, label %108

96:                                               ; preds = %91
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @stackPopINT(i32 %99)
  store i32 %100, i32* %15, align 4
  %101 = load i8*, i8** %7, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %7, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = icmp eq i8* %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  br label %200

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %107, %91
  br label %109

109:                                              ; preds = %108, %90
  %110 = load i8*, i8** %7, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  switch i32 %112, label %150 [
    i32 115, label %113
    i32 83, label %113
    i32 120, label %123
    i32 88, label %123
    i32 117, label %124
    i32 85, label %124
    i32 100, label %126
    i32 68, label %126
    i32 37, label %148
  ]

113:                                              ; preds = %109, %109
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @stackPopINT(i32 %116)
  store i32 %117, i32* %14, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @stackPopPtr(i32 %120)
  %122 = inttoptr i64 %121 to i8*
  store i8* %122, i8** %13, align 8
  br label %151

123:                                              ; preds = %109, %109
  store i32 16, i32* %9, align 4
  br label %124

124:                                              ; preds = %109, %109, %123
  %125 = load i32, i32* @TRUE, align 4
  store i32 %125, i32* %10, align 4
  br label %126

126:                                              ; preds = %109, %109, %124
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @stackPopINT(i32 %129)
  store i32 %130, i32* %17, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %126
  %134 = load i32, i32* %17, align 4
  %135 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @ultoa(i32 %134, i8* %135, i32 %136)
  br label %143

138:                                              ; preds = %126
  %139 = load i32, i32* %17, align 4
  %140 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @ltoa(i32 %139, i8* %140, i32 %141)
  br label %143

143:                                              ; preds = %138, %133
  store i32 10, i32* %9, align 4
  %144 = load i32, i32* @FALSE, align 4
  store i32 %144, i32* %10, align 4
  %145 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  store i8* %145, i8** %13, align 8
  %146 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %147 = call i32 @strlen(i8* %146)
  store i32 %147, i32* %14, align 4
  br label %151

148:                                              ; preds = %109
  %149 = load i8*, i8** %7, align 8
  store i8* %149, i8** %13, align 8
  store i32 1, i32* %14, align 4
  br label %150

150:                                              ; preds = %109, %148
  br label %43

151:                                              ; preds = %143, %113
  br label %152

152:                                              ; preds = %151, %52
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* @FICL_FALSE, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %197

156:                                              ; preds = %152
  %157 = load i32, i32* %15, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %156
  %160 = load i32, i32* %14, align 4
  store i32 %160, i32* %15, align 4
  br label %161

161:                                              ; preds = %159, %156
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* %3, align 4
  %164 = icmp sgt i32 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = load i32, i32* @FICL_FALSE, align 4
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* %3, align 4
  store i32 %167, i32* %15, align 4
  br label %168

168:                                              ; preds = %165, %161
  br label %169

169:                                              ; preds = %173, %168
  %170 = load i32, i32* %15, align 4
  %171 = load i32, i32* %14, align 4
  %172 = icmp sgt i32 %170, %171
  br i1 %172, label %173, label %185

173:                                              ; preds = %169
  %174 = load i32, i32* %16, align 4
  %175 = icmp ne i32 %174, 0
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i32 48, i32 32
  %178 = trunc i32 %177 to i8
  %179 = load i8*, i8** %4, align 8
  %180 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %180, i8** %4, align 8
  store i8 %178, i8* %179, align 1
  %181 = load i32, i32* %3, align 4
  %182 = add nsw i32 %181, -1
  store i32 %182, i32* %3, align 4
  %183 = load i32, i32* %15, align 4
  %184 = add nsw i32 %183, -1
  store i32 %184, i32* %15, align 4
  br label %169

185:                                              ; preds = %169
  %186 = load i8*, i8** %4, align 8
  %187 = load i8*, i8** %13, align 8
  %188 = load i32, i32* %14, align 4
  %189 = call i32 @memcpy(i8* %186, i8* %187, i32 %188)
  %190 = load i32, i32* %14, align 4
  %191 = load i8*, i8** %4, align 8
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds i8, i8* %191, i64 %192
  store i8* %193, i8** %4, align 8
  %194 = load i32, i32* %14, align 4
  %195 = load i32, i32* %3, align 4
  %196 = sub nsw i32 %195, %194
  store i32 %196, i32* %3, align 4
  br label %197

197:                                              ; preds = %185, %152
  %198 = load i8*, i8** %7, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %7, align 8
  br label %43

200:                                              ; preds = %106, %89, %75, %60, %43
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i8*, i8** %5, align 8
  %205 = call i32 @stackPushPtr(i32 %203, i8* %204)
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i8*, i8** %4, align 8
  %210 = load i8*, i8** %5, align 8
  %211 = ptrtoint i8* %209 to i64
  %212 = ptrtoint i8* %210 to i64
  %213 = sub i64 %211, %212
  %214 = trunc i64 %213 to i32
  %215 = call i32 @stackPushINT(i32 %208, i32 %214)
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %11, align 4
  %220 = call i32 @stackPushINT(i32 %218, i32 %219)
  ret void
}

declare dso_local i32 @stackPopINT(i32) #1

declare dso_local i64 @stackPopPtr(i32) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @ultoa(i32, i8*, i32) #1

declare dso_local i32 @ltoa(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @stackPushPtr(i32, i8*) #1

declare dso_local i32 @stackPushINT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
