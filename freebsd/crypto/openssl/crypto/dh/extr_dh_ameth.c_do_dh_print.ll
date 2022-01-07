; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_ameth.c_do_dh_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_ameth.c_do_dh_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@ERR_R_BUF_LIB = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"DH Private-Key\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"DH Public-Key\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"DH Parameters\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%s: (%d bit)\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"private-key:\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"public-key:\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"prime:\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"generator:\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"subgroup order:\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"subgroup factor:\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"seed:\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"%02x%s\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"counter:\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"recommended-private-length: %d bits\0A\00", align 1
@DH_F_DO_DH_PRINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32, i32)* @do_dh_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_dh_print(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @ERR_R_BUF_LIB, align 4
  store i32 %15, i32* %10, align 4
  store i8* null, i8** %11, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 9
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %12, align 8
  br label %23

22:                                               ; preds = %4
  store i32* null, i32** %12, align 8
  br label %23

23:                                               ; preds = %22, %18
  %24 = load i32, i32* %9, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 8
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %13, align 8
  br label %31

30:                                               ; preds = %23
  store i32* null, i32** %13, align 8
  br label %31

31:                                               ; preds = %30, %26
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 7
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %48, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32*, i32** %12, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %9, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32*, i32** %13, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45, %39, %31
  %49 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  store i32 %49, i32* %10, align 4
  br label %231

50:                                               ; preds = %45, %42
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %60

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %59

58:                                               ; preds = %54
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %59

59:                                               ; preds = %58, %57
  br label %60

60:                                               ; preds = %59, %53
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @BIO_indent(i32* %61, i32 %62, i32 128)
  %64 = load i32*, i32** %6, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 7
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @BN_num_bits(i32* %68)
  %70 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %65, i32 %69)
  %71 = icmp sle i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  br label %231

73:                                               ; preds = %60
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 4
  store i32 %75, i32* %8, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @ASN1_bn_print(i32* %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %77, i32* null, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %73
  br label %231

82:                                               ; preds = %73
  %83 = load i32*, i32** %6, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @ASN1_bn_print(i32* %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* %84, i32* null, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  br label %231

89:                                               ; preds = %82
  %90 = load i32*, i32** %6, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 7
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @ASN1_bn_print(i32* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32* %93, i32* null, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %89
  br label %231

98:                                               ; preds = %89
  %99 = load i32*, i32** %6, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 6
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @ASN1_bn_print(i32* %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32* %102, i32* null, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %98
  br label %231

107:                                              ; preds = %98
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 5
  %110 = load i32*, i32** %109, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %121

112:                                              ; preds = %107
  %113 = load i32*, i32** %6, align 8
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 5
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @ASN1_bn_print(i32* %113, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32* %116, i32* null, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %112
  br label %231

121:                                              ; preds = %112, %107
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 4
  %124 = load i32*, i32** %123, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %135

126:                                              ; preds = %121
  %127 = load i32*, i32** %6, align 8
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 4
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @ASN1_bn_print(i32* %127, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32* %130, i32* null, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %126
  br label %231

135:                                              ; preds = %126, %121
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %198

140:                                              ; preds = %135
  %141 = load i32*, i32** %6, align 8
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @BIO_indent(i32* %141, i32 %142, i32 128)
  %144 = load i32*, i32** %6, align 8
  %145 = call i64 @BIO_puts(i32* %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %146

146:                                              ; preds = %189, %140
  %147 = load i32, i32* %14, align 4
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp slt i32 %147, %150
  br i1 %151, label %152, label %192

152:                                              ; preds = %146
  %153 = load i32, i32* %14, align 4
  %154 = srem i32 %153, 15
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %168

156:                                              ; preds = %152
  %157 = load i32*, i32** %6, align 8
  %158 = call i64 @BIO_puts(i32* %157, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %159 = icmp sle i64 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %156
  %161 = load i32*, i32** %6, align 8
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 4
  %164 = call i32 @BIO_indent(i32* %161, i32 %163, i32 128)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %160, %156
  br label %231

167:                                              ; preds = %160
  br label %168

168:                                              ; preds = %167, %152
  %169 = load i32*, i32** %6, align 8
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 3
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %14, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %14, align 4
  %178 = add nsw i32 %177, 1
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp eq i32 %178, %181
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)
  %185 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %169, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 %176, i8* %184)
  %186 = icmp sle i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %168
  br label %231

188:                                              ; preds = %168
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %14, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %14, align 4
  br label %146

192:                                              ; preds = %146
  %193 = load i32*, i32** %6, align 8
  %194 = call i64 @BIO_write(i32* %193, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 1)
  %195 = icmp sle i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %192
  store i32 0, i32* %5, align 4
  br label %235

197:                                              ; preds = %192
  br label %198

198:                                              ; preds = %197, %135
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = icmp ne i32* %201, null
  br i1 %202, label %203, label %212

203:                                              ; preds = %198
  %204 = load i32*, i32** %6, align 8
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 2
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %8, align 4
  %209 = call i32 @ASN1_bn_print(i32* %204, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32* %207, i32* null, i32 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %203
  br label %231

212:                                              ; preds = %203, %198
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %230

217:                                              ; preds = %212
  %218 = load i32*, i32** %6, align 8
  %219 = load i32, i32* %8, align 4
  %220 = call i32 @BIO_indent(i32* %218, i32 %219, i32 128)
  %221 = load i32*, i32** %6, align 8
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = trunc i64 %224 to i32
  %226 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %221, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i32 %225)
  %227 = icmp sle i64 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %217
  br label %231

229:                                              ; preds = %217
  br label %230

230:                                              ; preds = %229, %212
  store i32 1, i32* %5, align 4
  br label %235

231:                                              ; preds = %228, %211, %187, %166, %134, %120, %106, %97, %88, %81, %72, %48
  %232 = load i32, i32* @DH_F_DO_DH_PRINT, align 4
  %233 = load i32, i32* %10, align 4
  %234 = call i32 @DHerr(i32 %232, i32 %233)
  store i32 0, i32* %5, align 4
  br label %235

235:                                              ; preds = %231, %230, %196
  %236 = load i32, i32* %5, align 4
  ret i32 %236
}

declare dso_local i32 @BIO_indent(i32*, i32, i32) #1

declare dso_local i64 @BIO_printf(i32*, i8*, ...) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @ASN1_bn_print(i32*, i8*, i32*, i32*, i32) #1

declare dso_local i64 @BIO_puts(i32*, i8*) #1

declare dso_local i64 @BIO_write(i32*, i8*, i32) #1

declare dso_local i32 @DHerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
