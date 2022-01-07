; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_kdigest.c_digest_client_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_kdigest.c_digest_client_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.digest_client_request_options = type { i32*, i32*, i32*, i32, i32*, i32*, i32* }

@.str = private unnamed_addr constant [21 x i8] c"server nonce missing\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"password missing\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"opaque missing\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"server_nonce\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"server nonce wrong\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"client_nonce\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"client nonce wrong\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"server identifier wrong length\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"CHAP\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"server identifier missing\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"MS-CHAP-V2\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"client nonce missing\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @digest_client_request(%struct.digest_client_request_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.digest_client_request_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.digest_client_request_options* %0, %struct.digest_client_request_options** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store i8* null, i8** %8, align 8
  store i64 0, i64* %11, align 8
  %13 = load %struct.digest_client_request_options*, %struct.digest_client_request_options** %4, align 8
  %14 = getelementptr inbounds %struct.digest_client_request_options, %struct.digest_client_request_options* %13, i32 0, i32 5
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %3
  %20 = load %struct.digest_client_request_options*, %struct.digest_client_request_options** %4, align 8
  %21 = getelementptr inbounds %struct.digest_client_request_options, %struct.digest_client_request_options* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %19
  %27 = load %struct.digest_client_request_options*, %struct.digest_client_request_options** %4, align 8
  %28 = getelementptr inbounds %struct.digest_client_request_options, %struct.digest_client_request_options* %27, i32 0, i32 6
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %26
  %34 = load %struct.digest_client_request_options*, %struct.digest_client_request_options** %4, align 8
  %35 = getelementptr inbounds %struct.digest_client_request_options, %struct.digest_client_request_options* %34, i32 0, i32 5
  %36 = load i32*, i32** %35, align 8
  %37 = call i64 @strlen(i32* %36)
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i8* @malloc(i64 %38)
  store i8* %39, i8** %7, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = call i32 @errx(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %33
  %45 = load %struct.digest_client_request_options*, %struct.digest_client_request_options** %4, align 8
  %46 = getelementptr inbounds %struct.digest_client_request_options, %struct.digest_client_request_options* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i64, i64* %10, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i8* @hex_decode(i32* %47, i8* %48, i32 %50)
  %52 = ptrtoint i8* %51 to i64
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = icmp sle i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = call i32 @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %44
  %58 = load %struct.digest_client_request_options*, %struct.digest_client_request_options** %4, align 8
  %59 = getelementptr inbounds %struct.digest_client_request_options, %struct.digest_client_request_options* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %87

62:                                               ; preds = %57
  %63 = load %struct.digest_client_request_options*, %struct.digest_client_request_options** %4, align 8
  %64 = getelementptr inbounds %struct.digest_client_request_options, %struct.digest_client_request_options* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = call i64 @strlen(i32* %65)
  store i64 %66, i64* %11, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i8* @malloc(i64 %67)
  store i8* %68, i8** %8, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = call i32 @errx(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %62
  %74 = load %struct.digest_client_request_options*, %struct.digest_client_request_options** %4, align 8
  %75 = getelementptr inbounds %struct.digest_client_request_options, %struct.digest_client_request_options* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = load i64, i64* %11, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i8* @hex_decode(i32* %76, i8* %77, i32 %79)
  %81 = ptrtoint i8* %80 to i64
  store i64 %81, i64* %11, align 8
  %82 = load i64, i64* %11, align 8
  %83 = icmp sle i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %73
  %85 = call i32 @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %73
  br label %87

87:                                               ; preds = %86, %57
  %88 = load %struct.digest_client_request_options*, %struct.digest_client_request_options** %4, align 8
  %89 = getelementptr inbounds %struct.digest_client_request_options, %struct.digest_client_request_options* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %103

92:                                               ; preds = %87
  %93 = load %struct.digest_client_request_options*, %struct.digest_client_request_options** %4, align 8
  %94 = getelementptr inbounds %struct.digest_client_request_options, %struct.digest_client_request_options* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = call i8* @hex_decode(i32* %95, i8* %9, i32 1)
  %97 = ptrtoint i8* %96 to i32
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 1
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = call i32 @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %92
  br label %103

103:                                              ; preds = %102, %87
  %104 = load %struct.digest_client_request_options*, %struct.digest_client_request_options** %4, align 8
  %105 = getelementptr inbounds %struct.digest_client_request_options, %struct.digest_client_request_options* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @strcasecmp(i32 %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %103
  %110 = load %struct.digest_client_request_options*, %struct.digest_client_request_options** %4, align 8
  %111 = getelementptr inbounds %struct.digest_client_request_options, %struct.digest_client_request_options* %110, i32 0, i32 4
  %112 = load i32*, i32** %111, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = call i32 @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %109
  %117 = load i8*, i8** %7, align 8
  %118 = load i64, i64* %10, align 8
  %119 = load i8, i8* %9, align 1
  %120 = load %struct.digest_client_request_options*, %struct.digest_client_request_options** %4, align 8
  %121 = getelementptr inbounds %struct.digest_client_request_options, %struct.digest_client_request_options* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @client_chap(i8* %117, i64 %118, i8 signext %119, i32* %122)
  br label %157

124:                                              ; preds = %103
  %125 = load %struct.digest_client_request_options*, %struct.digest_client_request_options** %4, align 8
  %126 = getelementptr inbounds %struct.digest_client_request_options, %struct.digest_client_request_options* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @strcasecmp(i32 %127, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %156

130:                                              ; preds = %124
  %131 = load %struct.digest_client_request_options*, %struct.digest_client_request_options** %4, align 8
  %132 = getelementptr inbounds %struct.digest_client_request_options, %struct.digest_client_request_options* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %130
  %138 = load %struct.digest_client_request_options*, %struct.digest_client_request_options** %4, align 8
  %139 = getelementptr inbounds %struct.digest_client_request_options, %struct.digest_client_request_options* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = icmp eq i32* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %137
  %145 = load i8*, i8** %7, align 8
  %146 = load i64, i64* %10, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = load i64, i64* %11, align 8
  %149 = load %struct.digest_client_request_options*, %struct.digest_client_request_options** %4, align 8
  %150 = getelementptr inbounds %struct.digest_client_request_options, %struct.digest_client_request_options* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.digest_client_request_options*, %struct.digest_client_request_options** %4, align 8
  %153 = getelementptr inbounds %struct.digest_client_request_options, %struct.digest_client_request_options* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @client_mschapv2(i8* %145, i64 %146, i8* %147, i64 %148, i32* %151, i32* %154)
  br label %156

156:                                              ; preds = %144, %124
  br label %157

157:                                              ; preds = %156, %116
  %158 = load i8*, i8** %8, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i8*, i8** %8, align 8
  %162 = call i32 @free(i8* %161)
  br label %163

163:                                              ; preds = %160, %157
  %164 = load i8*, i8** %7, align 8
  %165 = call i32 @free(i8* %164)
  ret i32 0
}

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i8* @hex_decode(i32*, i8*, i32) #1

declare dso_local i64 @strcasecmp(i32, i8*) #1

declare dso_local i32 @client_chap(i8*, i64, i8 signext, i32*) #1

declare dso_local i32 @client_mschapv2(i8*, i64, i8*, i64, i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
