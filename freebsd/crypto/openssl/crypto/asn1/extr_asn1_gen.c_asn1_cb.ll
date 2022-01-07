; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_asn1_gen.c_asn1_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_asn1_gen.c_asn1_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32, i32, i32 }

@ASN1_F_ASN1_CB = common dso_local global i32 0, align 4
@ASN1_R_UNKNOWN_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"tag=\00", align 1
@ASN1_GEN_FLAG = common dso_local global i32 0, align 4
@ASN1_R_MISSING_VALUE = common dso_local global i32 0, align 4
@ASN1_R_ILLEGAL_NESTED_TAGGING = common dso_local global i32 0, align 4
@V_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@V_ASN1_UNIVERSAL = common dso_local global i32 0, align 4
@V_ASN1_SET = common dso_local global i32 0, align 4
@V_ASN1_BIT_STRING = common dso_local global i32 0, align 4
@V_ASN1_OCTET_STRING = common dso_local global i32 0, align 4
@ASN1_R_UNKNOWN_FORMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@ASN1_GEN_FORMAT_ASCII = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"UTF8\00", align 1
@ASN1_GEN_FORMAT_UTF8 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"HEX\00", align 1
@ASN1_GEN_FORMAT_HEX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"BITLIST\00", align 1
@ASN1_GEN_FORMAT_BITLIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @asn1_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn1_cb(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %8, align 8
  store i32 0, i32* %11, align 4
  store i8* null, i8** %13, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %211

21:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %22 = load i8*, i8** %5, align 8
  store i8* %22, i8** %12, align 8
  br label %23

23:                                               ; preds = %51, %21
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %23
  %28 = load i8*, i8** %12, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 58
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  %33 = load i8*, i8** %12, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8* %34, i8** %13, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = load i8*, i8** %13, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = sub nsw i64 %36, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %11, align 4
  %44 = load i8*, i8** %12, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %6, align 4
  br label %56

50:                                               ; preds = %27
  br label %51

51:                                               ; preds = %50
  %52 = load i8*, i8** %12, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %12, align 8
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %23

56:                                               ; preds = %32, %23
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @asn1_str2tag(i8* %57, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load i32, i32* @ASN1_F_ASN1_CB, align 4
  %64 = load i32, i32* @ASN1_R_UNKNOWN_TAG, align 4
  %65 = call i32 @ASN1err(i32 %63, i32 %64)
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @ERR_add_error_data(i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %66)
  store i32 -1, i32* %4, align 4
  br label %211

68:                                               ; preds = %56
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @ASN1_GEN_FLAG, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %95, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %94, label %82

82:                                               ; preds = %73
  %83 = load i8*, i8** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load i32, i32* @ASN1_F_ASN1_CB, align 4
  %92 = load i32, i32* @ASN1_R_MISSING_VALUE, align 4
  %93 = call i32 @ASN1err(i32 %91, i32 %92)
  store i32 -1, i32* %4, align 4
  br label %211

94:                                               ; preds = %82, %73
  store i32 0, i32* %4, align 4
  br label %211

95:                                               ; preds = %68
  %96 = load i32, i32* %10, align 4
  switch i32 %96, label %210 [
    i32 131, label %97
    i32 133, label %117
    i32 129, label %131
    i32 128, label %139
    i32 134, label %147
    i32 130, label %155
    i32 132, label %163
  ]

97:                                               ; preds = %95
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, -1
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i32, i32* @ASN1_F_ASN1_CB, align 4
  %104 = load i32, i32* @ASN1_R_ILLEGAL_NESTED_TAGGING, align 4
  %105 = call i32 @ASN1err(i32 %103, i32 %104)
  store i32 -1, i32* %4, align 4
  br label %211

106:                                              ; preds = %97
  %107 = load i8*, i8** %13, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 3
  %113 = call i32 @parse_tagging(i8* %107, i32 %108, i32* %110, i32* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %106
  store i32 -1, i32* %4, align 4
  br label %211

116:                                              ; preds = %106
  br label %210

117:                                              ; preds = %95
  %118 = load i8*, i8** %13, align 8
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @parse_tagging(i8* %118, i32 %119, i32* %14, i32* %15)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %117
  store i32 -1, i32* %4, align 4
  br label %211

123:                                              ; preds = %117
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @append_exp(%struct.TYPE_3__* %124, i32 %125, i32 %126, i32 1, i32 0, i32 0)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %123
  store i32 -1, i32* %4, align 4
  br label %211

130:                                              ; preds = %123
  br label %210

131:                                              ; preds = %95
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %133 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  %134 = load i32, i32* @V_ASN1_UNIVERSAL, align 4
  %135 = call i32 @append_exp(%struct.TYPE_3__* %132, i32 %133, i32 %134, i32 1, i32 0, i32 1)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %131
  store i32 -1, i32* %4, align 4
  br label %211

138:                                              ; preds = %131
  br label %210

139:                                              ; preds = %95
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %141 = load i32, i32* @V_ASN1_SET, align 4
  %142 = load i32, i32* @V_ASN1_UNIVERSAL, align 4
  %143 = call i32 @append_exp(%struct.TYPE_3__* %140, i32 %141, i32 %142, i32 1, i32 0, i32 1)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %139
  store i32 -1, i32* %4, align 4
  br label %211

146:                                              ; preds = %139
  br label %210

147:                                              ; preds = %95
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %149 = load i32, i32* @V_ASN1_BIT_STRING, align 4
  %150 = load i32, i32* @V_ASN1_UNIVERSAL, align 4
  %151 = call i32 @append_exp(%struct.TYPE_3__* %148, i32 %149, i32 %150, i32 0, i32 1, i32 1)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %147
  store i32 -1, i32* %4, align 4
  br label %211

154:                                              ; preds = %147
  br label %210

155:                                              ; preds = %95
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %157 = load i32, i32* @V_ASN1_OCTET_STRING, align 4
  %158 = load i32, i32* @V_ASN1_UNIVERSAL, align 4
  %159 = call i32 @append_exp(%struct.TYPE_3__* %156, i32 %157, i32 %158, i32 0, i32 0, i32 1)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %155
  store i32 -1, i32* %4, align 4
  br label %211

162:                                              ; preds = %155
  br label %210

163:                                              ; preds = %95
  %164 = load i8*, i8** %13, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %170, label %166

166:                                              ; preds = %163
  %167 = load i32, i32* @ASN1_F_ASN1_CB, align 4
  %168 = load i32, i32* @ASN1_R_UNKNOWN_FORMAT, align 4
  %169 = call i32 @ASN1err(i32 %167, i32 %168)
  store i32 -1, i32* %4, align 4
  br label %211

170:                                              ; preds = %163
  %171 = load i8*, i8** %13, align 8
  %172 = call i32 @strncmp(i8* %171, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  %175 = load i32, i32* @ASN1_GEN_FORMAT_ASCII, align 4
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 4
  store i32 %175, i32* %177, align 8
  br label %209

178:                                              ; preds = %170
  %179 = load i8*, i8** %13, align 8
  %180 = call i32 @strncmp(i8* %179, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %178
  %183 = load i32, i32* @ASN1_GEN_FORMAT_UTF8, align 4
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 4
  store i32 %183, i32* %185, align 8
  br label %208

186:                                              ; preds = %178
  %187 = load i8*, i8** %13, align 8
  %188 = call i32 @strncmp(i8* %187, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %186
  %191 = load i32, i32* @ASN1_GEN_FORMAT_HEX, align 4
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 4
  store i32 %191, i32* %193, align 8
  br label %207

194:                                              ; preds = %186
  %195 = load i8*, i8** %13, align 8
  %196 = call i32 @strncmp(i8* %195, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %194
  %199 = load i32, i32* @ASN1_GEN_FORMAT_BITLIST, align 4
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 4
  store i32 %199, i32* %201, align 8
  br label %206

202:                                              ; preds = %194
  %203 = load i32, i32* @ASN1_F_ASN1_CB, align 4
  %204 = load i32, i32* @ASN1_R_UNKNOWN_FORMAT, align 4
  %205 = call i32 @ASN1err(i32 %203, i32 %204)
  store i32 -1, i32* %4, align 4
  br label %211

206:                                              ; preds = %198
  br label %207

207:                                              ; preds = %206, %190
  br label %208

208:                                              ; preds = %207, %182
  br label %209

209:                                              ; preds = %208, %174
  br label %210

210:                                              ; preds = %95, %209, %162, %154, %146, %138, %130, %116
  store i32 1, i32* %4, align 4
  br label %211

211:                                              ; preds = %210, %202, %166, %161, %153, %145, %137, %129, %122, %115, %102, %94, %90, %62, %20
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local i32 @asn1_str2tag(i8*, i32) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @ERR_add_error_data(i32, i8*, i8*) #1

declare dso_local i32 @parse_tagging(i8*, i32, i32*, i32*) #1

declare dso_local i32 @append_exp(%struct.TYPE_3__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
