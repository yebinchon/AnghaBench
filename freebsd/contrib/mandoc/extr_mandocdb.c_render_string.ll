; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_render_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_render_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESCAPE_SPECIAL = common dso_local global i64 0, align 8
@write_utf8 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*)* @render_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @render_string(i8** %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [7 x i8], align 1
  %15 = alloca [6 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i64* %1, i64** %5, align 8
  %18 = getelementptr inbounds [6 x i8], [6 x i8]* %15, i64 0, i64 0
  store i8 92, i8* %18, align 1
  %19 = getelementptr inbounds [6 x i8], [6 x i8]* %15, i64 0, i64 1
  store i8 9, i8* %19, align 1
  %20 = getelementptr inbounds [6 x i8], [6 x i8]* %15, i64 0, i64 2
  store i8 -128, i8* %20, align 1
  %21 = getelementptr inbounds [6 x i8], [6 x i8]* %15, i64 0, i64 3
  store i8 -127, i8* %21, align 1
  %22 = getelementptr inbounds [6 x i8], [6 x i8]* %15, i64 0, i64 4
  store i8 -126, i8* %22, align 1
  %23 = getelementptr inbounds [6 x i8], [6 x i8]* %15, i64 0, i64 5
  store i8 0, i8* %23, align 1
  %24 = load i8**, i8*** %4, align 8
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %7, align 8
  store i8* %25, i8** %6, align 8
  %26 = load i64*, i64** %5, align 8
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %11, align 8
  store i8* null, i8** %10, align 8
  store i64 0, i64* %12, align 8
  br label %28

28:                                               ; preds = %132, %124, %115, %108, %98, %87, %75, %51, %2
  %29 = load i8*, i8** %7, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i64*, i64** %5, align 8
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = icmp ult i8* %29, %33
  br i1 %34, label %35, label %149

35:                                               ; preds = %28
  %36 = getelementptr inbounds [6 x i8], [6 x i8]* %15, i64 0, i64 0
  %37 = load i8*, i8** %7, align 8
  %38 = load i8, i8* %37, align 1
  %39 = call i32* @strchr(i8* %36, i8 signext %38)
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = load i8*, i8** %10, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i8*, i8** %7, align 8
  %46 = load i8, i8* %45, align 1
  %47 = load i8*, i8** %10, align 8
  %48 = load i64, i64* %12, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %12, align 8
  %50 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8 %46, i8* %50, align 1
  br label %51

51:                                               ; preds = %44, %41
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %7, align 8
  br label %28

54:                                               ; preds = %35
  %55 = load i8*, i8** %10, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %70

57:                                               ; preds = %54
  %58 = load i64, i64* %11, align 8
  %59 = add i64 %58, 1
  %60 = call i8* @mandoc_malloc(i64 %59)
  store i8* %60, i8** %10, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = ptrtoint i8* %61 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  store i64 %65, i64* %12, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = load i64, i64* %12, align 8
  %69 = call i32 @memcpy(i8* %66, i8* %67, i64 %68)
  br label %70

70:                                               ; preds = %57, %54
  %71 = load i8*, i8** %7, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  switch i32 %73, label %90 [
    i32 92, label %74
    i32 9, label %75
    i32 128, label %75
    i32 129, label %82
    i32 130, label %87
  ]

74:                                               ; preds = %70
  br label %92

75:                                               ; preds = %70, %70
  %76 = load i8*, i8** %10, align 8
  %77 = load i64, i64* %12, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %12, align 8
  %79 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8 32, i8* %79, align 1
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %7, align 8
  br label %28

82:                                               ; preds = %70
  %83 = load i8*, i8** %10, align 8
  %84 = load i64, i64* %12, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %12, align 8
  %86 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8 45, i8* %86, align 1
  br label %87

87:                                               ; preds = %70, %82
  %88 = load i8*, i8** %7, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %7, align 8
  br label %28

90:                                               ; preds = %70
  %91 = call i32 (...) @abort() #3
  unreachable

92:                                               ; preds = %74
  %93 = load i8*, i8** %7, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %7, align 8
  %95 = call i64 @mandoc_escape(i8** %7, i8** %9, i32* %16)
  %96 = load i64, i64* @ESCAPE_SPECIAL, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %28

99:                                               ; preds = %92
  %100 = load i64, i64* @write_utf8, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %118

102:                                              ; preds = %99
  %103 = load i8*, i8** %9, align 8
  %104 = load i32, i32* %16, align 4
  %105 = call i32 @mchars_spec2cp(i8* %103, i32 %104)
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %17, align 4
  %107 = icmp sle i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %28

109:                                              ; preds = %102
  %110 = load i32, i32* %17, align 4
  %111 = getelementptr inbounds [7 x i8], [7 x i8]* %14, i64 0, i64 0
  %112 = call i64 @utf8(i32 %110, i8* %111)
  store i64 %112, i64* %13, align 8
  %113 = load i64, i64* %13, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %28

116:                                              ; preds = %109
  %117 = getelementptr inbounds [7 x i8], [7 x i8]* %14, i64 0, i64 0
  store i8* %117, i8** %8, align 8
  br label %132

118:                                              ; preds = %99
  %119 = load i8*, i8** %9, align 8
  %120 = load i32, i32* %16, align 4
  %121 = call i8* @mchars_spec2str(i8* %119, i32 %120, i64* %13)
  store i8* %121, i8** %8, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = icmp eq i8* %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %28

125:                                              ; preds = %118
  %126 = load i8*, i8** %8, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 128
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i64 1, i64* %13, align 8
  br label %131

131:                                              ; preds = %130, %125
  br label %132

132:                                              ; preds = %131, %116
  %133 = load i64, i64* %13, align 8
  %134 = load i64, i64* %11, align 8
  %135 = add i64 %134, %133
  store i64 %135, i64* %11, align 8
  %136 = load i8*, i8** %10, align 8
  %137 = load i64, i64* %11, align 8
  %138 = add i64 %137, 1
  %139 = call i8* @mandoc_realloc(i8* %136, i64 %138)
  store i8* %139, i8** %10, align 8
  %140 = load i8*, i8** %10, align 8
  %141 = load i64, i64* %12, align 8
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  %143 = load i8*, i8** %8, align 8
  %144 = load i64, i64* %13, align 8
  %145 = call i32 @memcpy(i8* %142, i8* %143, i64 %144)
  %146 = load i64, i64* %13, align 8
  %147 = load i64, i64* %12, align 8
  %148 = add i64 %147, %146
  store i64 %148, i64* %12, align 8
  br label %28

149:                                              ; preds = %28
  %150 = load i8*, i8** %10, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load i8*, i8** %10, align 8
  %154 = load i8**, i8*** %4, align 8
  store i8* %153, i8** %154, align 8
  %155 = load i64, i64* %12, align 8
  %156 = load i64*, i64** %5, align 8
  store i64 %155, i64* %156, align 8
  br label %157

157:                                              ; preds = %152, %149
  br label %158

158:                                              ; preds = %174, %157
  %159 = load i64*, i64** %5, align 8
  %160 = load i64, i64* %159, align 8
  %161 = icmp ugt i64 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %158
  %163 = load i8**, i8*** %4, align 8
  %164 = load i8*, i8** %163, align 8
  %165 = load i64*, i64** %5, align 8
  %166 = load i64, i64* %165, align 8
  %167 = sub i64 %166, 1
  %168 = getelementptr inbounds i8, i8* %164, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 32
  br label %172

172:                                              ; preds = %162, %158
  %173 = phi i1 [ false, %158 ], [ %171, %162 ]
  br i1 %173, label %174, label %178

174:                                              ; preds = %172
  %175 = load i64*, i64** %5, align 8
  %176 = load i64, i64* %175, align 8
  %177 = add i64 %176, -1
  store i64 %177, i64* %175, align 8
  br label %158

178:                                              ; preds = %172
  %179 = load i8*, i8** %10, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %187

181:                                              ; preds = %178
  %182 = load i8**, i8*** %4, align 8
  %183 = load i8*, i8** %182, align 8
  %184 = load i64*, i64** %5, align 8
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  store i8 0, i8* %186, align 1
  store i32 1, i32* %3, align 4
  br label %188

187:                                              ; preds = %178
  store i32 0, i32* %3, align 4
  br label %188

188:                                              ; preds = %187, %181
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i8* @mandoc_malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @mandoc_escape(i8**, i8**, i32*) #1

declare dso_local i32 @mchars_spec2cp(i8*, i32) #1

declare dso_local i64 @utf8(i32, i8*) #1

declare dso_local i8* @mchars_spec2str(i8*, i32, i64*) #1

declare dso_local i8* @mandoc_realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
