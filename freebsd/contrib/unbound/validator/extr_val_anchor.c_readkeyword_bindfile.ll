; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_readkeyword_bindfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_readkeyword_bindfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"trusted-keys, %d, string too long\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32)* @readkeyword_bindfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readkeyword_bindfile(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %188, %106, %46, %23, %4
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @getc(i32* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @EOF, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %189

17:                                               ; preds = %12
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %21, 35
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @skip_to_eol(i32* %24)
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %12

29:                                               ; preds = %20, %17
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 47
  br i1 %34, label %35, label %56

35:                                               ; preds = %32
  %36 = load i32, i32* %11, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %35
  %39 = load i32*, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i64 @sldns_buffer_position(i32* %40)
  %42 = sub nsw i64 %41, 1
  %43 = call signext i8 @sldns_buffer_read_u8_at(i32* %39, i64 %42)
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 47
  br i1 %45, label %46, label %56

46:                                               ; preds = %38
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @sldns_buffer_skip(i32* %47, i32 -1)
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %11, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @skip_to_eol(i32* %51)
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  br label %12

56:                                               ; preds = %38, %35, %32, %29
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %107

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %60, 42
  br i1 %61, label %62, label %107

62:                                               ; preds = %59
  %63 = load i32, i32* %11, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %107

65:                                               ; preds = %62
  %66 = load i32*, i32** %7, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = call i64 @sldns_buffer_position(i32* %67)
  %69 = sub nsw i64 %68, 1
  %70 = call signext i8 @sldns_buffer_read_u8_at(i32* %66, i64 %69)
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 47
  br i1 %72, label %73, label %107

73:                                               ; preds = %65
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @sldns_buffer_skip(i32* %74, i32 -1)
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %105, %73
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @EOF, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @getc(i32* %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* @EOF, align 4
  %86 = icmp ne i32 %84, %85
  br label %87

87:                                               ; preds = %82, %78
  %88 = phi i1 [ false, %78 ], [ %86, %82 ]
  br i1 %88, label %89, label %106

89:                                               ; preds = %87
  %90 = load i32, i32* %10, align 4
  %91 = icmp eq i32 %90, 42
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @getc(i32* %93)
  store i32 %94, i32* %10, align 4
  %95 = icmp eq i32 %94, 47
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %106

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %97, %89
  %99 = load i32, i32* %10, align 4
  %100 = icmp eq i32 %99, 10
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %101, %98
  br label %78

106:                                              ; preds = %96, %87
  br label %12

107:                                              ; preds = %65, %62, %59, %56
  br label %108

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %11, align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %132

112:                                              ; preds = %109
  %113 = load i32, i32* %10, align 4
  %114 = trunc i32 %113 to i8
  %115 = call i64 @isspace(i8 zeroext %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load i32, i32* %10, align 4
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 @ungetc(i32 %118, i32* %119)
  %121 = load i32, i32* %11, align 4
  store i32 %121, i32* %5, align 4
  br label %191

122:                                              ; preds = %112
  %123 = load i32, i32* %10, align 4
  %124 = call i64 @is_bind_special(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = load i32, i32* %10, align 4
  %128 = load i32*, i32** %6, align 8
  %129 = call i32 @ungetc(i32 %127, i32* %128)
  %130 = load i32, i32* %11, align 4
  store i32 %130, i32* %5, align 4
  br label %191

131:                                              ; preds = %122
  br label %132

132:                                              ; preds = %131, %109
  %133 = load i32, i32* %10, align 4
  %134 = icmp eq i32 %133, 10
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  store i32 32, i32* %10, align 4
  %136 = load i32*, i32** %8, align 8
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %135, %132
  %140 = load i32*, i32** %7, align 8
  %141 = call i32 @sldns_buffer_remaining(i32* %140)
  %142 = icmp slt i32 %141, 2
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load i32*, i32** %8, align 8
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @fatal_exit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %143, %139
  %148 = load i32*, i32** %7, align 8
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @sldns_buffer_write_u8(i32* %148, i32 %149)
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %11, align 4
  %153 = load i32, i32* %10, align 4
  %154 = trunc i32 %153 to i8
  %155 = call i64 @isspace(i8 zeroext %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %182

157:                                              ; preds = %147
  br label %158

158:                                              ; preds = %179, %157
  %159 = load i32*, i32** %6, align 8
  %160 = call i32 @getc(i32* %159)
  store i32 %160, i32* %10, align 4
  %161 = load i32, i32* @EOF, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %180

163:                                              ; preds = %158
  %164 = load i32, i32* %10, align 4
  %165 = icmp eq i32 %164, 10
  br i1 %165, label %166, label %170

166:                                              ; preds = %163
  %167 = load i32*, i32** %8, align 8
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %166, %163
  %171 = load i32, i32* %10, align 4
  %172 = trunc i32 %171 to i8
  %173 = call i64 @isspace(i8 zeroext %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %179, label %175

175:                                              ; preds = %170
  %176 = load i32, i32* %10, align 4
  %177 = load i32*, i32** %6, align 8
  %178 = call i32 @ungetc(i32 %176, i32* %177)
  br label %180

179:                                              ; preds = %170
  br label %158

180:                                              ; preds = %175, %158
  %181 = load i32, i32* %11, align 4
  store i32 %181, i32* %5, align 4
  br label %191

182:                                              ; preds = %147
  %183 = load i32, i32* %10, align 4
  %184 = call i64 @is_bind_special(i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = load i32, i32* %11, align 4
  store i32 %187, i32* %5, align 4
  br label %191

188:                                              ; preds = %182
  br label %12

189:                                              ; preds = %12
  %190 = load i32, i32* %11, align 4
  store i32 %190, i32* %5, align 4
  br label %191

191:                                              ; preds = %189, %186, %180, %126, %117
  %192 = load i32, i32* %5, align 4
  ret i32 %192
}

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @skip_to_eol(i32*) #1

declare dso_local signext i8 @sldns_buffer_read_u8_at(i32*, i64) #1

declare dso_local i64 @sldns_buffer_position(i32*) #1

declare dso_local i32 @sldns_buffer_skip(i32*, i32) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @ungetc(i32, i32*) #1

declare dso_local i64 @is_bind_special(i32) #1

declare dso_local i32 @sldns_buffer_remaining(i32*) #1

declare dso_local i32 @fatal_exit(i8*, i32) #1

declare dso_local i32 @sldns_buffer_write_u8(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
