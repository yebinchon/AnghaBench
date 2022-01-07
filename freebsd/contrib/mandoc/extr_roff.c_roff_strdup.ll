; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_strdup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_strdup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff = type { %struct.roffkv*, %struct.TYPE_4__* }
%struct.roffkv = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.roffkv* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64, i8* }
%struct.TYPE_4__ = type { i8*, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ESCAPE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @roff_strdup(%struct.roff* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.roff*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.roffkv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.roff* %0, %struct.roff** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.roff*, %struct.roff** %4, align 8
  %13 = getelementptr inbounds %struct.roff, %struct.roff* %12, i32 0, i32 0
  %14 = load %struct.roffkv*, %struct.roffkv** %13, align 8
  %15 = icmp eq %struct.roffkv* null, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.roff*, %struct.roff** %4, align 8
  %18 = getelementptr inbounds %struct.roff, %struct.roff* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp eq %struct.TYPE_4__* null, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i8*, i8** %5, align 8
  %23 = call i8* @mandoc_strdup(i8* %22)
  store i8* %23, i8** %3, align 8
  br label %237

24:                                               ; preds = %16, %2
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 0, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i8* @mandoc_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %30, i8** %3, align 8
  br label %237

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31
  store i8* null, i8** %7, align 8
  store i64 0, i64* %9, align 8
  br label %33

33:                                               ; preds = %207, %149, %108, %66, %32
  %34 = load i8*, i8** %5, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 0, %36
  br i1 %37, label %38, label %230

38:                                               ; preds = %33
  %39 = load i8*, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ult i32 %41, 128
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i8*, i8** %5, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 92, %47
  br i1 %48, label %49, label %103

49:                                               ; preds = %38
  %50 = load %struct.roff*, %struct.roff** %4, align 8
  %51 = getelementptr inbounds %struct.roff, %struct.roff* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = icmp ne %struct.TYPE_4__* %52, null
  br i1 %53, label %54, label %103

54:                                               ; preds = %49
  %55 = load %struct.roff*, %struct.roff** %4, align 8
  %56 = getelementptr inbounds %struct.roff, %struct.roff* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %103

66:                                               ; preds = %54
  %67 = load %struct.roff*, %struct.roff** %4, align 8
  %68 = getelementptr inbounds %struct.roff, %struct.roff* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %10, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = add i64 %78, %79
  %81 = add i64 %80, 1
  %82 = call i8* @mandoc_realloc(i8* %77, i64 %81)
  store i8* %82, i8** %7, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = load i64, i64* %9, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load %struct.roff*, %struct.roff** %4, align 8
  %87 = getelementptr inbounds %struct.roff, %struct.roff* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load i64, i64* %10, align 8
  %97 = call i32 @memcpy(i8* %85, i8* %95, i64 %96)
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* %9, align 8
  %100 = add i64 %99, %98
  store i64 %100, i64* %9, align 8
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %5, align 8
  br label %33

103:                                              ; preds = %54, %49, %38
  %104 = load i8*, i8** %5, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 92, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %103
  %109 = load i8*, i8** %7, align 8
  %110 = load i64, i64* %9, align 8
  %111 = add i64 %110, 2
  %112 = call i8* @mandoc_realloc(i8* %109, i64 %111)
  store i8* %112, i8** %7, align 8
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %5, align 8
  %115 = load i8, i8* %113, align 1
  %116 = load i8*, i8** %7, align 8
  %117 = load i64, i64* %9, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %9, align 8
  %119 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8 %115, i8* %119, align 1
  br label %33

120:                                              ; preds = %103
  br label %121

121:                                              ; preds = %120
  %122 = load %struct.roff*, %struct.roff** %4, align 8
  %123 = getelementptr inbounds %struct.roff, %struct.roff* %122, i32 0, i32 0
  %124 = load %struct.roffkv*, %struct.roffkv** %123, align 8
  store %struct.roffkv* %124, %struct.roffkv** %6, align 8
  br label %125

125:                                              ; preds = %142, %121
  %126 = load %struct.roffkv*, %struct.roffkv** %6, align 8
  %127 = icmp ne %struct.roffkv* %126, null
  br i1 %127, label %128, label %146

128:                                              ; preds = %125
  %129 = load i8*, i8** %5, align 8
  %130 = load %struct.roffkv*, %struct.roffkv** %6, align 8
  %131 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.roffkv*, %struct.roffkv** %6, align 8
  %135 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i64 @strncmp(i8* %129, i32 %133, i64 %137)
  %139 = icmp eq i64 0, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %128
  br label %146

141:                                              ; preds = %128
  br label %142

142:                                              ; preds = %141
  %143 = load %struct.roffkv*, %struct.roffkv** %6, align 8
  %144 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %143, i32 0, i32 2
  %145 = load %struct.roffkv*, %struct.roffkv** %144, align 8
  store %struct.roffkv* %145, %struct.roffkv** %6, align 8
  br label %125

146:                                              ; preds = %140, %125
  %147 = load %struct.roffkv*, %struct.roffkv** %6, align 8
  %148 = icmp ne %struct.roffkv* null, %147
  br i1 %148, label %149, label %185

149:                                              ; preds = %146
  %150 = load i8*, i8** %7, align 8
  %151 = load i64, i64* %9, align 8
  %152 = load %struct.roffkv*, %struct.roffkv** %6, align 8
  %153 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = add i64 %151, %155
  %157 = add i64 %156, 1
  %158 = call i8* @mandoc_realloc(i8* %150, i64 %157)
  store i8* %158, i8** %7, align 8
  %159 = load i8*, i8** %7, align 8
  %160 = load i64, i64* %9, align 8
  %161 = getelementptr inbounds i8, i8* %159, i64 %160
  %162 = load %struct.roffkv*, %struct.roffkv** %6, align 8
  %163 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = load %struct.roffkv*, %struct.roffkv** %6, align 8
  %167 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @memcpy(i8* %161, i8* %165, i64 %169)
  %171 = load %struct.roffkv*, %struct.roffkv** %6, align 8
  %172 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* %9, align 8
  %176 = add i64 %175, %174
  store i64 %176, i64* %9, align 8
  %177 = load %struct.roffkv*, %struct.roffkv** %6, align 8
  %178 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = trunc i64 %180 to i32
  %182 = load i8*, i8** %5, align 8
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i8, i8* %182, i64 %183
  store i8* %184, i8** %5, align 8
  br label %33

185:                                              ; preds = %146
  %186 = load i8*, i8** %5, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %5, align 8
  store i8* %186, i8** %8, align 8
  %188 = call i32 @mandoc_escape(i8** %5, i32* null, i32* null)
  store i32 %188, i32* %11, align 4
  %189 = load i32, i32* @ESCAPE_ERROR, align 4
  %190 = load i32, i32* %11, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %207

192:                                              ; preds = %185
  %193 = load i8*, i8** %8, align 8
  %194 = call i64 @strlen(i8* %193)
  store i64 %194, i64* %10, align 8
  %195 = load i8*, i8** %7, align 8
  %196 = load i64, i64* %9, align 8
  %197 = load i64, i64* %10, align 8
  %198 = add i64 %196, %197
  %199 = add i64 %198, 1
  %200 = call i8* @mandoc_realloc(i8* %195, i64 %199)
  store i8* %200, i8** %7, align 8
  %201 = load i8*, i8** %7, align 8
  %202 = load i64, i64* %9, align 8
  %203 = getelementptr inbounds i8, i8* %201, i64 %202
  %204 = load i8*, i8** %8, align 8
  %205 = load i64, i64* %10, align 8
  %206 = call i32 @memcpy(i8* %203, i8* %204, i64 %205)
  br label %230

207:                                              ; preds = %185
  %208 = load i8*, i8** %5, align 8
  %209 = load i8*, i8** %8, align 8
  %210 = ptrtoint i8* %208 to i64
  %211 = ptrtoint i8* %209 to i64
  %212 = sub i64 %210, %211
  %213 = trunc i64 %212 to i32
  %214 = sext i32 %213 to i64
  store i64 %214, i64* %10, align 8
  %215 = load i8*, i8** %7, align 8
  %216 = load i64, i64* %9, align 8
  %217 = load i64, i64* %10, align 8
  %218 = add i64 %216, %217
  %219 = add i64 %218, 1
  %220 = call i8* @mandoc_realloc(i8* %215, i64 %219)
  store i8* %220, i8** %7, align 8
  %221 = load i8*, i8** %7, align 8
  %222 = load i64, i64* %9, align 8
  %223 = getelementptr inbounds i8, i8* %221, i64 %222
  %224 = load i8*, i8** %8, align 8
  %225 = load i64, i64* %10, align 8
  %226 = call i32 @memcpy(i8* %223, i8* %224, i64 %225)
  %227 = load i64, i64* %10, align 8
  %228 = load i64, i64* %9, align 8
  %229 = add i64 %228, %227
  store i64 %229, i64* %9, align 8
  br label %33

230:                                              ; preds = %192, %33
  %231 = load i8*, i8** %7, align 8
  %232 = load i64, i64* %9, align 8
  %233 = trunc i64 %232 to i32
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, i8* %231, i64 %234
  store i8 0, i8* %235, align 1
  %236 = load i8*, i8** %7, align 8
  store i8* %236, i8** %3, align 8
  br label %237

237:                                              ; preds = %230, %29, %21
  %238 = load i8*, i8** %3, align 8
  ret i8* %238
}

declare dso_local i8* @mandoc_strdup(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @mandoc_realloc(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @strncmp(i8*, i32, i64) #1

declare dso_local i32 @mandoc_escape(i8**, i32*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
