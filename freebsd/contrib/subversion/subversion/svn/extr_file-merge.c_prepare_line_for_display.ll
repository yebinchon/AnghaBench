; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_file-merge.c_prepare_line_for_display.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_file-merge.c_prepare_line_for_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8* }

@LINE_DISPLAY_WIDTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*)* @prepare_line_for_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @prepare_line_for_display(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call %struct.TYPE_5__* @svn_stringbuf_create(i8* %10, i32* %11)
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %5, align 8
  %13 = load i64, i64* @LINE_DISPLAY_WIDTH, align 8
  store i64 %13, i64* %7, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %16, 2
  br i1 %17, label %18, label %47

18:                                               ; preds = %2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %21, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 13
  br i1 %30, label %31, label %47

31:                                               ; preds = %18
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %34, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 10
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = call i32 @svn_stringbuf_chop(%struct.TYPE_5__* %45, i32 2)
  br label %82

47:                                               ; preds = %31, %18, %2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sge i32 %50, 1
  br i1 %51, label %52, label %81

52:                                               ; preds = %47
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %55, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 10
  br i1 %64, label %78, label %65

65:                                               ; preds = %52
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %68, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 13
  br i1 %77, label %78, label %81

78:                                               ; preds = %65, %52
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = call i32 @svn_stringbuf_chop(%struct.TYPE_5__* %79, i32 1)
  br label %81

81:                                               ; preds = %78, %65, %47
  br label %82

82:                                               ; preds = %81, %44
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @svn_utf_cstring_utf8_width(i8* %85)
  store i64 %86, i64* %6, align 8
  %87 = load i64, i64* %6, align 8
  %88 = icmp eq i64 %87, -1
  br i1 %88, label %89, label %109

89:                                               ; preds = %82
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = call i8* @svn_xml_fuzzy_escape(i8* %92, i32* %93)
  %95 = load i32*, i32** %4, align 8
  %96 = call %struct.TYPE_5__* @svn_stringbuf_create(i8* %94, i32* %95)
  store %struct.TYPE_5__* %96, %struct.TYPE_5__** %5, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = call i64 @svn_utf_cstring_utf8_width(i8* %99)
  store i64 %100, i64* %6, align 8
  %101 = load i64, i64* %6, align 8
  %102 = icmp eq i64 %101, -1
  br i1 %102, label %103, label %108

103:                                              ; preds = %89
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %6, align 8
  br label %108

108:                                              ; preds = %103, %89
  br label %109

109:                                              ; preds = %108, %82
  %110 = load i32*, i32** %4, align 8
  %111 = call i32* @svn_pool_create(i32* %110)
  store i32* %111, i32** %8, align 8
  br label %112

112:                                              ; preds = %167, %109
  %113 = load i64, i64* %6, align 8
  %114 = load i64, i64* %7, align 8
  %115 = icmp ugt i64 %113, %114
  br i1 %115, label %116, label %168

116:                                              ; preds = %112
  %117 = load i32*, i32** %8, align 8
  %118 = call i32 @svn_pool_clear(i32* %117)
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %120 = call i32 @svn_stringbuf_chop(%struct.TYPE_5__* %119, i32 1)
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = call i8* @svn_utf__last_valid(i8* %123, i64 %127)
  store i8* %128, i8** %9, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %132, i64 %136
  %138 = icmp ult i8* %129, %137
  br i1 %138, label %139, label %155

139:                                              ; preds = %116
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %143, i64 %147
  %149 = load i8*, i8** %9, align 8
  %150 = ptrtoint i8* %148 to i64
  %151 = ptrtoint i8* %149 to i64
  %152 = sub i64 %150, %151
  %153 = trunc i64 %152 to i32
  %154 = call i32 @svn_stringbuf_chop(%struct.TYPE_5__* %140, i32 %153)
  br label %155

155:                                              ; preds = %139, %116
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = call i64 @svn_utf_cstring_utf8_width(i8* %158)
  store i64 %159, i64* %6, align 8
  %160 = load i64, i64* %6, align 8
  %161 = icmp eq i64 %160, -1
  br i1 %161, label %162, label %167

162:                                              ; preds = %155
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  store i64 %166, i64* %6, align 8
  br label %167

167:                                              ; preds = %162, %155
  br label %112

168:                                              ; preds = %112
  %169 = load i32*, i32** %8, align 8
  %170 = call i32 @svn_pool_destroy(i32* %169)
  br label %171

171:                                              ; preds = %180, %168
  %172 = load i64, i64* %6, align 8
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %171
  %175 = load i64, i64* %6, align 8
  %176 = load i64, i64* %7, align 8
  %177 = icmp ult i64 %175, %176
  br label %178

178:                                              ; preds = %174, %171
  %179 = phi i1 [ true, %171 ], [ %177, %174 ]
  br i1 %179, label %180, label %185

180:                                              ; preds = %178
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %182 = call i32 @svn_stringbuf_appendbyte(%struct.TYPE_5__* %181, i8 signext 32)
  %183 = load i64, i64* %6, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %6, align 8
  br label %171

185:                                              ; preds = %178
  %186 = load i64, i64* %6, align 8
  %187 = load i64, i64* %7, align 8
  %188 = icmp eq i64 %186, %187
  %189 = zext i1 %188 to i32
  %190 = call i32 @SVN_ERR_ASSERT_NO_RETURN(i32 %189)
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  ret i8* %193
}

declare dso_local %struct.TYPE_5__* @svn_stringbuf_create(i8*, i32*) #1

declare dso_local i32 @svn_stringbuf_chop(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @svn_utf_cstring_utf8_width(i8*) #1

declare dso_local i8* @svn_xml_fuzzy_escape(i8*, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @svn_utf__last_valid(i8*, i64) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @svn_stringbuf_appendbyte(%struct.TYPE_5__*, i8 signext) #1

declare dso_local i32 @SVN_ERR_ASSERT_NO_RETURN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
