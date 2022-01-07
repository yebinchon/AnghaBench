; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_alt.c_a2i_GENERAL_NAME.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_alt.c_a2i_GENERAL_NAME.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, i32*, i32* }

@X509V3_F_A2I_GENERAL_NAME = common dso_local global i32 0, align 4
@X509V3_R_MISSING_VALUE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@X509V3_R_BAD_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"value=\00", align 1
@X509V3_R_BAD_IP_ADDRESS = common dso_local global i32 0, align 4
@X509V3_R_DIRNAME_ERROR = common dso_local global i32 0, align 4
@X509V3_R_OTHERNAME_ERROR = common dso_local global i32 0, align 4
@X509V3_R_UNSUPPORTED_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @a2i_GENERAL_NAME(%struct.TYPE_10__* %0, i32* %1, i32* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i8 0, i8* %14, align 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %15, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %6
  %20 = load i32, i32* @X509V3_F_A2I_GENERAL_NAME, align 4
  %21 = load i32, i32* @X509V3_R_MISSING_VALUE, align 4
  %22 = call i32 @X509V3err(i32 %20, i32 %21)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %7, align 8
  br label %145

23:                                               ; preds = %6
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %25 = icmp ne %struct.TYPE_10__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %15, align 8
  br label %37

28:                                               ; preds = %23
  %29 = call %struct.TYPE_10__* (...) @GENERAL_NAME_new()
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %15, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %31 = icmp eq %struct.TYPE_10__* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* @X509V3_F_A2I_GENERAL_NAME, align 4
  %34 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %35 = call i32 @X509V3err(i32 %33, i32 %34)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %7, align 8
  br label %145

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %26
  %38 = load i32, i32* %11, align 4
  switch i32 %38, label %105 [
    i32 128, label %39
    i32 132, label %39
    i32 133, label %39
    i32 129, label %40
    i32 131, label %55
    i32 134, label %83
    i32 130, label %94
  ]

39:                                               ; preds = %37, %37, %37
  store i8 1, i8* %14, align 1
  br label %109

40:                                               ; preds = %37
  %41 = load i8*, i8** %12, align 8
  %42 = call i32* @OBJ_txt2obj(i8* %41, i32 0)
  store i32* %42, i32** %16, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32, i32* @X509V3_F_A2I_GENERAL_NAME, align 4
  %46 = load i32, i32* @X509V3_R_BAD_OBJECT, align 4
  %47 = call i32 @X509V3err(i32 %45, i32 %46)
  %48 = load i8*, i8** %12, align 8
  %49 = call i32 @ERR_add_error_data(i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %48)
  br label %138

50:                                               ; preds = %40
  %51 = load i32*, i32** %16, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  store i32* %51, i32** %54, align 8
  br label %109

55:                                               ; preds = %37
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i8*, i8** %12, align 8
  %60 = call i32* @a2i_IPADDRESS_NC(i8* %59)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  store i32* %60, i32** %63, align 8
  br label %70

64:                                               ; preds = %55
  %65 = load i8*, i8** %12, align 8
  %66 = call i32* @a2i_IPADDRESS(i8* %65)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  store i32* %66, i32** %69, align 8
  br label %70

70:                                               ; preds = %64, %58
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load i32, i32* @X509V3_F_A2I_GENERAL_NAME, align 4
  %78 = load i32, i32* @X509V3_R_BAD_IP_ADDRESS, align 4
  %79 = call i32 @X509V3err(i32 %77, i32 %78)
  %80 = load i8*, i8** %12, align 8
  %81 = call i32 @ERR_add_error_data(i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %80)
  br label %138

82:                                               ; preds = %70
  br label %109

83:                                               ; preds = %37
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @do_dirname(%struct.TYPE_10__* %84, i8* %85, i32* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %83
  %90 = load i32, i32* @X509V3_F_A2I_GENERAL_NAME, align 4
  %91 = load i32, i32* @X509V3_R_DIRNAME_ERROR, align 4
  %92 = call i32 @X509V3err(i32 %90, i32 %91)
  br label %138

93:                                               ; preds = %83
  br label %109

94:                                               ; preds = %37
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %96 = load i8*, i8** %12, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = call i32 @do_othername(%struct.TYPE_10__* %95, i8* %96, i32* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %94
  %101 = load i32, i32* @X509V3_F_A2I_GENERAL_NAME, align 4
  %102 = load i32, i32* @X509V3_R_OTHERNAME_ERROR, align 4
  %103 = call i32 @X509V3err(i32 %101, i32 %102)
  br label %138

104:                                              ; preds = %94
  br label %109

105:                                              ; preds = %37
  %106 = load i32, i32* @X509V3_F_A2I_GENERAL_NAME, align 4
  %107 = load i32, i32* @X509V3_R_UNSUPPORTED_TYPE, align 4
  %108 = call i32 @X509V3err(i32 %106, i32 %107)
  br label %138

109:                                              ; preds = %104, %93, %82, %50, %39
  %110 = load i8, i8* %14, align 1
  %111 = icmp ne i8 %110, 0
  br i1 %111, label %112, label %133

112:                                              ; preds = %109
  %113 = call i32* (...) @ASN1_IA5STRING_new()
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  store i32* %113, i32** %116, align 8
  %117 = icmp eq i32* %113, null
  br i1 %117, label %128, label %118

118:                                              ; preds = %112
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i8*, i8** %12, align 8
  %124 = load i8*, i8** %12, align 8
  %125 = call i32 @strlen(i8* %124)
  %126 = call i32 @ASN1_STRING_set(i32* %122, i8* %123, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %118, %112
  %129 = load i32, i32* @X509V3_F_A2I_GENERAL_NAME, align 4
  %130 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %131 = call i32 @X509V3err(i32 %129, i32 %130)
  br label %138

132:                                              ; preds = %118
  br label %133

133:                                              ; preds = %132, %109
  %134 = load i32, i32* %11, align 4
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %137, %struct.TYPE_10__** %7, align 8
  br label %145

138:                                              ; preds = %128, %105, %100, %89, %76, %44
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %140 = icmp ne %struct.TYPE_10__* %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %138
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %143 = call i32 @GENERAL_NAME_free(%struct.TYPE_10__* %142)
  br label %144

144:                                              ; preds = %141, %138
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %7, align 8
  br label %145

145:                                              ; preds = %144, %133, %32, %19
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  ret %struct.TYPE_10__* %146
}

declare dso_local i32 @X509V3err(i32, i32) #1

declare dso_local %struct.TYPE_10__* @GENERAL_NAME_new(...) #1

declare dso_local i32* @OBJ_txt2obj(i8*, i32) #1

declare dso_local i32 @ERR_add_error_data(i32, i8*, i8*) #1

declare dso_local i32* @a2i_IPADDRESS_NC(i8*) #1

declare dso_local i32* @a2i_IPADDRESS(i8*) #1

declare dso_local i32 @do_dirname(%struct.TYPE_10__*, i8*, i32*) #1

declare dso_local i32 @do_othername(%struct.TYPE_10__*, i8*, i32*) #1

declare dso_local i32* @ASN1_IA5STRING_new(...) #1

declare dso_local i32 @ASN1_STRING_set(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @GENERAL_NAME_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
