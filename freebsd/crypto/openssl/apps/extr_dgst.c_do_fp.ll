; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_dgst.c_do_fp.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_dgst.c_do_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZE = common dso_local global i64 0, align 8
@bio_err = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"Read Error in %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Verified OK\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Verification Failure\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Error Verifying Data\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Error Signing Data\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" *%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"-%s\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"(%s)= \00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"%s(%s)= \00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_fp(i32* %0, i8* %1, i32* %2, i32 %3, i32 %4, i32* %5, i8* %6, i32 %7, i8* %8, i8* %9, i8* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  store i32* %0, i32** %13, align 8
  store i8* %1, i8** %14, align 8
  store i32* %2, i32** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32* %5, i32** %18, align 8
  store i8* %6, i8** %19, align 8
  store i32 %7, i32* %20, align 4
  store i8* %8, i8** %21, align 8
  store i8* %9, i8** %22, align 8
  store i8* %10, i8** %23, align 8
  br label %28

28:                                               ; preds = %56, %11
  %29 = load i32*, i32** %15, align 8
  %30 = call i64 @BIO_pending(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = load i32*, i32** %15, align 8
  %34 = call i32 @BIO_eof(i32* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %32, %28
  %38 = phi i1 [ true, %28 ], [ %36, %32 ]
  br i1 %38, label %39, label %57

39:                                               ; preds = %37
  %40 = load i32*, i32** %15, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = load i64, i64* @BUFSIZE, align 8
  %43 = call i32 @BIO_read(i32* %40, i8* %41, i64 %42)
  store i32 %43, i32* %25, align 4
  %44 = load i32, i32* %25, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load i32*, i32** @bio_err, align 8
  %48 = load i8*, i8** %23, align 8
  %49 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %48)
  %50 = load i32*, i32** @bio_err, align 8
  %51 = call i32 @ERR_print_errors(i32* %50)
  store i32 1, i32* %12, align 4
  br label %208

52:                                               ; preds = %39
  %53 = load i32, i32* %25, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %57

56:                                               ; preds = %52
  br label %28

57:                                               ; preds = %55, %37
  %58 = load i8*, i8** %19, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %84

60:                                               ; preds = %57
  %61 = load i32*, i32** %15, align 8
  %62 = call i32 @BIO_get_md_ctx(i32* %61, i32** %26)
  %63 = load i32*, i32** %26, align 8
  %64 = load i8*, i8** %19, align 8
  %65 = load i32, i32* %20, align 4
  %66 = call i32 @EVP_DigestVerifyFinal(i32* %63, i8* %64, i32 %65)
  store i32 %66, i32* %25, align 4
  %67 = load i32, i32* %25, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load i32*, i32** %13, align 8
  %71 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %83

72:                                               ; preds = %60
  %73 = load i32, i32* %25, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32*, i32** %13, align 8
  %77 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %208

78:                                               ; preds = %72
  %79 = load i32*, i32** @bio_err, align 8
  %80 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %79, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i32*, i32** @bio_err, align 8
  %82 = call i32 @ERR_print_errors(i32* %81)
  store i32 1, i32* %12, align 4
  br label %208

83:                                               ; preds = %69
  store i32 0, i32* %12, align 4
  br label %208

84:                                               ; preds = %57
  %85 = load i32*, i32** %18, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %101

87:                                               ; preds = %84
  %88 = load i32*, i32** %15, align 8
  %89 = call i32 @BIO_get_md_ctx(i32* %88, i32** %27)
  %90 = load i64, i64* @BUFSIZE, align 8
  store i64 %90, i64* %24, align 8
  %91 = load i32*, i32** %27, align 8
  %92 = load i8*, i8** %14, align 8
  %93 = call i32 @EVP_DigestSignFinal(i32* %91, i8* %92, i64* %24)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %87
  %96 = load i32*, i32** @bio_err, align 8
  %97 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %98 = load i32*, i32** @bio_err, align 8
  %99 = call i32 @ERR_print_errors(i32* %98)
  store i32 1, i32* %12, align 4
  br label %208

100:                                              ; preds = %87
  br label %113

101:                                              ; preds = %84
  %102 = load i32*, i32** %15, align 8
  %103 = load i8*, i8** %14, align 8
  %104 = load i64, i64* @BUFSIZE, align 8
  %105 = call i64 @BIO_gets(i32* %102, i8* %103, i64 %104)
  store i64 %105, i64* %24, align 8
  %106 = load i64, i64* %24, align 8
  %107 = trunc i64 %106 to i32
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load i32*, i32** @bio_err, align 8
  %111 = call i32 @ERR_print_errors(i32* %110)
  store i32 1, i32* %12, align 4
  br label %208

112:                                              ; preds = %101
  br label %113

113:                                              ; preds = %112, %100
  %114 = load i32, i32* %17, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load i32*, i32** %13, align 8
  %118 = load i8*, i8** %14, align 8
  %119 = load i64, i64* %24, align 8
  %120 = call i32 @BIO_write(i32* %117, i8* %118, i64 %119)
  br label %207

121:                                              ; preds = %113
  %122 = load i32, i32* %16, align 4
  %123 = icmp eq i32 %122, 2
  br i1 %123, label %124, label %146

124:                                              ; preds = %121
  store i32 0, i32* %25, align 4
  br label %125

125:                                              ; preds = %139, %124
  %126 = load i32, i32* %25, align 4
  %127 = load i64, i64* %24, align 8
  %128 = trunc i64 %127 to i32
  %129 = icmp slt i32 %126, %128
  br i1 %129, label %130, label %142

130:                                              ; preds = %125
  %131 = load i32*, i32** %13, align 8
  %132 = load i8*, i8** %14, align 8
  %133 = load i32, i32* %25, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %130
  %140 = load i32, i32* %25, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %25, align 4
  br label %125

142:                                              ; preds = %125
  %143 = load i32*, i32** %13, align 8
  %144 = load i8*, i8** %23, align 8
  %145 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %144)
  br label %206

