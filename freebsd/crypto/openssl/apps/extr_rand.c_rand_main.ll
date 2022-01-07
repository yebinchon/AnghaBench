; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_rand.c_rand_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_rand.c_rand_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_BINARY = common dso_local global i32 0, align 4
@rand_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@FORMAT_BASE64 = common dso_local global i32 0, align 4
@FORMAT_TEXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Extra arguments given.\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rand_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca [4096 x i8], align 16
  %17 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i8* null, i8** %7, align 8
  %18 = load i32, i32* @FORMAT_BINARY, align 4
  store i32 %18, i32* %10, align 4
  store i32 -1, i32* %12, align 4
  store i32 1, i32* %14, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i8**, i8*** %4, align 8
  %21 = load i32, i32* @rand_options, align 4
  %22 = call i8* @opt_init(i32 %19, i8** %20, i32 %21)
  store i8* %22, i8** %8, align 8
  br label %23

23:                                               ; preds = %53, %2
  %24 = call i32 (...) @opt_next()
  store i32 %24, i32* %9, align 4
  %25 = icmp ne i32 %24, 133
  br i1 %25, label %26, label %54

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  switch i32 %27, label %53 [
    i32 133, label %28
    i32 132, label %28
    i32 131, label %35
    i32 129, label %38
    i32 134, label %40
    i32 128, label %43
    i32 135, label %49
    i32 130, label %51
  ]

28:                                               ; preds = %26, %26
  br label %29

29:                                               ; preds = %73, %28
  %30 = load i32, i32* @bio_err, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i32*
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %33)
  br label %166

35:                                               ; preds = %26
  %36 = load i32, i32* @rand_options, align 4
  %37 = call i32 @opt_help(i32 %36)
  store i32 0, i32* %14, align 4
  br label %166

38:                                               ; preds = %26
  %39 = call i8* (...) @opt_arg()
  store i8* %39, i8** %7, align 8
  br label %53

40:                                               ; preds = %26
  %41 = call i8* (...) @opt_arg()
  %42 = call i32* @setup_engine(i8* %41, i32 0)
  store i32* %42, i32** %5, align 8
  br label %53

43:                                               ; preds = %26
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @opt_rand(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  br label %166

48:                                               ; preds = %43
  br label %53

49:                                               ; preds = %26
  %50 = load i32, i32* @FORMAT_BASE64, align 4
  store i32 %50, i32* %10, align 4
  br label %53

51:                                               ; preds = %26
  %52 = load i32, i32* @FORMAT_TEXT, align 4
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %26, %51, %49, %48, %40, %38
  br label %23

54:                                               ; preds = %23
  %55 = call i32 (...) @opt_num_rest()
  store i32 %55, i32* %3, align 4
  %56 = call i8** (...) @opt_rest()
  store i8** %56, i8*** %4, align 8
  %57 = load i32, i32* %3, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load i8**, i8*** %4, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @opt_int(i8* %62, i32* %12)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* %12, align 4
  %67 = icmp sle i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65, %59
  br label %166

69:                                               ; preds = %65
  br label %79

70:                                               ; preds = %54
  %71 = load i32, i32* %3, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i32, i32* @bio_err, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i32*
  %77 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %76, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %29

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78, %69
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32* @bio_open_default(i8* %80, i8 signext 119, i32 %81)
  store i32* %82, i32** %6, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %166

86:                                               ; preds = %79
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @FORMAT_BASE64, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = call i32 (...) @BIO_f_base64()
  %92 = call i32* @BIO_new(i32 %91)
  store i32* %92, i32** %15, align 8
  %93 = load i32*, i32** %15, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %166

96:                                               ; preds = %90
  %97 = load i32*, i32** %15, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = call i32* @BIO_push(i32* %97, i32* %98)
  store i32* %99, i32** %6, align 8
  br label %100

100:                                              ; preds = %96, %86
  br label %101

101:                                              ; preds = %149, %100
  %102 = load i32, i32* %12, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %153

104:                                              ; preds = %101
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %17, align 4
  %107 = icmp sgt i32 %106, 4096
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  store i32 4096, i32* %17, align 4
  br label %109

109:                                              ; preds = %108, %104
  %110 = getelementptr inbounds [4096 x i8], [4096 x i8]* %16, i64 0, i64 0
  %111 = load i32, i32* %17, align 4
  %112 = call i32 @RAND_bytes(i8* %110, i32 %111)
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp sle i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %166

116:                                              ; preds = %109
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @FORMAT_TEXT, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %116
  %121 = load i32*, i32** %6, align 8
  %122 = getelementptr inbounds [4096 x i8], [4096 x i8]* %16, i64 0, i64 0
  %123 = load i32, i32* %17, align 4
  %124 = call i32 @BIO_write(i32* %121, i8* %122, i32 %123)
  %125 = load i32, i32* %17, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  br label %166

128:                                              ; preds = %120
  br label %149

129:                                              ; preds = %116
  store i32 0, i32* %11, align 4
  br label %130

130:                                              ; preds = %145, %129
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %17, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %148

134:                                              ; preds = %130
  %135 = load i32*, i32** %6, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [4096 x i8], [4096 x i8]* %16, i64 0, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %140)
  %142 = icmp ne i32 %141, 2
  br i1 %142, label %143, label %144

143:                                              ; preds = %134
  br label %166

144:                                              ; preds = %134
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %11, align 4
  br label %130

148:                                              ; preds = %130
  br label %149

149:                                              ; preds = %148, %128
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* %12, align 4
  %152 = sub nsw i32 %151, %150
  store i32 %152, i32* %12, align 4
  br label %101

153:                                              ; preds = %101
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* @FORMAT_TEXT, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = load i32*, i32** %6, align 8
  %159 = call i32 @BIO_puts(i32* %158, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %160

160:                                              ; preds = %157, %153
  %161 = load i32*, i32** %6, align 8
  %162 = call i64 @BIO_flush(i32* %161)
  %163 = icmp sle i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  br label %166

165:                                              ; preds = %160
  store i32 0, i32* %14, align 4
  br label %166

166:                                              ; preds = %165, %164, %143, %127, %115, %95, %85, %68, %47, %35, %29
  %167 = load i32, i32* %14, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load i32, i32* @bio_err, align 4
  %171 = call i32 @ERR_print_errors(i32 %170)
  br label %172

172:                                              ; preds = %169, %166
  %173 = load i32*, i32** %5, align 8
  %174 = call i32 @release_engine(i32* %173)
  %175 = load i32*, i32** %6, align 8
  %176 = call i32 @BIO_free_all(i32* %175)
  %177 = load i32, i32* %14, align 4
  ret i32 %177
}

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32*, i8*, ...) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i8* @opt_arg(...) #1

declare dso_local i32* @setup_engine(i8*, i32) #1

declare dso_local i32 @opt_rand(i32) #1

declare dso_local i32 @opt_num_rest(...) #1

declare dso_local i8** @opt_rest(...) #1

declare dso_local i32 @opt_int(i8*, i32*) #1

declare dso_local i32* @bio_open_default(i8*, i8 signext, i32) #1

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_f_base64(...) #1

declare dso_local i32* @BIO_push(i32*, i32*) #1

declare dso_local i32 @RAND_bytes(i8*, i32) #1

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

declare dso_local i32 @BIO_puts(i32*, i8*) #1

declare dso_local i64 @BIO_flush(i32*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @release_engine(i32*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
