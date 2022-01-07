; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_name6.c__hpsort.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_name6.c__hpsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i64, i32, i32** }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32, i32 }

@MAXADDRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hostent* (%struct.hostent*, %struct.TYPE_13__*)* @_hpsort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hostent* @_hpsort(%struct.hostent* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.hostent*, align 8
  %4 = alloca %struct.hostent*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.hostent* %0, %struct.hostent** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %18 = load i32, i32* @MAXADDRS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %16, align 4
  %25 = load %struct.hostent*, %struct.hostent** %4, align 8
  %26 = icmp eq %struct.hostent* %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %2
  %28 = load %struct.hostent*, %struct.hostent** %4, align 8
  %29 = getelementptr inbounds %struct.hostent, %struct.hostent* %28, i32 0, i32 2
  %30 = load i32**, i32*** %29, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %16, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34, %27, %2
  %38 = load %struct.hostent*, %struct.hostent** %4, align 8
  store %struct.hostent* %38, %struct.hostent** %3, align 8
  store i32 1, i32* %17, align 4
  br label %192

39:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %115, %39
  %41 = load %struct.hostent*, %struct.hostent** %4, align 8
  %42 = getelementptr inbounds %struct.hostent, %struct.hostent* %41, i32 0, i32 2
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %9, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %118

49:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %106, %49
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %109

54:                                               ; preds = %50
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  store i32* %61, i32** %10, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  store i32* %68, i32** %11, align 8
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %95, %54
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.hostent*, %struct.hostent** %4, align 8
  %72 = getelementptr inbounds %struct.hostent, %struct.hostent* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %98

75:                                               ; preds = %69
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %11, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %80, %85
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %86, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %75
  br label %98

94:                                               ; preds = %75
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %69

98:                                               ; preds = %93, %69
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.hostent*, %struct.hostent** %4, align 8
  %101 = getelementptr inbounds %struct.hostent, %struct.hostent* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %99, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %109

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %50

109:                                              ; preds = %104, %50
  %110 = load i32, i32* %7, align 4
  %111 = trunc i32 %110 to i8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %21, i64 %113
  store i8 %111, i8* %114, align 1
  br label %115

115:                                              ; preds = %109
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %6, align 4
  br label %40

118:                                              ; preds = %40
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %8, align 4
  %120 = load %struct.hostent*, %struct.hostent** %4, align 8
  %121 = getelementptr inbounds %struct.hostent, %struct.hostent* %120, i32 0, i32 2
  %122 = load i32**, i32*** %121, align 8
  store i32** %122, i32*** %12, align 8
  store i32 0, i32* %6, align 4
  br label %123

123:                                              ; preds = %187, %118
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %8, align 4
  %126 = sub nsw i32 %125, 1
  %127 = icmp slt i32 %124, %126
  br i1 %127, label %128, label %190

128:                                              ; preds = %123
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  br label %131

131:                                              ; preds = %183, %128
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %186

135:                                              ; preds = %131
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %21, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %21, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp sgt i32 %140, %145
  br i1 %146, label %147, label %182

147:                                              ; preds = %135
  %148 = load i32**, i32*** %12, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32*, i32** %148, i64 %150
  %152 = load i32*, i32** %151, align 8
  store i32* %152, i32** %9, align 8
  %153 = load i32**, i32*** %12, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32*, i32** %153, i64 %155
  %157 = load i32*, i32** %156, align 8
  %158 = load i32**, i32*** %12, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32*, i32** %158, i64 %160
  store i32* %157, i32** %161, align 8
  %162 = load i32*, i32** %9, align 8
  %163 = load i32**, i32*** %12, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32*, i32** %163, i64 %165
  store i32* %162, i32** %166, align 8
  %167 = load i32, i32* %6, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %21, i64 %168
  %170 = load i8, i8* %169, align 1
  store i8 %170, i8* %13, align 1
  %171 = load i32, i32* %7, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %21, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = load i32, i32* %6, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %21, i64 %176
  store i8 %174, i8* %177, align 1
  %178 = load i8, i8* %13, align 1
  %179 = load i32, i32* %7, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %21, i64 %180
  store i8 %178, i8* %181, align 1
  br label %182

182:                                              ; preds = %147, %135
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %7, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %7, align 4
  br label %131

186:                                              ; preds = %131
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %6, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %6, align 4
  br label %123

190:                                              ; preds = %123
  %191 = load %struct.hostent*, %struct.hostent** %4, align 8
  store %struct.hostent* %191, %struct.hostent** %3, align 8
  store i32 1, i32* %17, align 4
  br label %192

192:                                              ; preds = %190, %37
  %193 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %193)
  %194 = load %struct.hostent*, %struct.hostent** %3, align 8
  ret %struct.hostent* %194
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
