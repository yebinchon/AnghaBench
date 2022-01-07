; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_parse_rdf_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_parse_rdf_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i32*, i32*, i64*, i8*, i32, i64*)* @sldns_parse_rdf_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sldns_parse_rdf_token(i32* %0, i8* %1, i64 %2, i32* %3, i32* %4, i64* %5, i8* %6, i32 %7, i64* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  store i32* %0, i32** %11, align 8
  store i8* %1, i8** %12, align 8
  store i64 %2, i64* %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i64* %5, i64** %16, align 8
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i64* %8, i64** %19, align 8
  br label %21

21:                                               ; preds = %37, %9
  %22 = load i32*, i32** %11, align 8
  %23 = call i64 @sldns_buffer_remaining(i32* %22)
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load i32*, i32** %14, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = load i32*, i32** %11, align 8
  %31 = call i8* @sldns_buffer_current(i32* %30)
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 32
  br label %35

35:                                               ; preds = %29, %25, %21
  %36 = phi i1 [ false, %25 ], [ false, %21 ], [ %34, %29 ]
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @sldns_buffer_skip(i32* %38, i32 1)
  br label %21

40:                                               ; preds = %35
  %41 = load i32*, i32** %11, align 8
  %42 = call i64 @sldns_buffer_position(i32* %41)
  %43 = load i64*, i64** %16, align 8
  store i64 %42, i64* %43, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %52

50:                                               ; preds = %40
  %51 = load i8*, i8** %17, align 8
  br label %52

52:                                               ; preds = %50, %49
  %53 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %49 ], [ %51, %50 ]
  %54 = load i64, i64* %13, align 8
  %55 = load i32*, i32** %15, align 8
  %56 = load i32*, i32** %14, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  %61 = call i32 @sldns_bget_token_par(i32* %44, i8* %45, i8* %53, i64 %54, i32* %55, i8* %60)
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  store i32 0, i32* %10, align 4
  br label %200

