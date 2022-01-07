; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_load_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_load_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8* }

@FORMAT_ENGINE = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"no keyfile specified\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"no engine specified\0A\00", align 1
@ui_method = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"cannot load %s from engine\0A\00", align 1
@stdin = common dso_local global i32 0, align 4
@FORMAT_ASN1 = common dso_local global i32 0, align 4
@FORMAT_PEM = common dso_local global i32 0, align 4
@password_callback = common dso_local global i64 0, align 8
@FORMAT_PKCS12 = common dso_local global i32 0, align 4
@FORMAT_MSBLOB = common dso_local global i32 0, align 4
@FORMAT_PVK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"bad input format specified for key file\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"unable to load %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @load_key(i8* %0, i32 %1, i32 %2, i8* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_6__, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store i8* %18, i8** %19, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %6
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @FORMAT_ENGINE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %22
  %30 = load i32, i32* @bio_err, align 4
  %31 = call i32 (i32, i8*, ...) @BIO_printf(i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %136

32:                                               ; preds = %25, %6
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @FORMAT_ENGINE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %64

36:                                               ; preds = %32
  %37 = load i32*, i32** %11, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @bio_err, align 4
  %41 = call i32 (i32, i8*, ...) @BIO_printf(i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %63

42:                                               ; preds = %36
  %43 = load i32*, i32** %11, align 8
  %44 = call i64 @ENGINE_init(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i32*, i32** %11, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* @ui_method, align 4
  %50 = call i32* @ENGINE_load_private_key(i32* %47, i8* %48, i32 %49, %struct.TYPE_6__* %15)
  store i32* %50, i32** %14, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @ENGINE_finish(i32* %51)
  br label %53

53:                                               ; preds = %46, %42
  %54 = load i32*, i32** %14, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* @bio_err, align 4
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 (i32, i8*, ...) @BIO_printf(i32 %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  %60 = load i32, i32* @bio_err, align 4
  %61 = call i32 @ERR_print_errors(i32 %60)
  br label %62

62:                                               ; preds = %56, %53
  br label %63

63:                                               ; preds = %62, %39
  br label %136

64:                                               ; preds = %32
  %65 = load i8*, i8** %7, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i32, i32* @stdin, align 4
  %72 = call i32 @unbuffer(i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = call i32* @dup_bio_in(i32 %73)
  store i32* %74, i32** %13, align 8
  br label %79

75:                                               ; preds = %67, %64
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32* @bio_open_default(i8* %76, i8 signext 114, i32 %77)
  store i32* %78, i32** %13, align 8
  br label %79

79:                                               ; preds = %75, %70
  %80 = load i32*, i32** %13, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %136

83:                                               ; preds = %79
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @FORMAT_ASN1, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32*, i32** %13, align 8
  %89 = call i32* @d2i_PrivateKey_bio(i32* %88, i32* null)
  store i32* %89, i32** %14, align 8
  br label %135

90:                                               ; preds = %83
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @FORMAT_PEM, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i32*, i32** %13, align 8
  %96 = load i64, i64* @password_callback, align 8
  %97 = inttoptr i64 %96 to i32*
  %98 = call i32* @PEM_read_bio_PrivateKey(i32* %95, i32* null, i32* %97, %struct.TYPE_6__* %15)
  store i32* %98, i32** %14, align 8
  br label %134

99:                                               ; preds = %90
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @FORMAT_PKCS12, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %99
  %104 = load i32*, i32** %13, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = load i64, i64* @password_callback, align 8
  %107 = inttoptr i64 %106 to i32*
  %108 = call i32 @load_pkcs12(i32* %104, i8* %105, i32* %107, %struct.TYPE_6__* %15, i32** %14, i32* null, i32* null)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %103
  br label %136

111:                                              ; preds = %103
  br label %133

112:                                              ; preds = %99
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @FORMAT_MSBLOB, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i32*, i32** %13, align 8
  %118 = call i32* @b2i_PrivateKey_bio(i32* %117)
  store i32* %118, i32** %14, align 8
  br label %132

119:                                              ; preds = %112
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @FORMAT_PVK, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i32*, i32** %13, align 8
  %125 = load i64, i64* @password_callback, align 8
  %126 = inttoptr i64 %125 to i32*
  %127 = call i32* @b2i_PVK_bio(i32* %124, i32* %126, %struct.TYPE_6__* %15)
  store i32* %127, i32** %14, align 8
  br label %131

128:                                              ; preds = %119
  %129 = load i32, i32* @bio_err, align 4
  %130 = call i32 (i32, i8*, ...) @BIO_printf(i32 %129, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %136

131:                                              ; preds = %123
  br label %132

132:                                              ; preds = %131, %116
  br label %133

133:                                              ; preds = %132, %111
  br label %134

134:                                              ; preds = %133, %94
  br label %135

135:                                              ; preds = %134, %87
  br label %136

136:                                              ; preds = %135, %128, %110, %82, %63, %29
  %137 = load i32*, i32** %13, align 8
  %138 = call i32 @BIO_free(i32* %137)
  %139 = load i32*, i32** %14, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = load i32, i32* @bio_err, align 4
  %143 = load i8*, i8** %12, align 8
  %144 = call i32 (i32, i8*, ...) @BIO_printf(i32 %142, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %143)
  %145 = load i32, i32* @bio_err, align 4
  %146 = call i32 @ERR_print_errors(i32 %145)
  br label %147

147:                                              ; preds = %141, %136
  %148 = load i32*, i32** %14, align 8
  ret i32* %148
}

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i64 @ENGINE_init(i32*) #1

declare dso_local i32* @ENGINE_load_private_key(i32*, i8*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @ENGINE_finish(i32*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @unbuffer(i32) #1

declare dso_local i32* @dup_bio_in(i32) #1

declare dso_local i32* @bio_open_default(i8*, i8 signext, i32) #1

declare dso_local i32* @d2i_PrivateKey_bio(i32*, i32*) #1

declare dso_local i32* @PEM_read_bio_PrivateKey(i32*, i32*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @load_pkcs12(i32*, i8*, i32*, %struct.TYPE_6__*, i32**, i32*, i32*) #1

declare dso_local i32* @b2i_PrivateKey_bio(i32*) #1

declare dso_local i32* @b2i_PVK_bio(i32*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
