; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/getty/extr_chat.c_read_chat.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/getty/extr_chat.c_read_chat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@read_chat.ws = internal global [3 x i8] c" \09\00", align 1
@PAUSE_CH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8**)* @read_chat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @read_chat(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  %11 = load i8**, i8*** %3, align 8
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %4, align 8
  store i8** null, i8*** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %181

15:                                               ; preds = %1
  store i8* null, i8** %6, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @strlen(i8* %16)
  store i32 %17, i32* %7, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %178

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 1
  %22 = call i8* @malloc(i32 %21)
  store i8* %22, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %178

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  %27 = sdiv i32 %26, 2
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 8
  %31 = trunc i64 %30 to i32
  %32 = call i8* @malloc(i32 %31)
  %33 = bitcast i8* %32 to i8**
  store i8** %33, i8*** %5, align 8
  %34 = icmp ne i8** %33, null
  br i1 %34, label %35, label %178

35:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32* @strcpy(i8* %36, i8* %37)
  %39 = call i8* @strtok(i32* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @read_chat.ws, i64 0, i64 0))
  store i8* %39, i8** %8, align 8
  br label %40

40:                                               ; preds = %168, %35
  %41 = load i8*, i8** %8, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %170

43:                                               ; preds = %40
  %44 = load i8*, i8** %8, align 8
  store i8* %44, i8** %10, align 8
  store i8* %44, i8** %9, align 8
  br label %45

45:                                               ; preds = %121, %43
  %46 = load i8*, i8** %10, align 8
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %49, label %124

49:                                               ; preds = %45
  %50 = load i8*, i8** %9, align 8
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %52, 92
  br i1 %53, label %54, label %115

54:                                               ; preds = %49
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %9, align 8
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  switch i32 %58, label %106 [
    i32 97, label %59
    i32 114, label %62
    i32 110, label %65
    i32 102, label %68
    i32 98, label %71
    i32 101, label %74
    i32 116, label %77
    i32 112, label %80
    i32 115, label %85
    i32 83, label %85
    i32 120, label %88
    i32 48, label %97
    i32 0, label %111
  ]

59:                                               ; preds = %54
  %60 = load i8*, i8** %10, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %10, align 8
  store i8 7, i8* %60, align 1
  br label %114

62:                                               ; preds = %54
  %63 = load i8*, i8** %10, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %10, align 8
  store i8 13, i8* %63, align 1
  br label %114

65:                                               ; preds = %54
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %10, align 8
  store i8 10, i8* %66, align 1
  br label %114

68:                                               ; preds = %54
  %69 = load i8*, i8** %10, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %10, align 8
  store i8 12, i8* %69, align 1
  br label %114

71:                                               ; preds = %54
  %72 = load i8*, i8** %10, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %10, align 8
  store i8 8, i8* %72, align 1
  br label %114

74:                                               ; preds = %54
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %10, align 8
  store i8 27, i8* %75, align 1
  br label %114

77:                                               ; preds = %54
  %78 = load i8*, i8** %10, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %10, align 8
  store i8 9, i8* %78, align 1
  br label %114

80:                                               ; preds = %54
  %81 = load i32, i32* @PAUSE_CH, align 4
  %82 = trunc i32 %81 to i8
  %83 = load i8*, i8** %10, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %10, align 8
  store i8 %82, i8* %83, align 1
  br label %114

85:                                               ; preds = %54, %54
  %86 = load i8*, i8** %10, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %10, align 8
  store i8 32, i8* %86, align 1
  br label %114

88:                                               ; preds = %54
  %89 = load i8*, i8** %9, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %9, align 8
  %91 = call i8* @getdigit(i8** %9, i32 16, i32 2)
  %92 = ptrtoint i8* %91 to i8
  %93 = load i8*, i8** %10, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %10, align 8
  store i8 %92, i8* %93, align 1
  %95 = load i8*, i8** %9, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 -1
  store i8* %96, i8** %9, align 8
  br label %114

