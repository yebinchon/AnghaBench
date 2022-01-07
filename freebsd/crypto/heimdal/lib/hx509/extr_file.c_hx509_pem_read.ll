; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_file.c_hx509_pem_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_file.c_hx509_pem_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HX509_PARSING_KEY_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"-----BEGIN \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"-----END \00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"File ends before end of PEM end tag\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hx509_pem_read(i32 %0, i32* %1, i32 (i32, i8*, i32*, i8*, i64, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32 (i32, i8*, i32*, i8*, i64, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [1024 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 (i32, i8*, i32*, i8*, i64, i8*)* %2, i32 (i32, i8*, i32*, i8*, i64, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32* null, i32** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i64 0, i64* %12, align 8
  %18 = load i32, i32* @HX509_PARSING_KEY_FAILED, align 4
  store i32 %18, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %19

19:                                               ; preds = %183, %4
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %21 = load i32*, i32** %6, align 8
  %22 = call i32* @fgets(i8* %20, i32 1024, i32* %21)
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %184

24:                                               ; preds = %19
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %26 = call i32 @strcspn(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %17, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 10
  br i1 %32, label %33, label %43

33:                                               ; preds = %24
  %34 = load i32, i32* %17, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 %35
  store i8 0, i8* %36, align 1
  %37 = load i32, i32* %17, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* %17, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %17, align 4
  br label %42

42:                                               ; preds = %39, %33
  br label %43

43:                                               ; preds = %42, %24
  %44 = load i32, i32* %17, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 13
  br i1 %49, label %50, label %60

50:                                               ; preds = %43
  %51 = load i32, i32* %17, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 %52
  store i8 0, i8* %53, align 1
  %54 = load i32, i32* %17, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* %17, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %17, align 4
  br label %59

59:                                               ; preds = %56, %50
  br label %60

60:                                               ; preds = %59, %43
  %61 = load i32, i32* %15, align 4
  switch i32 %61, label %160 [
    i32 0, label %62
    i32 1, label %82
    i32 2, label %89
    i32 3, label %122
    i32 4, label %158
  ]

62:                                               ; preds = %60
  %63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %64 = call i32 @strncmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %63, i32 11)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %68 = getelementptr inbounds i8, i8* %67, i64 11
  %69 = call i8* @strdup(i8* %68)
  store i8* %69, i8** %10, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %160

73:                                               ; preds = %66
  %74 = load i8*, i8** %10, align 8
  %75 = call i8* @strchr(i8* %74, i8 signext 45)
  store i8* %75, i8** %16, align 8
  %76 = load i8*, i8** %16, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i8*, i8** %16, align 8
  store i8 0, i8* %79, align 1
  br label %80

80:                                               ; preds = %78, %73
  store i32 1, i32* %15, align 4
  br label %81

81:                                               ; preds = %80, %62
  br label %160

82:                                               ; preds = %60
  %83 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %84 = call i8* @strchr(i8* %83, i8 signext 58)
  store i8* %84, i8** %16, align 8
  %85 = load i8*, i8** %16, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 3, i32* %15, align 4
  br label %123

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %60, %88
  %90 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %91 = load i8, i8* %90, align 16
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 3, i32* %15, align 4
  br label %160

95:                                               ; preds = %89
  %96 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %97 = call i8* @strchr(i8* %96, i8 signext 58)
  store i8* %97, i8** %16, align 8
  %98 = load i8*, i8** %16, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %121

100:                                              ; preds = %95
  %101 = load i8*, i8** %16, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %16, align 8
  store i8 0, i8* %101, align 1
  br label %103

103:                                              ; preds = %109, %100
  %104 = load i8*, i8** %16, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = call i32 @isspace(i32 %106) #4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load i8*, i8** %16, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %16, align 8
  br label %103

112:                                              ; preds = %103
  %113 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %114 = load i8*, i8** %16, align 8
  %115 = call i32 @hx509_pem_add_header(i32** %9, i8* %113, i8* %114)
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %14, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = call i32 (...) @abort() #5
  unreachable

120:                                              ; preds = %112
  br label %121

121:                                              ; preds = %120, %95
  br label %160

122:                                              ; preds = %60
  br label %123

123:                                              ; preds = %122, %87
  %124 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %125 = call i32 @strncmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %124, i32 9)
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  store i32 4, i32* %15, align 4
  br label %160

