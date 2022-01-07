; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-utils.c_gr_multi_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-utils.c_gr_multi_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QUIT = common dso_local global i32 0, align 4
@gdb_stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gr_multi_scan(i8** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %37, %2
  %18 = load i8**, i8*** %4, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %42

24:                                               ; preds = %17
  %25 = load i8**, i8*** %4, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strlen(i8* %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %34, %24
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %17

42:                                               ; preds = %17
  %43 = load i32, i32* %11, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 -1, i32* %3, align 4
  br label %170

46:                                               ; preds = %42
  %47 = load i32, i32* %12, align 4
  %48 = shl i32 %47, 1
  %49 = call i8* @alloca(i32 %48)
  store i8* %49, i8** %6, align 8
  store i8* %49, i8** %7, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 8
  %53 = trunc i64 %52 to i32
  %54 = call i8* @alloca(i32 %53)
  %55 = bitcast i8* %54 to i8**
  store i8** %55, i8*** %13, align 8
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %70, %46
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load i8**, i8*** %4, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = load i8**, i8*** %13, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  store i8* %65, i8** %69, align 8
  br label %70

70:                                               ; preds = %60
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %56

73:                                               ; preds = %56
  %74 = call i32 (...) @sr_readchar()
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %168, %73
  %76 = load i32, i32* @QUIT, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %137, %75
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %140

81:                                               ; preds = %77
  %82 = load i32, i32* %8, align 4
  %83 = load i8**, i8*** %13, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %82, %89
  br i1 %90, label %100, label %91

91:                                               ; preds = %81
  %92 = load i8**, i8*** %13, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 63
  br i1 %99, label %100, label %126

100:                                              ; preds = %91, %81
  %101 = load i8**, i8*** %13, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %104, align 8
  %107 = load i8**, i8*** %13, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %100
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %3, align 4
  br label %170

117:                                              ; preds = %100
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %8, align 4
  %122 = trunc i32 %121 to i8
  %123 = load i8*, i8** %7, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %7, align 8
  store i8 %122, i8* %123, align 1
  br label %125

125:                                              ; preds = %120, %117
  store i32 1, i32* %9, align 4
  br label %136

126:                                              ; preds = %91
  %127 = load i8**, i8*** %4, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = load i8**, i8*** %13, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  store i8* %131, i8** %135, align 8
  br label %136

136:                                              ; preds = %126, %125
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %10, align 4
  br label %77

140:                                              ; preds = %77
  %141 = load i32, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %167, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* %5, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %165

146:                                              ; preds = %143
  %147 = load i8*, i8** %6, align 8
  store i8* %147, i8** %15, align 8
  br label %148

148:                                              ; preds = %158, %146
  %149 = load i8*, i8** %15, align 8
  %150 = load i8*, i8** %7, align 8
  %151 = icmp ult i8* %149, %150
  br i1 %151, label %152, label %161

152:                                              ; preds = %148
  %153 = load i8*, i8** %15, align 8
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = load i32, i32* @gdb_stdout, align 4
  %157 = call i32 @fputc_unfiltered(i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %152
  %159 = load i8*, i8** %15, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %15, align 8
  br label %148

161:                                              ; preds = %148
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* @gdb_stdout, align 4
  %164 = call i32 @fputc_unfiltered(i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %161, %143
  %166 = load i8*, i8** %6, align 8
  store i8* %166, i8** %7, align 8
  br label %167

167:                                              ; preds = %165, %140
  br label %168

168:                                              ; preds = %167
  %169 = call i32 (...) @sr_readchar()
  store i32 %169, i32* %8, align 4
  br label %75

170:                                              ; preds = %115, %45
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @sr_readchar(...) #1

declare dso_local i32 @fputc_unfiltered(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
