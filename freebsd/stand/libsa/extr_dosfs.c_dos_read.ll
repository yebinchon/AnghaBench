; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_dosfs.c_dos_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_dosfs.c_dos_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i64 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, i8*, i64, i64*)* @dos_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dos_read(%struct.open_file* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.open_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i32, align 4
  store %struct.open_file* %0, %struct.open_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %19 = load %struct.open_file*, %struct.open_file** %6, align 8
  %20 = getelementptr inbounds %struct.open_file, %struct.open_file* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %17, align 8
  store i32 0, i32* %18, align 4
  %23 = call i32 @twiddle(i32 4)
  %24 = load i64, i64* %8, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %11, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  %31 = call i32 @fsize(%struct.TYPE_9__* %28, i32* %30)
  store i32 %31, i32* %10, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %5, align 4
  br label %194

35:                                               ; preds = %4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %37, %40
  store i32 %41, i32* %16, align 4
  %42 = icmp sgt i32 %36, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %16, align 4
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %43, %35
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %12, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 3
  %56 = call i32 @stclus(i32 %53, i32* %55)
  store i32 %56, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %45
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, 1
  %65 = load i32, i32* %12, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %58, %45
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %15, align 4
  br label %72

72:                                               ; preds = %163, %67
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %179

75:                                               ; preds = %72
  store i32 0, i32* %16, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %90, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @bytblk(%struct.TYPE_9__* %84, i32 %87)
  store i32 %88, i32* %16, align 4
  br label %89

89:                                               ; preds = %81, %78
  br label %97

90:                                               ; preds = %75
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %16, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %16, align 4
  br label %96

96:                                               ; preds = %93, %90
  br label %97

97:                                               ; preds = %96, %89
  br label %98

98:                                               ; preds = %118, %97
  %99 = load i32, i32* %16, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %16, align 4
  %101 = icmp ne i32 %99, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %98
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = call i32 @fatget(%struct.TYPE_9__* %105, i32* %14)
  store i32 %106, i32* %18, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %180

109:                                              ; preds = %102
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @okclus(%struct.TYPE_9__* %112, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %109
  %117 = load i32, i32* @EINVAL, align 4
  store i32 %117, i32* %18, align 4
  br label %180

118:                                              ; preds = %109
  br label %98

119:                                              ; preds = %98
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %119
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %12, align 4
  %129 = sub nsw i32 %127, %128
  store i32 %129, i32* %16, align 4
  %130 = load i32, i32* %15, align 4
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %122, %119
  %133 = load i32, i32* %15, align 4
  store i32 %133, i32* %16, align 4
  br label %134

134:                                              ; preds = %132, %122
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = load i32, i32* %14, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %134
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = load i32, i32* %14, align 4
  %145 = call i64 @blkoff(%struct.TYPE_9__* %143, i32 %144)
  br label %153

146:                                              ; preds = %134
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @secbyt(i32 %151)
  br label %153

153:                                              ; preds = %146, %140
  %154 = phi i64 [ %145, %140 ], [ %152, %146 ]
  %155 = load i32, i32* %12, align 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %154, %156
  %158 = load i8*, i8** %7, align 8
  %159 = load i32, i32* %16, align 4
  %160 = call i32 @ioread(%struct.TYPE_9__* %137, i64 %157, i8* %158, i32 %159)
  store i32 %160, i32* %18, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %153
  br label %180

163:                                              ; preds = %153
  %164 = load i32, i32* %16, align 4
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, %164
  store i32 %168, i32* %166, align 8
  %169 = load i32, i32* %14, align 4
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  store i32 0, i32* %12, align 4
  %172 = load i8*, i8** %7, align 8
  %173 = load i32, i32* %16, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  store i8* %175, i8** %7, align 8
  %176 = load i32, i32* %16, align 4
  %177 = load i32, i32* %15, align 4
  %178 = sub nsw i32 %177, %176
  store i32 %178, i32* %15, align 4
  br label %72

179:                                              ; preds = %72
  br label %180

180:                                              ; preds = %179, %162, %116, %108
  %181 = load i64*, i64** %9, align 8
  %182 = icmp ne i64* %181, null
  br i1 %182, label %183, label %192

183:                                              ; preds = %180
  %184 = load i64, i64* %8, align 8
  %185 = load i32, i32* %11, align 4
  %186 = sext i32 %185 to i64
  %187 = sub i64 %184, %186
  %188 = load i32, i32* %15, align 4
  %189 = sext i32 %188 to i64
  %190 = add i64 %187, %189
  %191 = load i64*, i64** %9, align 8
  store i64 %190, i64* %191, align 8
  br label %192

192:                                              ; preds = %183, %180
  %193 = load i32, i32* %18, align 4
  store i32 %193, i32* %5, align 4
  br label %194

194:                                              ; preds = %192, %33
  %195 = load i32, i32* %5, align 4
  ret i32 %195
}

declare dso_local i32 @twiddle(i32) #1

declare dso_local i32 @fsize(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @stclus(i32, i32*) #1

declare dso_local i32 @bytblk(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @fatget(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @okclus(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ioread(%struct.TYPE_9__*, i64, i8*, i32) #1

declare dso_local i64 @blkoff(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @secbyt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
