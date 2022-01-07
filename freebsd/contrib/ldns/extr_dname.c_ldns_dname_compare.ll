; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dname.c_ldns_dname_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dname.c_ldns_dname_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RDF_TYPE_DNAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_dname_compare(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %178

20:                                               ; preds = %16, %2
  %21 = load i32*, i32** %4, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32*, i32** %5, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %20
  store i32 -1, i32* %3, align 4
  br label %178

27:                                               ; preds = %23
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @ldns_rdf_get_type(i32* %28)
  %30 = load i64, i64* @LDNS_RDF_TYPE_DNAME, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32*, i32** %5, align 8
  %35 = call i64 @ldns_rdf_get_type(i32* %34)
  %36 = load i64, i64* @LDNS_RDF_TYPE_DNAME, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i64 @ldns_dname_label_count(i32* %40)
  store i64 %41, i64* %6, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i64 @ldns_dname_label_count(i32* %42)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %27
  %47 = load i64, i64* %7, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %178

50:                                               ; preds = %46, %27
  %51 = load i64, i64* %6, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 -1, i32* %3, align 4
  br label %178

54:                                               ; preds = %50
  %55 = load i64, i64* %7, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %178

58:                                               ; preds = %54
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, -1
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %61, -1
  store i64 %62, i64* %7, align 8
  br label %63

63:                                               ; preds = %58, %171
  %64 = load i64, i64* %6, align 8
  store i64 %64, i64* %8, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = call i32* @ldns_rdf_data(i32* %65)
  store i32* %66, i32** %12, align 8
  br label %67

67:                                               ; preds = %70, %63
  %68 = load i64, i64* %8, align 8
  %69 = icmp ugt i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load i32*, i32** %12, align 8
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  %74 = load i32*, i32** %12, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %12, align 8
  %77 = load i64, i64* %8, align 8
  %78 = add i64 %77, -1
  store i64 %78, i64* %8, align 8
  br label %67

79:                                               ; preds = %67
  %80 = load i64, i64* %7, align 8
  store i64 %80, i64* %9, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = call i32* @ldns_rdf_data(i32* %81)
  store i32* %82, i32** %13, align 8
  br label %83

83:                                               ; preds = %86, %79
  %84 = load i64, i64* %9, align 8
  %85 = icmp ugt i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %83
  %87 = load i32*, i32** %13, align 8
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  %90 = load i32*, i32** %13, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32* %92, i32** %13, align 8
  %93 = load i64, i64* %9, align 8
  %94 = add i64 %93, -1
  store i64 %94, i64* %9, align 8
  br label %83

95:                                               ; preds = %83
  store i64 1, i64* %10, align 8
  br label %96

96:                                               ; preds = %138, %95
  %97 = load i64, i64* %10, align 8
  %98 = load i32*, i32** %12, align 8
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = icmp ult i64 %97, %101
  br i1 %102, label %103, label %141

103:                                              ; preds = %96
  %104 = load i64, i64* %10, align 8
  %105 = load i32*, i32** %13, align 8
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = icmp ugt i64 %104, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store i32 1, i32* %11, align 4
  br label %176

110:                                              ; preds = %103
  %111 = load i32*, i32** %12, align 8
  %112 = load i64, i64* %10, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @LDNS_DNAME_NORMALIZE(i32 %114)
  %116 = load i32*, i32** %13, align 8
  %117 = load i64, i64* %10, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @LDNS_DNAME_NORMALIZE(i32 %119)
  %121 = icmp slt i64 %115, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %110
  store i32 -1, i32* %11, align 4
  br label %176

123:                                              ; preds = %110
  %124 = load i32*, i32** %12, align 8
  %125 = load i64, i64* %10, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @LDNS_DNAME_NORMALIZE(i32 %127)
  %129 = load i32*, i32** %13, align 8
  %130 = load i64, i64* %10, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @LDNS_DNAME_NORMALIZE(i32 %132)
  %134 = icmp sgt i64 %128, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %123
  store i32 1, i32* %11, align 4
  br label %176

136:                                              ; preds = %123
  br label %137

137:                                              ; preds = %136
  br label %138

138:                                              ; preds = %137
  %139 = load i64, i64* %10, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %10, align 8
  br label %96

141:                                              ; preds = %96
  %142 = load i32*, i32** %12, align 8
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** %13, align 8
  %145 = load i32, i32* %144, align 4
  %146 = icmp slt i32 %143, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  store i32 -1, i32* %11, align 4
  br label %176

148:                                              ; preds = %141
  %149 = load i64, i64* %6, align 8
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load i64, i64* %7, align 8
  %153 = icmp ugt i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  store i32 -1, i32* %11, align 4
  br label %176

155:                                              ; preds = %151, %148
  %156 = load i64, i64* %6, align 8
  %157 = icmp ugt i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = load i64, i64* %7, align 8
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i32 1, i32* %11, align 4
  br label %176

162:                                              ; preds = %158, %155
  %163 = load i64, i64* %6, align 8
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load i64, i64* %7, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  store i32 0, i32* %11, align 4
  br label %176

169:                                              ; preds = %165, %162
  br label %170

170:                                              ; preds = %169
  br label %171

171:                                              ; preds = %170
  %172 = load i64, i64* %6, align 8
  %173 = add i64 %172, -1
  store i64 %173, i64* %6, align 8
  %174 = load i64, i64* %7, align 8
  %175 = add i64 %174, -1
  store i64 %175, i64* %7, align 8
  br label %63

176:                                              ; preds = %168, %161, %154, %147, %135, %122, %109
  %177 = load i32, i32* %11, align 4
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %176, %57, %53, %49, %26, %19
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ldns_rdf_get_type(i32*) #1

declare dso_local i64 @ldns_dname_label_count(i32*) #1

declare dso_local i32* @ldns_rdf_data(i32*) #1

declare dso_local i64 @LDNS_DNAME_NORMALIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