128:                                              ; preds = %123
  %129 = load i32, i32* %17, align 4
  %130 = call i8* @emalloc(i32 %129)
  store i8* %130, i8** %16, align 8
  %131 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %132 = load i8*, i8** %16, align 8
  %133 = call i32 @base64_decode(i8* %131, i8* %132)
  store i32 %133, i32* %17, align 4
  %134 = load i32, i32* %17, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %128
  %137 = load i8*, i8** %16, align 8
  %138 = call i32 @free(i8* %137)
  br label %172

139:                                              ; preds = %128
  %140 = load i8*, i8** %11, align 8
  %141 = load i64, i64* %12, align 8
  %142 = load i32, i32* %17, align 4
  %143 = sext i32 %142 to i64
  %144 = add i64 %141, %143
  %145 = call i8* @erealloc(i8* %140, i64 %144)
  store i8* %145, i8** %11, align 8
  %146 = load i8*, i8** %11, align 8
  %147 = load i64, i64* %12, align 8
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  %149 = load i8*, i8** %16, align 8
  %150 = load i32, i32* %17, align 4
  %151 = call i32 @memcpy(i8* %148, i8* %149, i32 %150)
  %152 = load i8*, i8** %16, align 8
  %153 = call i32 @free(i8* %152)
  %154 = load i32, i32* %17, align 4
  %155 = sext i32 %154 to i64
  %156 = load i64, i64* %12, align 8
  %157 = add i64 %156, %155
  store i64 %157, i64* %12, align 8
  br label %160

158:                                              ; preds = %60
  %159 = call i32 (...) @abort() #5
  unreachable

160:                                              ; preds = %60, %139, %127, %121, %94, %81, %72
  %161 = load i32, i32* %15, align 4
  %162 = icmp eq i32 %161, 4
  br i1 %162, label %163, label %183

163:                                              ; preds = %160
  %164 = load i32 (i32, i8*, i32*, i8*, i64, i8*)*, i32 (i32, i8*, i32*, i8*, i64, i8*)** %7, align 8
  %165 = load i32, i32* %5, align 4
  %166 = load i8*, i8** %10, align 8
  %167 = load i32*, i32** %9, align 8
  %168 = load i8*, i8** %11, align 8
  %169 = load i64, i64* %12, align 8
  %170 = load i8*, i8** %8, align 8
  %171 = call i32 %164(i32 %165, i8* %166, i32* %167, i8* %168, i64 %169, i8* %170)
  store i32 %171, i32* %14, align 4
  br label %172

172:                                              ; preds = %163, %136
  %173 = load i8*, i8** %11, align 8
  %174 = call i32 @free(i8* %173)
  store i8* null, i8** %11, align 8
  store i64 0, i64* %12, align 8
  %175 = load i8*, i8** %10, align 8
  %176 = call i32 @free(i8* %175)
  store i8* null, i8** %10, align 8
  store i32 0, i32* %15, align 4
  %177 = load i32*, i32** %9, align 8
  %178 = call i32 @hx509_pem_free_header(i32* %177)
  store i32* null, i32** %9, align 8
  %179 = load i32, i32* %14, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %172
  br label %184

182:                                              ; preds = %172
  br label %183

183:                                              ; preds = %182, %160
  br label %19

184:                                              ; preds = %181, %19
  %185 = load i32, i32* %15, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %184
  %188 = load i32, i32* %5, align 4
  %189 = load i32, i32* @HX509_PARSING_KEY_FAILED, align 4
  %190 = call i32 @hx509_set_error_string(i32 %188, i32 0, i32 %189, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %191 = load i32, i32* @HX509_PARSING_KEY_FAILED, align 4
  store i32 %191, i32* %14, align 4
  br label %192

192:                                              ; preds = %187, %184
  %193 = load i8*, i8** %11, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load i8*, i8** %11, align 8
  %197 = call i32 @free(i8* %196)
  br label %198

198:                                              ; preds = %195, %192
  %199 = load i8*, i8** %10, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i8*, i8** %10, align 8
  %203 = call i32 @free(i8* %202)
  br label %204

204:                                              ; preds = %201, %198
  %205 = load i32*, i32** %9, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = load i32*, i32** %9, align 8
  %209 = call i32 @hx509_pem_free_header(i32* %208)
  br label %210

210:                                              ; preds = %207, %204
  %211 = load i32, i32* %14, align 4
  ret i32 %211
}

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isspace(i32) #2

declare dso_local i32 @hx509_pem_add_header(i32**, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

declare dso_local i8* @emalloc(i32) #1

declare dso_local i32 @base64_decode(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @erealloc(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @hx509_pem_free_header(i32*) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
