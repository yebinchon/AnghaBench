; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_parse_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_parse_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [151 x i8] c"name is expected to be in the format /type0=value0/type1=value1/type2=... where characters may be escaped by \\. This name is not in that format: '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"%s: Hit end of string before finding the equals.\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"%s: escape character at end of string\0A\00", align 1
@NID_undef = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"%s: Skipping unknown attribute \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"%s: No value provided for Subject Attribute %s, skipped\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @parse_name(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %5, align 8
  %18 = load i8, i8* %16, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 47
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i32, i32* @bio_err, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 -1
  store i8* %24, i8** %5, align 8
  %25 = call i32 (i32, i8*, i8*, ...) @BIO_printf(i32 %22, i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str, i64 0, i64 0), i8* %24)
  store i32* null, i32** %4, align 8
  br label %184

26:                                               ; preds = %3
  %27 = call i32* (...) @X509_NAME_new()
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32* null, i32** %4, align 8
  br label %184

31:                                               ; preds = %26
  %32 = load i8*, i8** %5, align 8
  %33 = call i8* @OPENSSL_strdup(i8* %32)
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %179

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %174, %153, %141, %37
  %39 = load i8*, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %42, label %175

42:                                               ; preds = %38
  %43 = load i8*, i8** %9, align 8
  store i8* %43, i8** %11, align 8
  %44 = load i8*, i8** %11, align 8
  store i8* %44, i8** %12, align 8
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %15, align 4
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %58, %42
  %47 = load i8*, i8** %5, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i8*, i8** %5, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 61
  br label %56

56:                                               ; preds = %51, %46
  %57 = phi i1 [ false, %46 ], [ %55, %51 ]
  br i1 %57, label %58, label %64

58:                                               ; preds = %56
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %5, align 8
  %61 = load i8, i8* %59, align 1
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %11, align 8
  store i8 %61, i8* %62, align 1
  br label %46

64:                                               ; preds = %56
  %65 = load i8*, i8** %5, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load i32, i32* @bio_err, align 4
  %71 = call i32 (...) @opt_getprog()
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = call i32 (i32, i8*, i8*, ...) @BIO_printf(i32 %70, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  br label %179

75:                                               ; preds = %64
  %76 = load i8*, i8** %11, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %11, align 8
  store i8 0, i8* %76, align 1
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %5, align 8
  %80 = load i8*, i8** %11, align 8
  store i8* %80, i8** %13, align 8
  br label %81

81:                                               ; preds = %120, %75
  %82 = load i8*, i8** %5, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load i8*, i8** %5, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 47
  br label %91

91:                                               ; preds = %86, %81
  %92 = phi i1 [ false, %81 ], [ %90, %86 ]
  br i1 %92, label %93, label %126

93:                                               ; preds = %91
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load i8*, i8** %5, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 43
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 1, i32* %8, align 4
  br label %126

102:                                              ; preds = %96, %93
  %103 = load i8*, i8** %5, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 92
  br i1 %106, label %107, label %119

107:                                              ; preds = %102
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %5, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %107
  %114 = load i32, i32* @bio_err, align 4
  %115 = call i32 (...) @opt_getprog()
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to i8*
  %118 = call i32 (i32, i8*, i8*, ...) @BIO_printf(i32 %114, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %117)
  br label %179

119:                                              ; preds = %107, %102
  br label %120

120:                                              ; preds = %119
  %121 = load i8*, i8** %5, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %5, align 8
  %123 = load i8, i8* %121, align 1
  %124 = load i8*, i8** %11, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %11, align 8
  store i8 %123, i8* %124, align 1
  br label %81

126:                                              ; preds = %101, %91
  %127 = load i8*, i8** %11, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %11, align 8
  store i8 0, i8* %127, align 1
  %129 = load i8*, i8** %5, align 8
  %130 = load i8, i8* %129, align 1
  %131 = icmp ne i8 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = load i8*, i8** %5, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %5, align 8
  br label %135

135:                                              ; preds = %132, %126
  %136 = load i8*, i8** %12, align 8
  %137 = call i32 @OBJ_txt2nid(i8* %136)
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* @NID_undef, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %135
  %142 = load i32, i32* @bio_err, align 4
  %143 = call i32 (...) @opt_getprog()
  %144 = sext i32 %143 to i64
  %145 = inttoptr i64 %144 to i8*
  %146 = load i8*, i8** %12, align 8
  %147 = call i32 (i32, i8*, i8*, ...) @BIO_printf(i32 %142, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %145, i8* %146)
  br label %38

148:                                              ; preds = %135
  %149 = load i8*, i8** %13, align 8
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %148
  %154 = load i32, i32* @bio_err, align 4
  %155 = call i32 (...) @opt_getprog()
  %156 = sext i32 %155 to i64
  %157 = inttoptr i64 %156 to i8*
  %158 = load i8*, i8** %12, align 8
  %159 = call i32 (i32, i8*, i8*, ...) @BIO_printf(i32 %154, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i8* %157, i8* %158)
  br label %38

160:                                              ; preds = %148
  %161 = load i32*, i32** %10, align 8
  %162 = load i32, i32* %14, align 4
  %163 = load i64, i64* %6, align 8
  %164 = load i8*, i8** %13, align 8
  %165 = load i8*, i8** %13, align 8
  %166 = call i32 @strlen(i8* %165)
  %167 = load i32, i32* %15, align 4
  %168 = icmp ne i32 %167, 0
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i32 -1, i32 0
  %171 = call i32 @X509_NAME_add_entry_by_NID(i32* %161, i32 %162, i64 %163, i8* %164, i32 %166, i32 -1, i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %160
  br label %179

174:                                              ; preds = %160
  br label %38

175:                                              ; preds = %38
  %176 = load i8*, i8** %9, align 8
  %177 = call i32 @OPENSSL_free(i8* %176)
  %178 = load i32*, i32** %10, align 8
  store i32* %178, i32** %4, align 8
  br label %184

179:                                              ; preds = %173, %113, %69, %36
  %180 = load i32*, i32** %10, align 8
  %181 = call i32 @X509_NAME_free(i32* %180)
  %182 = load i8*, i8** %9, align 8
  %183 = call i32 @OPENSSL_free(i8* %182)
  store i32* null, i32** %4, align 8
  br label %184

184:                                              ; preds = %179, %175, %30, %21
  %185 = load i32*, i32** %4, align 8
  ret i32* %185
}

declare dso_local i32 @BIO_printf(i32, i8*, i8*, ...) #1

declare dso_local i32* @X509_NAME_new(...) #1

declare dso_local i8* @OPENSSL_strdup(i8*) #1

declare dso_local i32 @opt_getprog(...) #1

declare dso_local i32 @OBJ_txt2nid(i8*) #1

declare dso_local i32 @X509_NAME_add_entry_by_NID(i32*, i32, i64, i8*, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @X509_NAME_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