64:                                               ; preds = %52
  %65 = load i8*, i8** %12, align 8
  %66 = call i64 @strlen(i8* %65)
  store i64 %66, i64* %20, align 8
  %67 = load i32*, i32** %14, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %119, label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %18, align 4
  %72 = call i64 @sldns_rdf_type_maybe_quoted(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %119

74:                                               ; preds = %70
  %75 = load i64, i64* %20, align 8
  %76 = icmp uge i64 %75, 2
  br i1 %76, label %77, label %119

77:                                               ; preds = %74
  %78 = load i8*, i8** %12, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 34
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load i8*, i8** %12, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 39
  br i1 %88, label %89, label %119

89:                                               ; preds = %83, %77
  %90 = load i8*, i8** %12, align 8
  %91 = load i64, i64* %20, align 8
  %92 = sub i64 %91, 1
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 34
  br i1 %96, label %105, label %97

97:                                               ; preds = %89
  %98 = load i8*, i8** %12, align 8
  %99 = load i64, i64* %20, align 8
  %100 = sub i64 %99, 1
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 39
  br i1 %104, label %105, label %119

105:                                              ; preds = %97, %89
  %106 = load i8*, i8** %12, align 8
  %107 = load i8*, i8** %12, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = load i64, i64* %20, align 8
  %110 = sub i64 %109, 2
  %111 = call i32 @memmove(i8* %106, i8* %108, i64 %110)
  %112 = load i8*, i8** %12, align 8
  %113 = load i64, i64* %20, align 8
  %114 = sub i64 %113, 2
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  store i8 0, i8* %115, align 1
  %116 = load i64, i64* %20, align 8
  %117 = sub i64 %116, 2
  store i64 %117, i64* %20, align 8
  %118 = load i32*, i32** %14, align 8
  store i32 1, i32* %118, align 4
  br label %197

119:                                              ; preds = %97, %83, %74, %70, %64
  %120 = load i32*, i32** %14, align 8
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %196, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %18, align 4
  %125 = call i64 @sldns_rdf_type_maybe_quoted(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %196

127:                                              ; preds = %123
  %128 = load i64, i64* %20, align 8
  %129 = icmp uge i64 %128, 2
  br i1 %129, label %130, label %196

130:                                              ; preds = %127
  %131 = load i8*, i8** %12, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 0
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 34
  br i1 %135, label %142, label %136

136:                                              ; preds = %130
  %137 = load i8*, i8** %12, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 0
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 39
  br i1 %141, label %142, label %196

142:                                              ; preds = %136, %130
  %143 = load i8*, i8** %12, align 8
  %144 = load i8*, i8** %12, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  %146 = load i64, i64* %20, align 8
  %147 = sub i64 %146, 1
  %148 = call i32 @memmove(i8* %143, i8* %145, i64 %147)
  %149 = load i8*, i8** %12, align 8
  %150 = load i64, i64* %20, align 8
  %151 = sub i64 %150, 1
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  store i8 0, i8* %152, align 1
  %153 = load i64, i64* %20, align 8
  %154 = sub i64 %153, 1
  store i64 %154, i64* %20, align 8
  %155 = load i32*, i32** %14, align 8
  store i32 1, i32* %155, align 4
  br label %156

156:                                              ; preds = %178, %142
  %157 = load i32*, i32** %11, align 8
  %158 = call i64 @sldns_buffer_position(i32* %157)
  %159 = icmp ugt i64 %158, 0
  br i1 %159, label %160, label %176

160:                                              ; preds = %156
  %161 = load i32*, i32** %11, align 8
  %162 = call i8* @sldns_buffer_current(i32* %161)
  %163 = getelementptr inbounds i8, i8* %162, i64 -1
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 32
  br i1 %166, label %174, label %167

167:                                              ; preds = %160
  %168 = load i32*, i32** %11, align 8
  %169 = call i8* @sldns_buffer_current(i32* %168)
  %170 = getelementptr inbounds i8, i8* %169, i64 -1
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 9
  br label %174

174:                                              ; preds = %167, %160
  %175 = phi i1 [ true, %160 ], [ %173, %167 ]
  br label %176

176:                                              ; preds = %174, %156
  %177 = phi i1 [ false, %156 ], [ %175, %174 ]
  br i1 %177, label %178, label %181

178:                                              ; preds = %176
  %179 = load i32*, i32** %11, align 8
  %180 = call i32 @sldns_buffer_skip(i32* %179, i32 -1)
  br label %156

181:                                              ; preds = %176
  %182 = load i32*, i32** %11, align 8
  %183 = load i8*, i8** %12, align 8
  %184 = load i64, i64* %20, align 8
  %185 = getelementptr inbounds i8, i8* %183, i64 %184
  %186 = load i64, i64* %13, align 8
  %187 = load i64, i64* %20, align 8
  %188 = sub i64 %186, %187
  %189 = load i32*, i32** %15, align 8
  %190 = call i32 @sldns_bget_token_par(i32* %182, i8* %185, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %188, i32* %189, i8* null)
  %191 = icmp eq i32 %190, -1
  br i1 %191, label %192, label %193

192:                                              ; preds = %181
  store i32 0, i32* %10, align 4
  br label %200

193:                                              ; preds = %181
  %194 = load i8*, i8** %12, align 8
  %195 = call i64 @strlen(i8* %194)
  store i64 %195, i64* %20, align 8
  br label %196

196:                                              ; preds = %193, %136, %127, %123, %119
  br label %197

197:                                              ; preds = %196, %105
  %198 = load i64, i64* %20, align 8
  %199 = load i64*, i64** %19, align 8
  store i64 %198, i64* %199, align 8
  store i32 1, i32* %10, align 4
  br label %200

200:                                              ; preds = %197, %192, %63
  %201 = load i32, i32* %10, align 4
  ret i32 %201
}

declare dso_local i64 @sldns_buffer_remaining(i32*) #1

declare dso_local i8* @sldns_buffer_current(i32*) #1

declare dso_local i32 @sldns_buffer_skip(i32*, i32) #1

declare dso_local i64 @sldns_buffer_position(i32*) #1

declare dso_local i32 @sldns_bget_token_par(i32*, i8*, i8*, i64, i32*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @sldns_rdf_type_maybe_quoted(i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
