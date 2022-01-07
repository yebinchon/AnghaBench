; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_fat.c_checkdirty.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_fat.c_checkdirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bootblock = type { i64, i64, i64, i32 }

@CLUST16_MASK = common dso_local global i64 0, align 8
@CLUST32_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"No space for FAT sectors (%zu)\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Unable to read FAT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @checkdirty(i32 %0, %struct.bootblock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.bootblock*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.bootblock* %1, %struct.bootblock** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %11 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CLUST16_MASK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %17 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CLUST32_MASK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %158

22:                                               ; preds = %15, %2
  %23 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %24 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  %26 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %27 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = mul i64 %29, %28
  store i64 %30, i64* %6, align 8
  %31 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %32 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %9, align 8
  %34 = call i32* @malloc(i64 %33)
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %22
  %38 = load i64, i64* %9, align 8
  %39 = call i32 (i8*, ...) @perr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %38)
  store i32 1, i32* %3, align 4
  br label %158

40:                                               ; preds = %22
  %41 = load i32, i32* %4, align 4
  %42 = load i64, i64* %6, align 8
  %43 = load i32, i32* @SEEK_SET, align 4
  %44 = call i64 @lseek(i32 %41, i64 %42, i32 %43)
  %45 = load i64, i64* %6, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = call i32 (i8*, ...) @perr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %154

49:                                               ; preds = %40
  %50 = load i32, i32* %4, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %53 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @read(i32 %50, i32* %51, i64 %54)
  %56 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %57 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = call i32 (i8*, ...) @perr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %154

62:                                               ; preds = %49
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %67 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %65, %68
  br i1 %69, label %75, label %70

70:                                               ; preds = %62
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 255
  br i1 %74, label %75, label %76

75:                                               ; preds = %70, %62
  br label %154

76:                                               ; preds = %70
  %77 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %78 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @CLUST16_MASK, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %76
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 248
  %87 = icmp ne i32 %86, 248
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load i32*, i32** %7, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 63
  %93 = icmp ne i32 %92, 63
  br i1 %93, label %94, label %95

94:                                               ; preds = %88, %82
  br label %154

95:                                               ; preds = %88
  br label %131

96:                                               ; preds = %76
  %97 = load i32*, i32** %7, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 255
  br i1 %100, label %129, label %101

101:                                              ; preds = %96
  %102 = load i32*, i32** %7, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 15
  %106 = icmp ne i32 %105, 15
  br i1 %106, label %129, label %107

107:                                              ; preds = %101
  %108 = load i32*, i32** %7, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 4
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 248
  %112 = icmp ne i32 %111, 248
  br i1 %112, label %129, label %113

113:                                              ; preds = %107
  %114 = load i32*, i32** %7, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 5
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 255
  br i1 %117, label %129, label %118

118:                                              ; preds = %113
  %119 = load i32*, i32** %7, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 6
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 255
  br i1 %122, label %129, label %123

123:                                              ; preds = %118
  %124 = load i32*, i32** %7, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 7
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 3
  %128 = icmp ne i32 %127, 3
  br i1 %128, label %129, label %130

129:                                              ; preds = %123, %118, %113, %107, %101, %96
  br label %154

130:                                              ; preds = %123
  br label %131

131:                                              ; preds = %130, %95
  %132 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %133 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @CLUST16_MASK, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %131
  %138 = load i32*, i32** %7, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 3
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, 192
  %142 = icmp eq i32 %141, 192
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  store i32 1, i32* %8, align 4
  br label %144

144:                                              ; preds = %143, %137
  br label %153

145:                                              ; preds = %131
  %146 = load i32*, i32** %7, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 7
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, 12
  %150 = icmp eq i32 %149, 12
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  store i32 1, i32* %8, align 4
  br label %152

152:                                              ; preds = %151, %145
  br label %153

153:                                              ; preds = %152, %144
  br label %154

154:                                              ; preds = %153, %129, %94, %75, %60, %47
  %155 = load i32*, i32** %7, align 8
  %156 = call i32 @free(i32* %155)
  %157 = load i32, i32* %8, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %154, %37, %21
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @perr(i8*, ...) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i64 @read(i32, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
