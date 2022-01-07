; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_terminal.c_terminal_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_terminal.c_terminal_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termcapstr = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i8**, i32, i8* }

@TC_BUFSIZE = common dso_local global i32 0, align 4
@tstr = common dso_local global %struct.termcapstr* null, align 8
@T_str = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Out of termcap string space.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.termcapstr*, i8*)* @terminal_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @terminal_alloc(%struct.TYPE_5__* %0, %struct.termcapstr* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.termcapstr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.termcapstr* %1, %struct.termcapstr** %5, align 8
  store i8* %2, i8** %6, align 8
  %16 = load i32, i32* @TC_BUFSIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i8**, i8*** %22, align 8
  store i8** %23, i8*** %11, align 8
  %24 = load i8**, i8*** %11, align 8
  %25 = load %struct.termcapstr*, %struct.termcapstr** %5, align 8
  %26 = load %struct.termcapstr*, %struct.termcapstr** @tstr, align 8
  %27 = ptrtoint %struct.termcapstr* %25 to i64
  %28 = ptrtoint %struct.termcapstr* %26 to i64
  %29 = sub i64 %27, %28
  %30 = sdiv exact i64 %29, 4
  %31 = getelementptr inbounds i8*, i8** %24, i64 %30
  store i8** %31, i8*** %13, align 8
  %32 = trunc i64 %17 to i32
  %33 = call i32 @memset(i8* %19, i32 0, i32 %32)
  %34 = load i8*, i8** %6, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %3
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36, %3
  %42 = load i8**, i8*** %13, align 8
  store i8* null, i8** %42, align 8
  store i32 1, i32* %14, align 4
  br label %196

43:                                               ; preds = %36
  %44 = load i8*, i8** %6, align 8
  %45 = call i64 @strlen(i8* %44)
  store i64 %45, i64* %10, align 8
  br label %46

46:                                               ; preds = %43
  %47 = load i8**, i8*** %13, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %55

51:                                               ; preds = %46
  %52 = load i8**, i8*** %13, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @strlen(i8* %53)
  br label %55

55:                                               ; preds = %51, %50
  %56 = phi i64 [ 0, %50 ], [ %54, %51 ]
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp ule i64 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load i8**, i8*** %13, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i8**, i8*** %13, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @strcpy(i8* %66, i8* %67)
  br label %69

69:                                               ; preds = %64, %60
  store i32 1, i32* %14, align 4
  br label %196

70:                                               ; preds = %55
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 3
  %76 = load i32, i32* @TC_BUFSIZE, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %101

78:                                               ; preds = %70
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %82, i64 %87
  %89 = load i8**, i8*** %13, align 8
  store i8* %88, i8** %89, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @strcpy(i8* %88, i8* %90)
  %92 = load i64, i64* %10, align 8
  %93 = add i64 %92, 1
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = add i64 %98, %93
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %96, align 8
  store i32 1, i32* %14, align 4
  br label %196

101:                                              ; preds = %70
  store i64 0, i64* %9, align 8
  %102 = load i8**, i8*** %11, align 8
  store i8** %102, i8*** %12, align 8
  br label %103

103:                                              ; preds = %146, %101
  %104 = load i8**, i8*** %12, align 8
  %105 = load i8**, i8*** %11, align 8
  %106 = load i64, i64* @T_str, align 8
  %107 = getelementptr inbounds i8*, i8** %105, i64 %106
  %108 = icmp ult i8** %104, %107
  br i1 %108, label %109, label %149

109:                                              ; preds = %103
  %110 = load i8**, i8*** %12, align 8
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %145

113:                                              ; preds = %109
  %114 = load i8**, i8*** %12, align 8
  %115 = load i8*, i8** %114, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %145

119:                                              ; preds = %113
  %120 = load i8**, i8*** %12, align 8
  %121 = load i8*, i8** %120, align 8
  %122 = load i8**, i8*** %13, align 8
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %121, %123
  br i1 %124, label %125, label %145

125:                                              ; preds = %119
  %126 = load i8**, i8*** %12, align 8
  %127 = load i8*, i8** %126, align 8
  store i8* %127, i8** %15, align 8
  br label %128

128:                                              ; preds = %134, %125
  %129 = load i8*, i8** %15, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %128
  br label %134

134:                                              ; preds = %133
  %135 = load i8*, i8** %15, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %15, align 8
  %137 = load i8, i8* %135, align 1
  %138 = load i64, i64* %9, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %9, align 8
  %140 = getelementptr inbounds i8, i8* %19, i64 %138
  store i8 %137, i8* %140, align 1
  br label %128

141:                                              ; preds = %128
  %142 = load i64, i64* %9, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %9, align 8
  %144 = getelementptr inbounds i8, i8* %19, i64 %142
  store i8 0, i8* %144, align 1
  br label %145

145:                                              ; preds = %141, %119, %113, %109
  br label %146

146:                                              ; preds = %145
  %147 = load i8**, i8*** %12, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i32 1
  store i8** %148, i8*** %12, align 8
  br label %103

149:                                              ; preds = %103
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 2
  %153 = load i8*, i8** %152, align 8
  %154 = load i32, i32* @TC_BUFSIZE, align 4
  %155 = call i32 @memcpy(i8* %153, i8* %19, i32 %154)
  %156 = load i64, i64* %9, align 8
  %157 = trunc i64 %156 to i32
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  store i32 %157, i32* %160, align 8
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = add nsw i32 %164, 3
  %166 = load i32, i32* @TC_BUFSIZE, align 4
  %167 = icmp sge i32 %165, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %149
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @fprintf(i32 %171, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %196

173:                                              ; preds = %149
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 2
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %177, i64 %182
  %184 = load i8**, i8*** %13, align 8
  store i8* %183, i8** %184, align 8
  %185 = load i8*, i8** %6, align 8
  %186 = call i32 @strcpy(i8* %183, i8* %185)
  %187 = load i64, i64* %10, align 8
  %188 = add i64 %187, 1
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = add i64 %193, %188
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %191, align 8
  store i32 1, i32* %14, align 4
  br label %196

196:                                              ; preds = %173, %168, %78, %69, %41
  %197 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %197)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @fprintf(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
