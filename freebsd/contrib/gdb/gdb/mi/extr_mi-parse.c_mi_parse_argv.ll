; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-parse.c_mi_parse_argv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-parse.c_mi_parse_argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mi_parse = type { i8**, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.mi_parse*)* @mi_parse_argv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mi_parse_argv(i8* %0, %struct.mi_parse* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mi_parse*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.mi_parse* %1, %struct.mi_parse** %4, align 8
  %13 = load i8*, i8** %3, align 8
  store i8* %13, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 8
  %18 = trunc i64 %17 to i32
  %19 = call i8* @xmalloc(i32 %18)
  %20 = bitcast i8* %19 to i8**
  store i8** %20, i8*** %7, align 8
  %21 = load i8**, i8*** %7, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  store i8* null, i8** %24, align 8
  br label %25

25:                                               ; preds = %2, %195
  br label %26

26:                                               ; preds = %31, %25
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = call i64 @isspace(i8 signext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %5, align 8
  br label %26

34:                                               ; preds = %26
  %35 = load i8*, i8** %5, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  switch i32 %37, label %156 [
    i32 0, label %38
    i32 34, label %45
  ]

38:                                               ; preds = %34
  %39 = load i8**, i8*** %7, align 8
  %40 = load %struct.mi_parse*, %struct.mi_parse** %4, align 8
  %41 = getelementptr inbounds %struct.mi_parse, %struct.mi_parse* %40, i32 0, i32 0
  store i8** %39, i8*** %41, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.mi_parse*, %struct.mi_parse** %4, align 8
  %44 = getelementptr inbounds %struct.mi_parse, %struct.mi_parse* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  br label %213

45:                                               ; preds = %34
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8* %47, i8** %10, align 8
  %48 = load i8*, i8** %10, align 8
  store i8* %48, i8** %5, align 8
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %79, %45
  %50 = load i8*, i8** %5, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i8*, i8** %5, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 34
  br label %59

59:                                               ; preds = %54, %49
  %60 = phi i1 [ false, %49 ], [ %58, %54 ]
  br i1 %60, label %61, label %82

61:                                               ; preds = %59
  %62 = load i8*, i8** %5, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 92
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %5, align 8
  %69 = call signext i8 @parse_escape(i8** %5)
  %70 = sext i8 %69 to i32
  %71 = icmp sle i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i8**, i8*** %7, align 8
  %74 = call i32 @freeargv(i8** %73)
  br label %213

75:                                               ; preds = %66
  br label %79

76:                                               ; preds = %61
  %77 = load i8*, i8** %5, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %5, align 8
  br label %79

79:                                               ; preds = %76, %75
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %49

82:                                               ; preds = %59
  %83 = load i8*, i8** %5, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 34
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i8**, i8*** %7, align 8
  %89 = call i32 @freeargv(i8** %88)
  br label %213

90:                                               ; preds = %82
  %91 = load i8*, i8** %5, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %90
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = load i8, i8* %98, align 1
  %100 = call i64 @isspace(i8 signext %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %96
  %103 = load i8**, i8*** %7, align 8
  %104 = call i32 @freeargv(i8** %103)
  br label %213

105:                                              ; preds = %96, %90
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = mul i64 %108, 1
  %110 = trunc i64 %109 to i32
  %111 = call i8* @xmalloc(i32 %110)
  store i8* %111, i8** %8, align 8
  %112 = load i8*, i8** %10, align 8
  store i8* %112, i8** %5, align 8
  store i32 0, i32* %9, align 4
  br label %113

113:                                              ; preds = %146, %105
  %114 = load i8*, i8** %5, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load i8*, i8** %5, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp ne i32 %121, 34
  br label %123

123:                                              ; preds = %118, %113
  %124 = phi i1 [ false, %113 ], [ %122, %118 ]
  br i1 %124, label %125, label %149

125:                                              ; preds = %123
  %126 = load i8*, i8** %5, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 92
  br i1 %129, label %130, label %138

130:                                              ; preds = %125
  %131 = load i8*, i8** %5, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %5, align 8
  %133 = call signext i8 @parse_escape(i8** %5)
  %134 = load i8*, i8** %8, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  store i8 %133, i8* %137, align 1
  br label %146

138:                                              ; preds = %125
  %139 = load i8*, i8** %5, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %5, align 8
  %141 = load i8, i8* %139, align 1
  %142 = load i8*, i8** %8, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  store i8 %141, i8* %145, align 1
  br label %146

146:                                              ; preds = %138, %130
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %9, align 4
  br label %113

149:                                              ; preds = %123
  %150 = load i8*, i8** %8, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  store i8 0, i8* %153, align 1
  %154 = load i8*, i8** %5, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %5, align 8
  br label %195

156:                                              ; preds = %34
  %157 = load i8*, i8** %5, align 8
  store i8* %157, i8** %12, align 8
  br label %158

158:                                              ; preds = %171, %156
  %159 = load i8*, i8** %5, align 8
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %158
  %164 = load i8*, i8** %5, align 8
  %165 = load i8, i8* %164, align 1
  %166 = call i64 @isspace(i8 signext %165)
  %167 = icmp ne i64 %166, 0
  %168 = xor i1 %167, true
  br label %169

169:                                              ; preds = %163, %158
  %170 = phi i1 [ false, %158 ], [ %168, %163 ]
  br i1 %170, label %171, label %174

171:                                              ; preds = %169
  %172 = load i8*, i8** %5, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %5, align 8
  br label %158

174:                                              ; preds = %169
  %175 = load i8*, i8** %5, align 8
  %176 = load i8*, i8** %12, align 8
  %177 = ptrtoint i8* %175 to i64
  %178 = ptrtoint i8* %176 to i64
  %179 = sub i64 %177, %178
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %11, align 4
  %181 = load i32, i32* %11, align 4
  %182 = add nsw i32 %181, 1
  %183 = sext i32 %182 to i64
  %184 = mul i64 %183, 1
  %185 = trunc i64 %184 to i32
  %186 = call i8* @xmalloc(i32 %185)
  store i8* %186, i8** %8, align 8
  %187 = load i8*, i8** %8, align 8
  %188 = load i8*, i8** %12, align 8
  %189 = load i32, i32* %11, align 4
  %190 = call i32 @strncpy(i8* %187, i8* %188, i32 %189)
  %191 = load i8*, i8** %8, align 8
  %192 = load i32, i32* %11, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %191, i64 %193
  store i8 0, i8* %194, align 1
  br label %195

195:                                              ; preds = %174, %149
  %196 = load i8**, i8*** %7, align 8
  %197 = load i32, i32* %6, align 4
  %198 = add nsw i32 %197, 2
  %199 = sext i32 %198 to i64
  %200 = mul i64 %199, 8
  %201 = trunc i64 %200 to i32
  %202 = call i8** @xrealloc(i8** %196, i32 %201)
  store i8** %202, i8*** %7, align 8
  %203 = load i8*, i8** %8, align 8
  %204 = load i8**, i8*** %7, align 8
  %205 = load i32, i32* %6, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %6, align 4
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds i8*, i8** %204, i64 %207
  store i8* %203, i8** %208, align 8
  %209 = load i8**, i8*** %7, align 8
  %210 = load i32, i32* %6, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8*, i8** %209, i64 %211
  store i8* null, i8** %212, align 8
  br label %25

213:                                              ; preds = %102, %87, %72, %38
  ret void
}

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local signext i8 @parse_escape(i8**) #1

declare dso_local i32 @freeargv(i8**) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8** @xrealloc(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
