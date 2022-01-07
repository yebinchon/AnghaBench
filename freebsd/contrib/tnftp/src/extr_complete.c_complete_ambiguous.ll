; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_complete.c_complete_ambiguous.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_complete.c_complete_ambiguous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8** }

@MAXPATHLEN = common dso_local global i32 0, align 4
@CC_ERROR = common dso_local global i8 0, align 1
@CC_REFRESH = common dso_local global i8 0, align 1
@el = common dso_local global i32 0, align 4
@CC_REFRESH_BEEP = common dso_local global i8 0, align 1
@ttyout = common dso_local global i32 0, align 4
@comparstr = common dso_local global i32 0, align 4
@CC_REDISPLAY = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8*, i32, %struct.TYPE_4__*)* @complete_ambiguous to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @complete_ambiguous(i8* %0, i32 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %17 = load i32, i32* @MAXPATHLEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @strlen(i8* %21)
  store i64 %22, i64* %15, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i8, i8* @CC_ERROR, align 1
  store i8 %28, i8* %4, align 1
  store i32 1, i32* %16, align 4
  br label %159

29:                                               ; preds = %3
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %61

34:                                               ; preds = %29
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i64, i64* %15, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %11, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load i8, i8* @CC_REFRESH, align 1
  store i8 %47, i8* %4, align 1
  store i32 1, i32* %16, align 4
  br label %159

48:                                               ; preds = %34
  %49 = trunc i64 %18 to i32
  %50 = load i8*, i8** %11, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = call i64 @strlen(i8* %51)
  %53 = call i32 @ftpvis(i8* %20, i32 %49, i8* %50, i64 %52)
  %54 = load i32, i32* @el, align 4
  %55 = call i32 @el_insertstr(i32 %54, i8* %20)
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i8, i8* @CC_ERROR, align 1
  store i8 %58, i8* %4, align 1
  store i32 1, i32* %16, align 4
  br label %159

59:                                               ; preds = %48
  %60 = load i8, i8* @CC_REFRESH, align 1
  store i8 %60, i8* %4, align 1
  store i32 1, i32* %16, align 4
  br label %159

61:                                               ; preds = %29
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %144, label %64

64:                                               ; preds = %61
  store i64 0, i64* %14, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %10, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = call i64 @strlen(i8* %70)
  store i64 %71, i64* %14, align 8
  store i64 1, i64* %12, align 8
  br label %72

72:                                               ; preds = %120, %64
  %73 = load i64, i64* %12, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = icmp ult i64 %73, %77
  br i1 %78, label %79, label %123

79:                                               ; preds = %72
  %80 = load i64, i64* %15, align 8
  store i64 %80, i64* %13, align 8
  br label %81

81:                                               ; preds = %110, %79
  %82 = load i64, i64* %13, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i8**, i8*** %84, align 8
  %86 = load i64, i64* %12, align 8
  %87 = getelementptr inbounds i8*, i8** %85, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @strlen(i8* %88)
  %90 = icmp ult i64 %82, %89
  br i1 %90, label %91, label %113

91:                                               ; preds = %81
  %92 = load i8*, i8** %10, align 8
  %93 = load i64, i64* %13, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i8**, i8*** %98, align 8
  %100 = load i64, i64* %12, align 8
  %101 = getelementptr inbounds i8*, i8** %99, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = load i64, i64* %13, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %96, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %91
  br label %113

109:                                              ; preds = %91
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %13, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %13, align 8
  br label %81

113:                                              ; preds = %108, %81
  %114 = load i64, i64* %13, align 8
  %115 = load i64, i64* %14, align 8
  %116 = icmp ult i64 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = load i64, i64* %13, align 8
  store i64 %118, i64* %14, align 8
  br label %119

119:                                              ; preds = %117, %113
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* %12, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %12, align 8
  br label %72

123:                                              ; preds = %72
  %124 = load i64, i64* %14, align 8
  %125 = load i64, i64* %15, align 8
  %126 = icmp ugt i64 %124, %125
  br i1 %126, label %127, label %143

127:                                              ; preds = %123
  %128 = trunc i64 %18 to i32
  %129 = load i8*, i8** %10, align 8
  %130 = load i64, i64* %15, align 8
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  %132 = load i64, i64* %14, align 8
  %133 = load i64, i64* %15, align 8
  %134 = sub i64 %132, %133
  %135 = call i32 @ftpvis(i8* %20, i32 %128, i8* %131, i64 %134)
  %136 = load i32, i32* @el, align 4
  %137 = call i32 @el_insertstr(i32 %136, i8* %20)
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %139, label %141

139:                                              ; preds = %127
  %140 = load i8, i8* @CC_ERROR, align 1
  store i8 %140, i8* %4, align 1
  store i32 1, i32* %16, align 4
  br label %159

141:                                              ; preds = %127
  %142 = load i8, i8* @CC_REFRESH_BEEP, align 1
  store i8 %142, i8* %4, align 1
  store i32 1, i32* %16, align 4
  br label %159

143:                                              ; preds = %123
  br label %144

144:                                              ; preds = %143, %61
  %145 = load i32, i32* @ttyout, align 4
  %146 = call i32 @putc(i8 signext 10, i32 %145)
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i8**, i8*** %148, align 8
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = load i32, i32* @comparstr, align 4
  %155 = call i32 @qsort(i8** %149, i64 %153, i32 8, i32 %154)
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %157 = call i32 @list_vertical(%struct.TYPE_4__* %156)
  %158 = load i8, i8* @CC_REDISPLAY, align 1
  store i8 %158, i8* %4, align 1
  store i32 1, i32* %16, align 4
  br label %159

159:                                              ; preds = %144, %141, %139, %59, %57, %46, %27
  %160 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %160)
  %161 = load i8, i8* %4, align 1
  ret i8 %161
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @ftpvis(i8*, i32, i8*, i64) #2

declare dso_local i32 @el_insertstr(i32, i8*) #2

declare dso_local i32 @putc(i8 signext, i32) #2

declare dso_local i32 @qsort(i8**, i64, i32, i32) #2

declare dso_local i32 @list_vertical(%struct.TYPE_4__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
