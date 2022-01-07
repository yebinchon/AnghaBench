; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_strex.c_do_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_strex.c_do_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUF_TYPE_WIDTH_MASK = common dso_local global i32 0, align 4
@ASN1_F_DO_BUF = common dso_local global i32 0, align 4
@ASN1_R_INVALID_UNIVERSALSTRING_LENGTH = common dso_local global i32 0, align 4
@ASN1_R_INVALID_BMPSTRING_LENGTH = common dso_local global i32 0, align 4
@ASN1_STRFLGS_ESC_2253 = common dso_local global i16 0, align 2
@CHARTYPE_FIRST_ESC_2253 = common dso_local global i16 0, align 2
@CHARTYPE_LAST_ESC_2253 = common dso_local global i16 0, align 2
@BUF_TYPE_CONVUTF8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i16, i8*, i32*, i8*)* @do_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_buf(i8* %0, i32 %1, i32 %2, i16 zeroext %3, i8* %4, i32* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i16, align 2
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca [6 x i8], align 1
  %25 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i16 %3, i16* %12, align 2
  store i8* %4, i8** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  %26 = load i8*, i8** %9, align 8
  store i8* %26, i8** %21, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8* %30, i8** %22, align 8
  store i32 0, i32* %17, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @BUF_TYPE_WIDTH_MASK, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %19, align 4
  %34 = load i32, i32* %19, align 4
  switch i32 %34, label %53 [
    i32 4, label %35
    i32 2, label %44
  ]

35:                                               ; preds = %7
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %36, 3
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @ASN1_F_DO_BUF, align 4
  %41 = load i32, i32* @ASN1_R_INVALID_UNIVERSALSTRING_LENGTH, align 4
  %42 = call i32 @ASN1err(i32 %40, i32 %41)
  store i32 -1, i32* %8, align 4
  br label %209

43:                                               ; preds = %35
  br label %54

44:                                               ; preds = %7
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* @ASN1_F_DO_BUF, align 4
  %50 = load i32, i32* @ASN1_R_INVALID_BMPSTRING_LENGTH, align 4
  %51 = call i32 @ASN1err(i32 %49, i32 %50)
  store i32 -1, i32* %8, align 4
  br label %209

52:                                               ; preds = %44
  br label %54

53:                                               ; preds = %7
  br label %54

54:                                               ; preds = %53, %52, %43
  br label %55

55:                                               ; preds = %206, %54
  %56 = load i8*, i8** %21, align 8
  %57 = load i8*, i8** %22, align 8
  %58 = icmp ne i8* %56, %57
  br i1 %58, label %59, label %207

59:                                               ; preds = %55
  %60 = load i8*, i8** %21, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = icmp eq i8* %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load i16, i16* %12, align 2
  %65 = zext i16 %64 to i32
  %66 = load i16, i16* @ASN1_STRFLGS_ESC_2253, align 2
  %67 = zext i16 %66 to i32
  %68 = and i32 %65, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i16, i16* @CHARTYPE_FIRST_ESC_2253, align 2
  store i16 %71, i16* %20, align 2
  br label %73

72:                                               ; preds = %63, %59
  store i16 0, i16* %20, align 2
  br label %73

73:                                               ; preds = %72, %70
  %74 = load i32, i32* %19, align 4
  switch i32 %74, label %133 [
    i32 4, label %75
    i32 2, label %101
    i32 1, label %113
    i32 0, label %118
  ]

75:                                               ; preds = %73
  %76 = load i8*, i8** %21, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %21, align 8
  %78 = load i8, i8* %76, align 1
  %79 = zext i8 %78 to i64
  %80 = shl i64 %79, 24
  store i64 %80, i64* %23, align 8
  %81 = load i8*, i8** %21, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %21, align 8
  %83 = load i8, i8* %81, align 1
  %84 = zext i8 %83 to i64
  %85 = shl i64 %84, 16
  %86 = load i64, i64* %23, align 8
  %87 = or i64 %86, %85
  store i64 %87, i64* %23, align 8
  %88 = load i8*, i8** %21, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %21, align 8
  %90 = load i8, i8* %88, align 1
  %91 = zext i8 %90 to i64
  %92 = shl i64 %91, 8
  %93 = load i64, i64* %23, align 8
  %94 = or i64 %93, %92
  store i64 %94, i64* %23, align 8
  %95 = load i8*, i8** %21, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %21, align 8
  %97 = load i8, i8* %95, align 1
  %98 = zext i8 %97 to i64
  %99 = load i64, i64* %23, align 8
  %100 = or i64 %99, %98
  store i64 %100, i64* %23, align 8
  br label %134

101:                                              ; preds = %73
  %102 = load i8*, i8** %21, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %21, align 8
  %104 = load i8, i8* %102, align 1
  %105 = zext i8 %104 to i64
  %106 = shl i64 %105, 8
  store i64 %106, i64* %23, align 8
  %107 = load i8*, i8** %21, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %21, align 8
  %109 = load i8, i8* %107, align 1
  %110 = zext i8 %109 to i64
  %111 = load i64, i64* %23, align 8
  %112 = or i64 %111, %110
  store i64 %112, i64* %23, align 8
  br label %134

113:                                              ; preds = %73
  %114 = load i8*, i8** %21, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %21, align 8
  %116 = load i8, i8* %114, align 1
  %117 = zext i8 %116 to i64
  store i64 %117, i64* %23, align 8
  br label %134

118:                                              ; preds = %73
  %119 = load i8*, i8** %21, align 8
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @UTF8_getc(i8* %119, i32 %120, i64* %23)
  store i32 %121, i32* %16, align 4
  %122 = load i32, i32* %16, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  store i32 -1, i32* %8, align 4
  br label %209

125:                                              ; preds = %118
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* %10, align 4
  %128 = sub nsw i32 %127, %126
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %16, align 4
  %130 = load i8*, i8** %21, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  store i8* %132, i8** %21, align 8
  br label %134

133:                                              ; preds = %73
  store i32 -1, i32* %8, align 4
  br label %209

134:                                              ; preds = %125, %113, %101, %75
  %135 = load i8*, i8** %21, align 8
  %136 = load i8*, i8** %22, align 8
  %137 = icmp eq i8* %135, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %134
  %139 = load i16, i16* %12, align 2
  %140 = zext i16 %139 to i32
  %141 = load i16, i16* @ASN1_STRFLGS_ESC_2253, align 2
  %142 = zext i16 %141 to i32
  %143 = and i32 %140, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %138
  %146 = load i16, i16* @CHARTYPE_LAST_ESC_2253, align 2
  store i16 %146, i16* %20, align 2
  br label %147

147:                                              ; preds = %145, %138, %134
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* @BUF_TYPE_CONVUTF8, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %187

152:                                              ; preds = %147
  %153 = getelementptr inbounds [6 x i8], [6 x i8]* %24, i64 0, i64 0
  %154 = load i64, i64* %23, align 8
  %155 = call i32 @UTF8_putc(i8* %153, i32 6, i64 %154)
  store i32 %155, i32* %25, align 4
  store i32 0, i32* %16, align 4
  br label %156

156:                                              ; preds = %183, %152
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* %25, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %186

160:                                              ; preds = %156
  %161 = load i32, i32* %16, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [6 x i8], [6 x i8]* %24, i64 0, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i64
  %166 = load i16, i16* %12, align 2
  %167 = zext i16 %166 to i32
  %168 = load i16, i16* %20, align 2
  %169 = zext i16 %168 to i32
  %170 = or i32 %167, %169
  %171 = trunc i32 %170 to i16
  %172 = load i8*, i8** %13, align 8
  %173 = load i32*, i32** %14, align 8
  %174 = load i8*, i8** %15, align 8
  %175 = call i32 @do_esc_char(i64 %165, i16 zeroext %171, i8* %172, i32* %173, i8* %174)
  store i32 %175, i32* %18, align 4
  %176 = load i32, i32* %18, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %160
  store i32 -1, i32* %8, align 4
  br label %209

179:                                              ; preds = %160
  %180 = load i32, i32* %18, align 4
  %181 = load i32, i32* %17, align 4
  %182 = add nsw i32 %181, %180
  store i32 %182, i32* %17, align 4
  br label %183

183:                                              ; preds = %179
  %184 = load i32, i32* %16, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %16, align 4
  br label %156

186:                                              ; preds = %156
  br label %206

187:                                              ; preds = %147
  %188 = load i64, i64* %23, align 8
  %189 = load i16, i16* %12, align 2
  %190 = zext i16 %189 to i32
  %191 = load i16, i16* %20, align 2
  %192 = zext i16 %191 to i32
  %193 = or i32 %190, %192
  %194 = trunc i32 %193 to i16
  %195 = load i8*, i8** %13, align 8
  %196 = load i32*, i32** %14, align 8
  %197 = load i8*, i8** %15, align 8
  %198 = call i32 @do_esc_char(i64 %188, i16 zeroext %194, i8* %195, i32* %196, i8* %197)
  store i32 %198, i32* %18, align 4
  %199 = load i32, i32* %18, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %187
  store i32 -1, i32* %8, align 4
  br label %209

202:                                              ; preds = %187
  %203 = load i32, i32* %18, align 4
  %204 = load i32, i32* %17, align 4
  %205 = add nsw i32 %204, %203
  store i32 %205, i32* %17, align 4
  br label %206

206:                                              ; preds = %202, %186
  br label %55

207:                                              ; preds = %55
  %208 = load i32, i32* %17, align 4
  store i32 %208, i32* %8, align 4
  br label %209

209:                                              ; preds = %207, %201, %178, %133, %124, %48, %39
  %210 = load i32, i32* %8, align 4
  ret i32 %210
}

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @UTF8_getc(i8*, i32, i64*) #1

declare dso_local i32 @UTF8_putc(i8*, i32, i64) #1

declare dso_local i32 @do_esc_char(i64, i16 zeroext, i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
