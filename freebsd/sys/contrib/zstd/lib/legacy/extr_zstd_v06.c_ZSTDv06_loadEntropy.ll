; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v06.c_ZSTDv06_loadEntropy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v06.c_ZSTDv06_loadEntropy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@dictionary_corrupted = common dso_local global i32 0, align 4
@MaxOff = common dso_local global i64 0, align 8
@OffFSELog = common dso_local global i64 0, align 8
@MaxML = common dso_local global i32 0, align 4
@MLFSELog = common dso_local global i32 0, align 4
@MaxLL = common dso_local global i32 0, align 4
@LLFSELog = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i8*, i64)* @ZSTDv06_loadEntropy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTDv06_loadEntropy(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @HUFv06_readDTableX4(i32 %30, i8* %31, i64 %32)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @HUFv06_isError(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load i32, i32* @dictionary_corrupted, align 4
  %39 = call i64 @ERROR(i32 %38)
  store i64 %39, i64* %4, align 8
  br label %189

40:                                               ; preds = %3
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %6, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %7, align 8
  %46 = sub i64 %45, %44
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* @MaxOff, align 8
  %48 = add nsw i64 %47, 1
  %49 = call i8* @llvm.stacksave()
  store i8* %49, i8** %12, align 8
  %50 = alloca i16, i64 %48, align 16
  store i64 %48, i64* %13, align 8
  %51 = load i64, i64* @MaxOff, align 8
  store i64 %51, i64* %14, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i64 (i16*, ...) @FSEv06_readNCount(i16* %50, i64* %14, i64* %15, i8* %52, i64 %53)
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i64 @FSEv06_isError(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %40
  %59 = load i32, i32* @dictionary_corrupted, align 4
  %60 = call i64 @ERROR(i32 %59)
  store i64 %60, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %90

61:                                               ; preds = %40
  %62 = load i64, i64* %15, align 8
  %63 = load i64, i64* @OffFSELog, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* @dictionary_corrupted, align 4
  %67 = call i64 @ERROR(i32 %66)
  store i64 %67, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %90

68:                                               ; preds = %61
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* %14, align 8
  %73 = trunc i64 %72 to i32
  %74 = load i64, i64* %15, align 8
  %75 = trunc i64 %74 to i32
  %76 = call i64 @FSEv06_buildDTable(i32 %71, i16* %50, i32 %73, i32 %75)
  store i64 %76, i64* %17, align 8
  %77 = load i64, i64* %17, align 8
  %78 = call i64 @FSEv06_isError(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %68
  %81 = load i32, i32* @dictionary_corrupted, align 4
  %82 = call i64 @ERROR(i32 %81)
  store i64 %82, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %90

83:                                               ; preds = %68
  %84 = load i8*, i8** %6, align 8
  %85 = load i64, i64* %9, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %6, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %7, align 8
  %89 = sub i64 %88, %87
  store i64 %89, i64* %7, align 8
  store i32 0, i32* %16, align 4
  br label %90

90:                                               ; preds = %83, %80, %65, %58
  %91 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %91)
  %92 = load i32, i32* %16, align 4
  switch i32 %92, label %191 [
    i32 0, label %93
    i32 1, label %189
  ]

93:                                               ; preds = %90
  %94 = load i32, i32* @MaxML, align 4
  %95 = add nsw i32 %94, 1
  %96 = zext i32 %95 to i64
  %97 = call i8* @llvm.stacksave()
  store i8* %97, i8** %18, align 8
  %98 = alloca i16, i64 %96, align 16
  store i64 %96, i64* %19, align 8
  %99 = load i32, i32* @MaxML, align 4
  store i32 %99, i32* %20, align 4
  %100 = load i8*, i8** %6, align 8
  %101 = load i64, i64* %7, align 8
  %102 = call i64 (i16*, ...) @FSEv06_readNCount(i16* %98, i32* %20, i32* %21, i8* %100, i64 %101)
  store i64 %102, i64* %10, align 8
  %103 = load i64, i64* %10, align 8
  %104 = call i64 @FSEv06_isError(i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %93
  %107 = load i32, i32* @dictionary_corrupted, align 4
  %108 = call i64 @ERROR(i32 %107)
  store i64 %108, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %136

109:                                              ; preds = %93
  %110 = load i32, i32* %21, align 4
  %111 = load i32, i32* @MLFSELog, align 4
  %112 = icmp ugt i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i32, i32* @dictionary_corrupted, align 4
  %115 = call i64 @ERROR(i32 %114)
  store i64 %115, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %136

116:                                              ; preds = %109
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %20, align 4
  %121 = load i32, i32* %21, align 4
  %122 = call i64 @FSEv06_buildDTable(i32 %119, i16* %98, i32 %120, i32 %121)
  store i64 %122, i64* %22, align 8
  %123 = load i64, i64* %22, align 8
  %124 = call i64 @FSEv06_isError(i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %116
  %127 = load i32, i32* @dictionary_corrupted, align 4
  %128 = call i64 @ERROR(i32 %127)
  store i64 %128, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %136

129:                                              ; preds = %116
  %130 = load i8*, i8** %6, align 8
  %131 = load i64, i64* %10, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  store i8* %132, i8** %6, align 8
  %133 = load i64, i64* %10, align 8
  %134 = load i64, i64* %7, align 8
  %135 = sub i64 %134, %133
  store i64 %135, i64* %7, align 8
  store i32 0, i32* %16, align 4
  br label %136

136:                                              ; preds = %129, %126, %113, %106
  %137 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %137)
  %138 = load i32, i32* %16, align 4
  switch i32 %138, label %191 [
    i32 0, label %139
    i32 1, label %189
  ]

139:                                              ; preds = %136
  %140 = load i32, i32* @MaxLL, align 4
  %141 = add nsw i32 %140, 1
  %142 = zext i32 %141 to i64
  %143 = call i8* @llvm.stacksave()
  store i8* %143, i8** %23, align 8
  %144 = alloca i16, i64 %142, align 16
  store i64 %142, i64* %24, align 8
  %145 = load i32, i32* @MaxLL, align 4
  store i32 %145, i32* %25, align 4
  %146 = load i8*, i8** %6, align 8
  %147 = load i64, i64* %7, align 8
  %148 = call i64 (i16*, ...) @FSEv06_readNCount(i16* %144, i32* %25, i32* %26, i8* %146, i64 %147)
  store i64 %148, i64* %11, align 8
  %149 = load i64, i64* %11, align 8
  %150 = call i64 @FSEv06_isError(i64 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %139
  %153 = load i32, i32* @dictionary_corrupted, align 4
  %154 = call i64 @ERROR(i32 %153)
  store i64 %154, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %176

155:                                              ; preds = %139
  %156 = load i32, i32* %26, align 4
  %157 = load i32, i32* @LLFSELog, align 4
  %158 = icmp ugt i32 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load i32, i32* @dictionary_corrupted, align 4
  %161 = call i64 @ERROR(i32 %160)
  store i64 %161, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %176

162:                                              ; preds = %155
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %25, align 4
  %167 = load i32, i32* %26, align 4
  %168 = call i64 @FSEv06_buildDTable(i32 %165, i16* %144, i32 %166, i32 %167)
  store i64 %168, i64* %27, align 8
  %169 = load i64, i64* %27, align 8
  %170 = call i64 @FSEv06_isError(i64 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %162
  %173 = load i32, i32* @dictionary_corrupted, align 4
  %174 = call i64 @ERROR(i32 %173)
  store i64 %174, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %176

175:                                              ; preds = %162
  store i32 0, i32* %16, align 4
  br label %176

176:                                              ; preds = %175, %172, %159, %152
  %177 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %177)
  %178 = load i32, i32* %16, align 4
  switch i32 %178, label %191 [
    i32 0, label %179
    i32 1, label %189
  ]

179:                                              ; preds = %176
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  store i32 1, i32* %181, align 4
  %182 = load i64, i64* %8, align 8
  %183 = load i64, i64* %9, align 8
  %184 = add i64 %182, %183
  %185 = load i64, i64* %10, align 8
  %186 = add i64 %184, %185
  %187 = load i64, i64* %11, align 8
  %188 = add i64 %186, %187
  store i64 %188, i64* %4, align 8
  br label %189

189:                                              ; preds = %179, %176, %136, %90, %37
  %190 = load i64, i64* %4, align 8
  ret i64 %190

191:                                              ; preds = %176, %136, %90
  unreachable
}

declare dso_local i64 @HUFv06_readDTableX4(i32, i8*, i64) #1

declare dso_local i64 @HUFv06_isError(i64) #1

declare dso_local i64 @ERROR(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @FSEv06_readNCount(i16*, ...) #1

declare dso_local i64 @FSEv06_isError(i64) #1

declare dso_local i64 @FSEv06_buildDTable(i32, i16*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
