; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pem/extr_pem_lib.c_get_header_and_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pem/extr_pem_lib.c_get_header_and_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAYBE_HEADER = common dso_local global i32 0, align 4
@LINESIZE = common dso_local global i64 0, align 8
@PEM_F_GET_HEADER_AND_DATA = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@PEM_R_SHORT_HEADER = common dso_local global i32 0, align 4
@IN_HEADER = common dso_local global i32 0, align 4
@endstr = common dso_local global i8* null, align 8
@ENDLEN = common dso_local global i32 0, align 4
@PEM_FLAG_ONLY_B64 = common dso_local global i32 0, align 4
@POST_HEADER = common dso_local global i32 0, align 4
@PEM_R_BAD_END_LINE = common dso_local global i32 0, align 4
@tailstr = common dso_local global i8* null, align 8
@TAILLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i32**, i8*, i32)* @get_header_and_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_header_and_data(i32* %0, i32** %1, i32** %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %22 = load i32**, i32*** %8, align 8
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %12, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %24 = load i32, i32* @MAYBE_HEADER, align 4
  store i32 %24, i32* %19, align 4
  %25 = load i64, i64* @LINESIZE, align 8
  %26 = add nsw i64 %25, 1
  %27 = load i32, i32* %11, align 4
  %28 = call i8* @pem_malloc(i64 %26, i32 %27)
  store i8* %28, i8** %13, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %5
  %32 = load i32, i32* @PEM_F_GET_HEADER_AND_DATA, align 4
  %33 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %34 = call i32 @PEMerr(i32 %32, i32 %33)
  store i32 0, i32* %6, align 4
  br label %180

35:                                               ; preds = %5
  store i32 0, i32* %16, align 4
  br label %36

36:                                               ; preds = %169, %35
  store i32 -1, i32* %20, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = load i64, i64* @LINESIZE, align 8
  %40 = call i32 @BIO_gets(i32* %37, i8* %38, i64 %39)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp sle i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @PEM_F_GET_HEADER_AND_DATA, align 4
  %45 = load i32, i32* @PEM_R_SHORT_HEADER, align 4
  %46 = call i32 @PEMerr(i32 %44, i32 %45)
  br label %173

47:                                               ; preds = %36
  %48 = load i32, i32* %19, align 4
  %49 = load i32, i32* @MAYBE_HEADER, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load i8*, i8** %13, align 8
  %53 = load i32, i32* %15, align 4
  %54 = call i32* @memchr(i8* %52, i8 signext 58, i32 %53)
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @IN_HEADER, align 4
  store i32 %57, i32* %19, align 4
  br label %58

58:                                               ; preds = %56, %51
  br label %59

59:                                               ; preds = %58, %47
  %60 = load i8*, i8** %13, align 8
  %61 = load i8*, i8** @endstr, align 8
  %62 = load i32, i32* @ENDLEN, align 4
  %63 = sext i32 %62 to i64
  %64 = call i64 @strncmp(i8* %60, i8* %61, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i32, i32* %19, align 4
  %68 = load i32, i32* @IN_HEADER, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66, %59
  %71 = load i32, i32* @PEM_FLAG_ONLY_B64, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %20, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %20, align 4
  br label %75

75:                                               ; preds = %70, %66
  %76 = load i8*, i8** %13, align 8
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %20, align 4
  %80 = and i32 %78, %79
  %81 = call i32 @sanitize_line(i8* %76, i32 %77, i32 %80)
  store i32 %81, i32* %15, align 4
  %82 = load i8*, i8** %13, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 10
  br i1 %86, label %87, label %99

87:                                               ; preds = %75
  %88 = load i32, i32* %19, align 4
  %89 = load i32, i32* @POST_HEADER, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i32, i32* @PEM_F_GET_HEADER_AND_DATA, align 4
  %93 = load i32, i32* @PEM_R_BAD_END_LINE, align 4
  %94 = call i32 @PEMerr(i32 %92, i32 %93)
  br label %173

95:                                               ; preds = %87
  %96 = load i32, i32* @POST_HEADER, align 4
  store i32 %96, i32* %19, align 4
  %97 = load i32**, i32*** %9, align 8
  %98 = load i32*, i32** %97, align 8
  store i32* %98, i32** %12, align 8
  br label %169

99:                                               ; preds = %75
  %100 = load i8*, i8** %13, align 8
  %101 = load i8*, i8** @endstr, align 8
  %102 = load i32, i32* @ENDLEN, align 4
  %103 = sext i32 %102 to i64
  %104 = call i64 @strncmp(i8* %100, i8* %101, i64 %103)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %141

106:                                              ; preds = %99
  %107 = load i8*, i8** %13, align 8
  %108 = load i32, i32* @ENDLEN, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  store i8* %110, i8** %14, align 8
  %111 = load i8*, i8** %10, align 8
  %112 = call i64 @strlen(i8* %111)
  store i64 %112, i64* %21, align 8
  %113 = load i8*, i8** %14, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = load i64, i64* %21, align 8
  %116 = call i64 @strncmp(i8* %113, i8* %114, i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %106
  %119 = load i8*, i8** %14, align 8
  %120 = load i64, i64* %21, align 8
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  %122 = load i8*, i8** @tailstr, align 8
  %123 = load i64, i64* @TAILLEN, align 8
  %124 = call i64 @strncmp(i8* %121, i8* %122, i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %118, %106
  %127 = load i32, i32* @PEM_F_GET_HEADER_AND_DATA, align 4
  %128 = load i32, i32* @PEM_R_BAD_END_LINE, align 4
  %129 = call i32 @PEMerr(i32 %127, i32 %128)
  br label %173

130:                                              ; preds = %118
  %131 = load i32, i32* %19, align 4
  %132 = load i32, i32* @MAYBE_HEADER, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load i32**, i32*** %9, align 8
  %136 = load i32*, i32** %135, align 8
  %137 = load i32**, i32*** %8, align 8
  store i32* %136, i32** %137, align 8
  %138 = load i32*, i32** %12, align 8
  %139 = load i32**, i32*** %9, align 8
  store i32* %138, i32** %139, align 8
  br label %140

140:                                              ; preds = %134, %130
  br label %172

141:                                              ; preds = %99
  %142 = load i32, i32* %18, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load i32, i32* @PEM_F_GET_HEADER_AND_DATA, align 4
  %146 = load i32, i32* @PEM_R_BAD_END_LINE, align 4
  %147 = call i32 @PEMerr(i32 %145, i32 %146)
  br label %173

148:                                              ; preds = %141
  br label %149

149:                                              ; preds = %148
  %150 = load i32*, i32** %12, align 8
  %151 = load i8*, i8** %13, align 8
  %152 = call i64 @BIO_puts(i32* %150, i8* %151)
  %153 = icmp slt i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  br label %173

155:                                              ; preds = %149
  %156 = load i32, i32* %19, align 4
  %157 = load i32, i32* @POST_HEADER, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %155
  %160 = load i32, i32* %15, align 4
  %161 = icmp sgt i32 %160, 65
  br i1 %161, label %162, label %163

162:                                              ; preds = %159
  br label %173

163:                                              ; preds = %159
  %164 = load i32, i32* %15, align 4
  %165 = icmp slt i32 %164, 65
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  store i32 1, i32* %18, align 4
  br label %167

167:                                              ; preds = %166, %163
  br label %168

168:                                              ; preds = %167, %155
  br label %169

169:                                              ; preds = %168, %95
  %170 = load i32, i32* %16, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %16, align 4
  br label %36

172:                                              ; preds = %140
  store i32 1, i32* %17, align 4
  br label %173

173:                                              ; preds = %172, %162, %154, %144, %126, %91, %43
  %174 = load i8*, i8** %13, align 8
  %175 = load i32, i32* %11, align 4
  %176 = load i64, i64* @LINESIZE, align 8
  %177 = add nsw i64 %176, 1
  %178 = call i32 @pem_free(i8* %174, i32 %175, i64 %177)
  %179 = load i32, i32* %17, align 4
  store i32 %179, i32* %6, align 4
  br label %180

180:                                              ; preds = %173, %31
  %181 = load i32, i32* %6, align 4
  ret i32 %181
}

declare dso_local i8* @pem_malloc(i64, i32) #1

declare dso_local i32 @PEMerr(i32, i32) #1

declare dso_local i32 @BIO_gets(i32*, i8*, i64) #1

declare dso_local i32* @memchr(i8*, i8 signext, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @sanitize_line(i8*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @BIO_puts(i32*, i8*) #1

declare dso_local i32 @pem_free(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
