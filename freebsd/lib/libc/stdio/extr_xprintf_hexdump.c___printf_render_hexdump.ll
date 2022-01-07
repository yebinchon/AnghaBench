; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_xprintf_hexdump.c___printf_render_hexdump.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_xprintf_hexdump.c___printf_render_hexdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__printf_io = type { i32 }
%struct.printf_info = type { i32, i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c" %04x\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"  |\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__printf_render_hexdump(%struct.__printf_io* %0, %struct.printf_info* %1, i8** %2) #0 {
  %4 = alloca %struct.__printf_io*, align 8
  %5 = alloca %struct.printf_info*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [100 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.__printf_io* %0, %struct.__printf_io** %4, align 8
  store %struct.printf_info* %1, %struct.printf_info** %5, align 8
  store i8** %2, i8*** %6, align 8
  %16 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %17 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %22 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %23, 16
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %27 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %10, align 4
  br label %30

29:                                               ; preds = %20, %3
  store i32 16, i32* %10, align 4
  br label %30

30:                                               ; preds = %29, %25
  %31 = load i8**, i8*** %6, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = bitcast i8* %33 to i8**
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %7, align 8
  %36 = load i8**, i8*** %6, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %43, %30
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %9, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %192, %44
  %47 = load i32, i32* %9, align 4
  %48 = icmp ugt i32 %47, 0
  br i1 %48, label %49, label %210

49:                                               ; preds = %46
  %50 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  store i8* %50, i8** %14, align 8
  %51 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %52 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load i8*, i8** %14, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 (i8*, i8*, ...) @sprintf(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i8*, i8** %14, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %61, i8** %14, align 8
  br label %62

62:                                               ; preds = %55, %49
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %85, %62
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ult i32 %68, %69
  br label %71

71:                                               ; preds = %67, %63
  %72 = phi i1 [ false, %63 ], [ %70, %67 ]
  br i1 %72, label %73, label %88

73:                                               ; preds = %71
  %74 = load i8*, i8** %14, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* %11, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = call i32 (i8*, i8*, ...) @sprintf(i8* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i8*, i8** %14, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8* %84, i8** %14, align 8
  br label %85

85:                                               ; preds = %73
  %86 = load i32, i32* %11, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %63

88:                                               ; preds = %71
  %89 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %90 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %168

93:                                               ; preds = %88
  br label %94

94:                                               ; preds = %104, %93
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %94
  %99 = load i8*, i8** %14, align 8
  %100 = call i32 (i8*, i8*, ...) @sprintf(i8* %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %101 = load i8*, i8** %14, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %14, align 8
  br label %104

104:                                              ; preds = %98
  %105 = load i32, i32* %11, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %11, align 4
  br label %94

107:                                              ; preds = %94
  %108 = load i8*, i8** %14, align 8
  %109 = call i32 (i8*, i8*, ...) @sprintf(i8* %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %110 = load i8*, i8** %14, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  store i8* %112, i8** %14, align 8
  store i32 0, i32* %11, align 4
  br label %113

113:                                              ; preds = %151, %107
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp ult i32 %118, %119
  br label %121

121:                                              ; preds = %117, %113
  %122 = phi i1 [ false, %113 ], [ %120, %117 ]
  br i1 %122, label %123, label %154

123:                                              ; preds = %121
  %124 = load i8*, i8** %7, align 8
  %125 = load i32, i32* %11, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp slt i32 %129, 32
  br i1 %130, label %139, label %131

131:                                              ; preds = %123
  %132 = load i8*, i8** %7, align 8
  %133 = load i32, i32* %11, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = icmp sgt i32 %137, 126
  br i1 %138, label %139, label %142

139:                                              ; preds = %131, %123
  %140 = load i8*, i8** %14, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %14, align 8
  store i8 46, i8* %140, align 1
  br label %150

142:                                              ; preds = %131
  %143 = load i8*, i8** %7, align 8
  %144 = load i32, i32* %11, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = load i8*, i8** %14, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %14, align 8
  store i8 %147, i8* %148, align 1
  br label %150

150:                                              ; preds = %142, %139
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %11, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %11, align 4
  br label %113

154:                                              ; preds = %121
  br label %155

155:                                              ; preds = %162, %154
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %10, align 4
  %158 = icmp ult i32 %156, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %155
  %160 = load i8*, i8** %14, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %14, align 8
  store i8 32, i8* %160, align 1
  br label %162

162:                                              ; preds = %159
  %163 = load i32, i32* %11, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %11, align 4
  br label %155

165:                                              ; preds = %155
  %166 = load i8*, i8** %14, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %14, align 8
  store i8 124, i8* %166, align 1
  br label %168

168:                                              ; preds = %165, %88
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* %9, align 4
  %171 = icmp ult i32 %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = load i32, i32* %10, align 4
  store i32 %173, i32* %11, align 4
  br label %176

174:                                              ; preds = %168
  %175 = load i32, i32* %9, align 4
  store i32 %175, i32* %11, align 4
  br label %176

176:                                              ; preds = %174, %172
  %177 = load i32, i32* %11, align 4
  %178 = load i8*, i8** %7, align 8
  %179 = zext i32 %177 to i64
  %180 = getelementptr inbounds i8, i8* %178, i64 %179
  store i8* %180, i8** %7, align 8
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* %9, align 4
  %183 = sub i32 %182, %181
  store i32 %183, i32* %9, align 4
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* %12, align 4
  %186 = add i32 %185, %184
  store i32 %186, i32* %12, align 4
  %187 = load i32, i32* %9, align 4
  %188 = icmp ugt i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %176
  %190 = load i8*, i8** %14, align 8
  %191 = getelementptr inbounds i8, i8* %190, i32 1
  store i8* %191, i8** %14, align 8
  store i8 10, i8* %190, align 1
  br label %192

192:                                              ; preds = %189, %176
  %193 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %194 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %195 = getelementptr inbounds i8, i8* %194, i64 1
  %196 = load i8*, i8** %14, align 8
  %197 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %198 = getelementptr inbounds i8, i8* %197, i64 1
  %199 = ptrtoint i8* %196 to i64
  %200 = ptrtoint i8* %198 to i64
  %201 = sub i64 %199, %200
  %202 = trunc i64 %201 to i32
  %203 = call i64 @__printf_puts(%struct.__printf_io* %193, i8* %195, i32 %202)
  %204 = load i32, i32* %15, align 4
  %205 = sext i32 %204 to i64
  %206 = add nsw i64 %205, %203
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %15, align 4
  %208 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %209 = call i32 @__printf_flush(%struct.__printf_io* %208)
  br label %46

210:                                              ; preds = %46
  %211 = load i32, i32* %15, align 4
  ret i32 %211
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i64 @__printf_puts(%struct.__printf_io*, i8*, i32) #1

declare dso_local i32 @__printf_flush(%struct.__printf_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
