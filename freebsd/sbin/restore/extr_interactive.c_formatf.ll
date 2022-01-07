; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_interactive.c_formatf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_interactive.c_formatf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afile = type { i32, i32, i8, i8, i8* }

@UFS_ROOTINO = common dso_local global i32 0, align 4
@vflag = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%*ju \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.afile*, i32)* @formatf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @formatf(%struct.afile* %0, i32 %1) #0 {
  %3 = alloca %struct.afile*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.afile*, align 8
  %6 = alloca %struct.afile*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.afile* %0, %struct.afile** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* @UFS_ROOTINO, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.afile*, %struct.afile** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.afile, %struct.afile* %18, i64 %20
  store %struct.afile* %21, %struct.afile** %6, align 8
  %22 = load %struct.afile*, %struct.afile** %3, align 8
  %23 = getelementptr inbounds %struct.afile, %struct.afile* %22, i64 0
  store %struct.afile* %23, %struct.afile** %5, align 8
  br label %24

24:                                               ; preds = %63, %2
  %25 = load %struct.afile*, %struct.afile** %5, align 8
  %26 = load %struct.afile*, %struct.afile** %6, align 8
  %27 = icmp ult %struct.afile* %25, %26
  br i1 %27, label %28, label %66

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.afile*, %struct.afile** %5, align 8
  %31 = getelementptr inbounds %struct.afile, %struct.afile* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.afile*, %struct.afile** %5, align 8
  %36 = getelementptr inbounds %struct.afile, %struct.afile* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %34, %28
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.afile*, %struct.afile** %5, align 8
  %41 = getelementptr inbounds %struct.afile, %struct.afile* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.afile*, %struct.afile** %5, align 8
  %46 = getelementptr inbounds %struct.afile, %struct.afile* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %44, %38
  %49 = load %struct.afile*, %struct.afile** %5, align 8
  %50 = getelementptr inbounds %struct.afile, %struct.afile* %49, i32 0, i32 2
  %51 = load i8, i8* %50, align 8
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 32
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 1, i32* %9, align 4
  br label %55

55:                                               ; preds = %54, %48
  %56 = load %struct.afile*, %struct.afile** %5, align 8
  %57 = getelementptr inbounds %struct.afile, %struct.afile* %56, i32 0, i32 3
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 32
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 1, i32* %10, align 4
  br label %62

62:                                               ; preds = %61, %55
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.afile*, %struct.afile** %5, align 8
  %65 = getelementptr inbounds %struct.afile, %struct.afile* %64, i32 1
  store %struct.afile* %65, %struct.afile** %5, align 8
  br label %24

66:                                               ; preds = %24
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i64, i64* @vflag, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %78
  store i32 0, i32* %14, align 4
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %89, %81
  %84 = load i32, i32* %11, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %14, align 4
  br label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %11, align 4
  %91 = sdiv i32 %90, 10
  store i32 %91, i32* %11, align 4
  br label %83

92:                                               ; preds = %83
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %93, 1
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %92, %78
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = sdiv i32 81, %100
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  store i32 1, i32* %15, align 4
  br label %105

105:                                              ; preds = %104, %97
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* %15, align 4
  %108 = call i32 @howmany(i32 %106, i32 %107)
  store i32 %108, i32* %16, align 4
  store i32 0, i32* %11, align 4
  br label %109

109:                                              ; preds = %202, %105
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %16, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %205

113:                                              ; preds = %109
  store i32 0, i32* %12, align 4
  br label %114

114:                                              ; preds = %198, %113
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %15, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %201

118:                                              ; preds = %114
  %119 = load %struct.afile*, %struct.afile** %3, align 8
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %16, align 4
  %122 = mul nsw i32 %120, %121
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.afile, %struct.afile* %119, i64 %125
  store %struct.afile* %126, %struct.afile** %5, align 8
  %127 = load i64, i64* @vflag, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %118
  %130 = load i32, i32* @stderr, align 4
  %131 = load i32, i32* %14, align 4
  %132 = load %struct.afile*, %struct.afile** %5, align 8
  %133 = getelementptr inbounds %struct.afile, %struct.afile* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 (i32, i8*, ...) @fprintf(i32 %130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %131, i32 %134)
  %136 = load i32, i32* %14, align 4
  %137 = add nsw i32 %136, 1
  %138 = load %struct.afile*, %struct.afile** %5, align 8
  %139 = getelementptr inbounds %struct.afile, %struct.afile* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, %137
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %129, %118
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %142
  %146 = load %struct.afile*, %struct.afile** %5, align 8
  %147 = getelementptr inbounds %struct.afile, %struct.afile* %146, i32 0, i32 2
  %148 = load i8, i8* %147, align 8
  %149 = load i32, i32* @stderr, align 4
  %150 = call i32 @putc(i8 signext %148, i32 %149)
  %151 = load %struct.afile*, %struct.afile** %5, align 8
  %152 = getelementptr inbounds %struct.afile, %struct.afile* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %145, %142
  %156 = load i32, i32* @stderr, align 4
  %157 = load %struct.afile*, %struct.afile** %5, align 8
  %158 = getelementptr inbounds %struct.afile, %struct.afile* %157, i32 0, i32 4
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 (i32, i8*, ...) @fprintf(i32 %156, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %159)
  %161 = load i32, i32* %10, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %155
  %164 = load %struct.afile*, %struct.afile** %5, align 8
  %165 = getelementptr inbounds %struct.afile, %struct.afile* %164, i32 0, i32 3
  %166 = load i8, i8* %165, align 1
  %167 = load i32, i32* @stderr, align 4
  %168 = call i32 @putc(i8 signext %166, i32 %167)
  %169 = load %struct.afile*, %struct.afile** %5, align 8
  %170 = getelementptr inbounds %struct.afile, %struct.afile* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %163, %155
  %174 = load %struct.afile*, %struct.afile** %5, align 8
  %175 = load i32, i32* %16, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.afile, %struct.afile* %174, i64 %176
  %178 = load %struct.afile*, %struct.afile** %6, align 8
  %179 = icmp uge %struct.afile* %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %173
  %181 = load i32, i32* @stderr, align 4
  %182 = call i32 (i32, i8*, ...) @fprintf(i32 %181, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %201

183:                                              ; preds = %173
  %184 = load %struct.afile*, %struct.afile** %5, align 8
  %185 = getelementptr inbounds %struct.afile, %struct.afile* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %13, align 4
  br label %187

187:                                              ; preds = %194, %183
  %188 = load i32, i32* %13, align 4
  %189 = load i32, i32* %7, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %187
  %192 = load i32, i32* @stderr, align 4
  %193 = call i32 @putc(i8 signext 32, i32 %192)
  br label %194

194:                                              ; preds = %191
  %195 = load i32, i32* %13, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %13, align 4
  br label %187

197:                                              ; preds = %187
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %12, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %12, align 4
  br label %114

201:                                              ; preds = %180, %114
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %11, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %11, align 4
  br label %109

205:                                              ; preds = %109
  ret void
}

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @putc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
