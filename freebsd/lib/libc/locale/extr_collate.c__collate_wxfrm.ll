; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_collate.c__collate_wxfrm.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_collate.c__collate_wxfrm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlocale_collate = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@DIRECTIVE_FORWARD = common dso_local global i32 0, align 4
@DIRECTIVE_UNDEFINED = common dso_local global i32 0, align 4
@DIRECTIVE_BACKWARD = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@DIRECTIVE_POSITION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@COLLATE_MAX_PRIORITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_collate_wxfrm(%struct.xlocale_collate* %0, i8** %1, i8** %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.xlocale_collate*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8**, align 8
  %21 = alloca i8**, align 8
  %22 = alloca i8*, align 8
  store %struct.xlocale_collate* %0, %struct.xlocale_collate** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8** null, i8*** %13, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %23 = load %struct.xlocale_collate*, %struct.xlocale_collate** %6, align 8
  %24 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %19, align 4
  %28 = load i8**, i8*** %7, align 8
  %29 = call i32 @assert(i8** %28)
  store i32 0, i32* %15, align 4
  br label %30

30:                                               ; preds = %197, %4
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %19, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %200

34:                                               ; preds = %30
  store i32* null, i32** %16, align 8
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load i64, i64* %9, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i8**, i8*** %8, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i32 1
  store i8** %42, i8*** %8, align 8
  store i8* inttoptr (i64 1 to i8*), i8** %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = add i64 %43, -1
  store i64 %44, i64* %9, align 8
  br label %45

45:                                               ; preds = %40, %37
  %46 = load i64, i64* %17, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %17, align 8
  br label %48

48:                                               ; preds = %45, %34
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %19, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* @DIRECTIVE_FORWARD, align 4
  %54 = load i32, i32* @DIRECTIVE_UNDEFINED, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %14, align 4
  br label %66

56:                                               ; preds = %48
  %57 = load %struct.xlocale_collate*, %struct.xlocale_collate** %6, align 8
  %58 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %56, %52
  %67 = load i8**, i8*** %7, align 8
  store i8** %67, i8*** %12, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @DIRECTIVE_BACKWARD, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %104

72:                                               ; preds = %66
  %73 = load i8**, i8*** %13, align 8
  %74 = call i32 @free(i8** %73)
  %75 = load i8**, i8*** %12, align 8
  %76 = call i8** @wcsdup(i8** %75)
  store i8** %76, i8*** %13, align 8
  %77 = icmp eq i8** %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* @ENOMEM, align 4
  store i32 %79, i32* @errno, align 4
  br label %204

80:                                               ; preds = %72
  %81 = load i8**, i8*** %13, align 8
  store i8** %81, i8*** %20, align 8
  %82 = load i8**, i8*** %13, align 8
  %83 = load i8**, i8*** %13, align 8
  %84 = call i32 @wcslen(i8** %83)
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %82, i64 %85
  %87 = getelementptr inbounds i8*, i8** %86, i64 -1
  store i8** %87, i8*** %21, align 8
  br label %88

88:                                               ; preds = %92, %80
  %89 = load i8**, i8*** %20, align 8
  %90 = load i8**, i8*** %21, align 8
  %91 = icmp ult i8** %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %88
  %93 = load i8**, i8*** %20, align 8
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %22, align 8
  %95 = load i8**, i8*** %21, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = load i8**, i8*** %20, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i32 1
  store i8** %98, i8*** %20, align 8
  store i8* %96, i8** %97, align 8
  %99 = load i8*, i8** %22, align 8
  %100 = load i8**, i8*** %21, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i32 -1
  store i8** %101, i8*** %21, align 8
  store i8* %99, i8** %100, align 8
  br label %88

102:                                              ; preds = %88
  %103 = load i8**, i8*** %13, align 8
  store i8** %103, i8*** %12, align 8
  br label %104

104:                                              ; preds = %102, %66
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* @DIRECTIVE_POSITION, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %153

109:                                              ; preds = %104
  br label %110

110:                                              ; preds = %148, %109
  %111 = load i8**, i8*** %12, align 8
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %110
  %115 = load i32*, i32** %16, align 8
  %116 = icmp ne i32* %115, null
  br label %117

117:                                              ; preds = %114, %110
  %118 = phi i1 [ true, %110 ], [ %116, %114 ]
  br i1 %118, label %119, label %152

119:                                              ; preds = %117
  %120 = load %struct.xlocale_collate*, %struct.xlocale_collate** %6, align 8
  %121 = load i8**, i8*** %12, align 8
  %122 = load i32, i32* %15, align 4
  %123 = call i32 @_collate_lookup(%struct.xlocale_collate* %120, i8** %121, i32* %11, i32* %10, i32 %122, i32** %16)
  %124 = load i32, i32* %11, align 4
  %125 = load i8**, i8*** %12, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i8*, i8** %125, i64 %126
  store i8** %127, i8*** %12, align 8
  %128 = load i32, i32* %10, align 4
  %129 = icmp sle i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %119
  %131 = load i32, i32* %10, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load i32, i32* @EINVAL, align 4
  store i32 %134, i32* @errno, align 4
  br label %204

135:                                              ; preds = %130
  store i32* null, i32** %16, align 8
  %136 = load i32, i32* @COLLATE_MAX_PRIORITY, align 4
  store i32 %136, i32* %10, align 4
  br label %137

137:                                              ; preds = %135, %119
  %138 = load i64, i64* %9, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %137
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = inttoptr i64 %142 to i8*
  %144 = load i8**, i8*** %8, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i32 1
  store i8** %145, i8*** %8, align 8
  store i8* %143, i8** %144, align 8
  %146 = load i64, i64* %9, align 8
  %147 = add i64 %146, -1
  store i64 %147, i64* %9, align 8
  br label %148

148:                                              ; preds = %140, %137
  %149 = load i64, i64* %17, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %17, align 8
  %151 = load i64, i64* %17, align 8
  store i64 %151, i64* %18, align 8
  br label %110

152:                                              ; preds = %117
  br label %196

153:                                              ; preds = %104
  br label %154

154:                                              ; preds = %191, %179, %153
  %155 = load i8**, i8*** %12, align 8
  %156 = load i8*, i8** %155, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %154
  %159 = load i32*, i32** %16, align 8
  %160 = icmp ne i32* %159, null
  br label %161

161:                                              ; preds = %158, %154
  %162 = phi i1 [ true, %154 ], [ %160, %158 ]
  br i1 %162, label %163, label %195

163:                                              ; preds = %161
  %164 = load %struct.xlocale_collate*, %struct.xlocale_collate** %6, align 8
  %165 = load i8**, i8*** %12, align 8
  %166 = load i32, i32* %15, align 4
  %167 = call i32 @_collate_lookup(%struct.xlocale_collate* %164, i8** %165, i32* %11, i32* %10, i32 %166, i32** %16)
  %168 = load i32, i32* %11, align 4
  %169 = load i8**, i8*** %12, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i8*, i8** %169, i64 %170
  store i8** %171, i8*** %12, align 8
  %172 = load i32, i32* %10, align 4
  %173 = icmp sle i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %163
  %175 = load i32, i32* %10, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %174
  %178 = load i32, i32* @EINVAL, align 4
  store i32 %178, i32* @errno, align 4
  br label %204

179:                                              ; preds = %174
  store i32* null, i32** %16, align 8
  br label %154

180:                                              ; preds = %163
  %181 = load i64, i64* %9, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %180
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = inttoptr i64 %185 to i8*
  %187 = load i8**, i8*** %8, align 8
  %188 = getelementptr inbounds i8*, i8** %187, i32 1
  store i8** %188, i8*** %8, align 8
  store i8* %186, i8** %187, align 8
  %189 = load i64, i64* %9, align 8
  %190 = add i64 %189, -1
  store i64 %190, i64* %9, align 8
  br label %191

191:                                              ; preds = %183, %180
  %192 = load i64, i64* %17, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %17, align 8
  %194 = load i64, i64* %17, align 8
  store i64 %194, i64* %18, align 8
  br label %154

195:                                              ; preds = %161
  br label %196

196:                                              ; preds = %195, %152
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %15, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %15, align 4
  br label %30

200:                                              ; preds = %30
  %201 = load i8**, i8*** %13, align 8
  %202 = call i32 @free(i8** %201)
  %203 = load i64, i64* %18, align 8
  store i64 %203, i64* %5, align 8
  br label %207

204:                                              ; preds = %177, %133, %78
  %205 = load i8**, i8*** %13, align 8
  %206 = call i32 @free(i8** %205)
  store i64 -1, i64* %5, align 8
  br label %207

207:                                              ; preds = %204, %200
  %208 = load i64, i64* %5, align 8
  ret i64 %208
}

declare dso_local i32 @assert(i8**) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i8** @wcsdup(i8**) #1

declare dso_local i32 @wcslen(i8**) #1

declare dso_local i32 @_collate_lookup(%struct.xlocale_collate*, i8**, i32*, i32*, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