97:                                               ; preds = %54
  %98 = load i8*, i8** %9, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %9, align 8
  %100 = call i8* @getdigit(i8** %9, i32 8, i32 3)
  %101 = ptrtoint i8* %100 to i8
  %102 = load i8*, i8** %10, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %10, align 8
  store i8 %101, i8* %102, align 1
  %104 = load i8*, i8** %9, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 -1
  store i8* %105, i8** %9, align 8
  br label %114

106:                                              ; preds = %54
  %107 = load i8*, i8** %9, align 8
  %108 = load i8, i8* %107, align 1
  %109 = load i8*, i8** %10, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %10, align 8
  store i8 %108, i8* %109, align 1
  br label %114

111:                                              ; preds = %54
  %112 = load i8*, i8** %9, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 -1
  store i8* %113, i8** %9, align 8
  br label %114

114:                                              ; preds = %111, %106, %97, %88, %85, %80, %77, %74, %71, %68, %65, %62, %59
  br label %120

115:                                              ; preds = %49
  %116 = load i8*, i8** %9, align 8
  %117 = load i8, i8* %116, align 1
  %118 = load i8*, i8** %10, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %10, align 8
  store i8 %117, i8* %118, align 1
  br label %120

120:                                              ; preds = %115, %114
  br label %121

121:                                              ; preds = %120
  %122 = load i8*, i8** %9, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %9, align 8
  br label %45

124:                                              ; preds = %45
  %125 = load i8*, i8** %8, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 34
  br i1 %128, label %134, label %129

129:                                              ; preds = %124
  %130 = load i8*, i8** %8, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 39
  br i1 %133, label %134, label %161

134:                                              ; preds = %129, %124
  %135 = load i8*, i8** %8, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  %137 = load i8*, i8** %8, align 8
  %138 = load i8, i8* %137, align 1
  %139 = call i8* @strrchr(i8* %136, i8 signext %138)
  store i8* %139, i8** %9, align 8
  %140 = load i8*, i8** %9, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %160

142:                                              ; preds = %134
  %143 = load i8*, i8** %9, align 8
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = load i8*, i8** %8, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %145, %148
  br i1 %149, label %150, label %160

150:                                              ; preds = %142
  %151 = load i8*, i8** %9, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 1
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %150
  %157 = load i8*, i8** %9, align 8
  store i8 0, i8* %157, align 1
  %158 = load i8*, i8** %8, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %8, align 8
  br label %160

160:                                              ; preds = %156, %150, %142, %134
  br label %161

161:                                              ; preds = %160, %129
  %162 = load i8*, i8** %8, align 8
  %163 = load i8**, i8*** %5, align 8
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %7, align 4
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds i8*, i8** %163, i64 %166
  store i8* %162, i8** %167, align 8
  br label %168

168:                                              ; preds = %161
  %169 = call i8* @strtok(i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @read_chat.ws, i64 0, i64 0))
  store i8* %169, i8** %8, align 8
  br label %40

170:                                              ; preds = %40
  %171 = load i8**, i8*** %5, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  store i8* null, i8** %174, align 8
  %175 = load i8*, i8** %6, align 8
  %176 = load i8**, i8*** %3, align 8
  store i8* %175, i8** %176, align 8
  %177 = load i8**, i8*** %5, align 8
  store i8** %177, i8*** %2, align 8
  br label %183

178:                                              ; preds = %24, %19, %15
  %179 = load i8*, i8** %6, align 8
  %180 = call i32 @free(i8* %179)
  br label %181

181:                                              ; preds = %178, %1
  %182 = load i8**, i8*** %5, align 8
  store i8** %182, i8*** %2, align 8
  br label %183

183:                                              ; preds = %181, %170
  %184 = load i8**, i8*** %2, align 8
  ret i8** %184
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i8* @strtok(i32*, i8*) #1

declare dso_local i32* @strcpy(i8*, i8*) #1

declare dso_local i8* @getdigit(i8**, i32, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
