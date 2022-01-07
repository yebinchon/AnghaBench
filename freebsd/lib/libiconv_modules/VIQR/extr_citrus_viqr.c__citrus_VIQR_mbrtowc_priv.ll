; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/VIQR/extr_citrus_viqr.c__citrus_VIQR_mbrtowc_priv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/VIQR/extr_citrus_viqr.c__citrus_VIQR_mbrtowc_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_9__*, i32 }
%struct.TYPE_10__ = type { i64, i64* }

@_ENCODING_IS_STATE_DEPENDENT = common dso_local global i64 0, align 8
@ESCAPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i64*, i8**, i64, %struct.TYPE_10__*, i64*)* @_citrus_VIQR_mbrtowc_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_VIQR_mbrtowc_priv(%struct.TYPE_11__* noalias %0, i64* noalias %1, i8** noalias %2, i64 %3, %struct.TYPE_10__* noalias %4, i64* noalias %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i64* %1, i64** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %12, align 8
  store i64* %5, i64** %13, align 8
  %21 = load i8**, i8*** %10, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %6
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %27 = call i32 @_citrus_VIQR_init_state(%struct.TYPE_11__* %25, %struct.TYPE_10__* %26)
  %28 = load i64, i64* @_ENCODING_IS_STATE_DEPENDENT, align 8
  %29 = load i64*, i64** %13, align 8
  store i64 %28, i64* %29, align 8
  store i32 0, i32* %7, align 4
  br label %187

30:                                               ; preds = %6
  %31 = load i8**, i8*** %10, align 8
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %16, align 8
  store i64 0, i64* %18, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %14, align 8
  store i32 0, i32* %20, align 4
  br label %36

36:                                               ; preds = %96, %83, %30
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %18, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %36
  %43 = load i64, i64* %11, align 8
  %44 = add i64 %43, -1
  store i64 %44, i64* %11, align 8
  %45 = icmp ult i64 %43, 1
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i8*, i8** %16, align 8
  %48 = load i8**, i8*** %10, align 8
  store i8* %47, i8** %48, align 8
  %49 = load i64*, i64** %13, align 8
  store i64 -2, i64* %49, align 8
  store i32 0, i32* %7, align 4
  br label %187

50:                                               ; preds = %42
  %51 = load i8*, i8** %16, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %16, align 8
  %53 = load i8, i8* %51, align 1
  %54 = sext i8 %53 to i64
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %59, align 8
  %62 = getelementptr inbounds i64, i64* %57, i64 %60
  store i64 %54, i64* %62, align 8
  br label %63

63:                                               ; preds = %50, %36
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* %18, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %18, align 8
  %69 = getelementptr inbounds i64, i64* %66, i64 %67
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i8
  %72 = zext i8 %71 to i32
  store i32 %72, i32* %19, align 4
  %73 = load i32, i32* %19, align 4
  %74 = load i32, i32* @ESCAPE, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %63
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = icmp ne %struct.TYPE_9__* %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %98

83:                                               ; preds = %76
  store i32 1, i32* %20, align 4
  br label %36

84:                                               ; preds = %63
  %85 = load i32, i32* %20, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %98

88:                                               ; preds = %84
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  %91 = load i32, i32* %19, align 4
  %92 = call %struct.TYPE_9__* @mnemonic_list_find(i32* %90, i32 %91)
  store %struct.TYPE_9__* %92, %struct.TYPE_9__** %15, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %94 = icmp eq %struct.TYPE_9__* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %98

96:                                               ; preds = %88
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %97, %struct.TYPE_9__** %14, align 8
  br label %36

98:                                               ; preds = %95, %87, %82
  br label %99

99:                                               ; preds = %116, %98
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = icmp ne %struct.TYPE_9__* %100, %103
  br i1 %104, label %105, label %120

105:                                              ; preds = %99
  %106 = load i64, i64* %18, align 8
  %107 = add i64 %106, -1
  store i64 %107, i64* %18, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %110, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  br label %120

116:                                              ; preds = %105
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  store %struct.TYPE_9__* %119, %struct.TYPE_9__** %14, align 8
  br label %99

120:                                              ; preds = %115, %99
  %121 = load i32, i32* %19, align 4
  %122 = load i32, i32* @ESCAPE, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %120
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = icmp ne %struct.TYPE_9__* %125, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = load i64, i64* %18, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %18, align 8
  br label %133

133:                                              ; preds = %130, %124, %120
  %134 = load i64, i64* %18, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = sub i64 %137, %134
  store i64 %138, i64* %136, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load i64*, i64** %140, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 0
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = load i64*, i64** %144, align 8
  %146 = load i64, i64* %18, align 8
  %147 = getelementptr inbounds i64, i64* %145, i64 %146
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @memmove(i64* %142, i64* %147, i64 %150)
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %154, align 8
  %156 = icmp eq %struct.TYPE_9__* %152, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %133
  %158 = load i32, i32* %19, align 4
  %159 = sext i32 %158 to i64
  br label %164

160:                                              ; preds = %133
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  br label %164

164:                                              ; preds = %160, %157
  %165 = phi i64 [ %159, %157 ], [ %163, %160 ]
  store i64 %165, i64* %17, align 8
  %166 = load i64*, i64** %9, align 8
  %167 = icmp ne i64* %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = load i64, i64* %17, align 8
  %170 = load i64*, i64** %9, align 8
  store i64 %169, i64* %170, align 8
  br label %171

171:                                              ; preds = %168, %164
  %172 = load i64, i64* %17, align 8
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  br label %182

175:                                              ; preds = %171
  %176 = load i8*, i8** %16, align 8
  %177 = load i8**, i8*** %10, align 8
  %178 = load i8*, i8** %177, align 8
  %179 = ptrtoint i8* %176 to i64
  %180 = ptrtoint i8* %178 to i64
  %181 = sub i64 %179, %180
  br label %182

182:                                              ; preds = %175, %174
  %183 = phi i64 [ 0, %174 ], [ %181, %175 ]
  %184 = load i64*, i64** %13, align 8
  store i64 %183, i64* %184, align 8
  %185 = load i8*, i8** %16, align 8
  %186 = load i8**, i8*** %10, align 8
  store i8* %185, i8** %186, align 8
  store i32 0, i32* %7, align 4
  br label %187

187:                                              ; preds = %182, %46, %24
  %188 = load i32, i32* %7, align 4
  ret i32 %188
}

declare dso_local i32 @_citrus_VIQR_init_state(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_9__* @mnemonic_list_find(i32*, i32) #1

declare dso_local i32 @memmove(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