146:                                              ; preds = %121
  %147 = load i8*, i8** %21, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %163

149:                                              ; preds = %146
  %150 = load i32*, i32** %13, align 8
  %151 = load i8*, i8** %21, align 8
  %152 = call i32 @BIO_puts(i32* %150, i8* %151)
  %153 = load i8*, i8** %22, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %159

155:                                              ; preds = %149
  %156 = load i32*, i32** %13, align 8
  %157 = load i8*, i8** %22, align 8
  %158 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %156, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %157)
  br label %159

159:                                              ; preds = %155, %149
  %160 = load i32*, i32** %13, align 8
  %161 = load i8*, i8** %23, align 8
  %162 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %160, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %161)
  br label %176

163:                                              ; preds = %146
  %164 = load i8*, i8** %22, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %171

166:                                              ; preds = %163
  %167 = load i32*, i32** %13, align 8
  %168 = load i8*, i8** %22, align 8
  %169 = load i8*, i8** %23, align 8
  %170 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %167, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %168, i8* %169)
  br label %175

171:                                              ; preds = %163
  %172 = load i32*, i32** %13, align 8
  %173 = load i8*, i8** %23, align 8
  %174 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %172, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %173)
  br label %175

175:                                              ; preds = %171, %166
  br label %176

176:                                              ; preds = %175, %159
  store i32 0, i32* %25, align 4
  br label %177

177:                                              ; preds = %200, %176
  %178 = load i32, i32* %25, align 4
  %179 = load i64, i64* %24, align 8
  %180 = trunc i64 %179 to i32
  %181 = icmp slt i32 %178, %180
  br i1 %181, label %182, label %203

182:                                              ; preds = %177
  %183 = load i32, i32* %16, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %182
  %186 = load i32, i32* %25, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load i32*, i32** %13, align 8
  %190 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %189, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %191

191:                                              ; preds = %188, %185, %182
  %192 = load i32*, i32** %13, align 8
  %193 = load i8*, i8** %14, align 8
  %194 = load i32, i32* %25, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %193, i64 %195
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %192, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %198)
  br label %200

200:                                              ; preds = %191
  %201 = load i32, i32* %25, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %25, align 4
  br label %177

203:                                              ; preds = %177
  %204 = load i32*, i32** %13, align 8
  %205 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %204, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %206

206:                                              ; preds = %203, %142
  br label %207

207:                                              ; preds = %206, %116
  store i32 0, i32* %12, align 4
  br label %208

208:                                              ; preds = %207, %109, %95, %83, %78, %75, %46
  %209 = load i32, i32* %12, align 4
  ret i32 %209
}

declare dso_local i64 @BIO_pending(i32*) #1

declare dso_local i32 @BIO_eof(i32*) #1

declare dso_local i32 @BIO_read(i32*, i8*, i64) #1

declare dso_local i32 @BIO_printf(i32*, i8*, ...) #1

declare dso_local i32 @ERR_print_errors(i32*) #1

declare dso_local i32 @BIO_get_md_ctx(i32*, i32**) #1

declare dso_local i32 @EVP_DigestVerifyFinal(i32*, i8*, i32) #1

declare dso_local i32 @EVP_DigestSignFinal(i32*, i8*, i64*) #1

declare dso_local i64 @BIO_gets(i32*, i8*, i64) #1

declare dso_local i32 @BIO_write(i32*, i8*, i64) #1

declare dso_local i32 @BIO_puts(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
