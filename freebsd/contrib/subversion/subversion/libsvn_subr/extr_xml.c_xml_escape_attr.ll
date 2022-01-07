; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_xml.c_xml_escape_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_xml.c_xml_escape_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"&apos;\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"&#13;\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"&#10;\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"&#9;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i8*, i32, i32*)* @xml_escape_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xml_escape_attr(i32** %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %10, align 8
  %17 = load i32**, i32*** %5, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = call i32* @svn_stringbuf_create_ensure(i32 %21, i32* %22)
  %24 = load i32**, i32*** %5, align 8
  store i32* %23, i32** %24, align 8
  br label %25

25:                                               ; preds = %20, %4
  br label %26

26:                                               ; preds = %25, %171
  %27 = load i8*, i8** %10, align 8
  store i8* %27, i8** %11, align 8
  br label %28

28:                                               ; preds = %74, %26
  %29 = load i8*, i8** %11, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ult i8* %29, %30
  br i1 %31, label %32, label %72

32:                                               ; preds = %28
  %33 = load i8*, i8** %11, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 38
  br i1 %36, label %37, label %72

37:                                               ; preds = %32
  %38 = load i8*, i8** %11, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 60
  br i1 %41, label %42, label %72

42:                                               ; preds = %37
  %43 = load i8*, i8** %11, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 62
  br i1 %46, label %47, label %72

47:                                               ; preds = %42
  %48 = load i8*, i8** %11, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 34
  br i1 %51, label %52, label %72

52:                                               ; preds = %47
  %53 = load i8*, i8** %11, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 39
  br i1 %56, label %57, label %72

57:                                               ; preds = %52
  %58 = load i8*, i8** %11, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 13
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = load i8*, i8** %11, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 10
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i8*, i8** %11, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 9
  br label %72

72:                                               ; preds = %67, %62, %57, %52, %47, %42, %37, %32, %28
  %73 = phi i1 [ false, %62 ], [ false, %57 ], [ false, %52 ], [ false, %47 ], [ false, %42 ], [ false, %37 ], [ false, %32 ], [ false, %28 ], [ %71, %67 ]
  br i1 %73, label %74, label %77

74:                                               ; preds = %72
  %75 = load i8*, i8** %11, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %11, align 8
  br label %28

77:                                               ; preds = %72
  %78 = load i32**, i32*** %5, align 8
  %79 = load i32*, i32** %78, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = ptrtoint i8* %81 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = trunc i64 %85 to i32
  %87 = call i32 @svn_stringbuf_appendbytes(i32* %79, i8* %80, i32 %86)
  %88 = load i8*, i8** %11, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = icmp eq i8* %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %77
  br label %174

92:                                               ; preds = %77
  %93 = load i8*, i8** %11, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 38
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i32**, i32*** %5, align 8
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @svn_stringbuf_appendcstr(i32* %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %171

101:                                              ; preds = %92
  %102 = load i8*, i8** %11, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 60
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load i32**, i32*** %5, align 8
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @svn_stringbuf_appendcstr(i32* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %170

110:                                              ; preds = %101
  %111 = load i8*, i8** %11, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 62
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load i32**, i32*** %5, align 8
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @svn_stringbuf_appendcstr(i32* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %169

119:                                              ; preds = %110
  %120 = load i8*, i8** %11, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 34
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load i32**, i32*** %5, align 8
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @svn_stringbuf_appendcstr(i32* %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %168

128:                                              ; preds = %119
  %129 = load i8*, i8** %11, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 39
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load i32**, i32*** %5, align 8
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @svn_stringbuf_appendcstr(i32* %135, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %167

137:                                              ; preds = %128
  %138 = load i8*, i8** %11, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 13
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load i32**, i32*** %5, align 8
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @svn_stringbuf_appendcstr(i32* %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %166

146:                                              ; preds = %137
  %147 = load i8*, i8** %11, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 10
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = load i32**, i32*** %5, align 8
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @svn_stringbuf_appendcstr(i32* %153, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %165

155:                                              ; preds = %146
  %156 = load i8*, i8** %11, align 8
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 9
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = load i32**, i32*** %5, align 8
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @svn_stringbuf_appendcstr(i32* %162, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %164

164:                                              ; preds = %160, %155
  br label %165

165:                                              ; preds = %164, %151
  br label %166

166:                                              ; preds = %165, %142
  br label %167

167:                                              ; preds = %166, %133
  br label %168

168:                                              ; preds = %167, %124
  br label %169

169:                                              ; preds = %168, %115
  br label %170

170:                                              ; preds = %169, %106
  br label %171

171:                                              ; preds = %170, %97
  %172 = load i8*, i8** %11, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  store i8* %173, i8** %10, align 8
  br label %26

174:                                              ; preds = %91
  ret void
}

declare dso_local i32* @svn_stringbuf_create_ensure(i32, i32*) #1

declare dso_local i32 @svn_stringbuf_appendbytes(i32*, i8*, i32) #1

declare dso_local i32 @svn_stringbuf_appendcstr(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
