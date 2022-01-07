; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_revoke.c_hx509_revoke_ocsp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_revoke.c_hx509_revoke_ocsp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.revoke_ocsp = type { i64, %struct.TYPE_16__, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@stdout = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"signer: \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c" byName: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c" byKey: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"choice_OCSPResponderID unknown\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"producedAt: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"replies: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"good\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"revoked\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"element unknown\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"\09%zu. status: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"\09thisUpdate: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"\09producedAt: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"appended certs:\0A\00", align 1
@hx509_ci_print_names = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hx509_revoke_ocsp_print(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.revoke_ocsp, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32*, i32** @stdout, align 8
  store i32* %18, i32** %7, align 8
  br label %19

19:                                               ; preds = %17, %3
  %20 = call i32 @memset(%struct.revoke_ocsp* %8, i32 0, i32 56)
  %21 = load i8*, i8** %6, align 8
  %22 = call i32* @strdup(i8* %21)
  %23 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %8, i32 0, i32 2
  store i32* %22, i32** %23, align 8
  %24 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %8, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @ENOMEM, align 4
  store i32 %28, i32* %4, align 4
  br label %182

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @load_ocsp(i32 %30, %struct.revoke_ocsp* %8)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = call i32 @free_ocsp(%struct.revoke_ocsp* %8)
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %182

37:                                               ; preds = %29
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 (i32*, i8*, ...) @fprintf(i32* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %40 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %8, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %81 [
    i32 128, label %45
    i32 129, label %60
  ]

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %8, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = call i32 @_hx509_name_from_Name(i32* %50, i32* %11)
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @hx509_name_to_string(i32 %52, i8** %12)
  %54 = call i32 @hx509_name_free(i32* %11)
  %55 = load i32*, i32** %7, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = call i32 (i32*, i8*, ...) @fprintf(i32* %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 @free(i8* %58)
  br label %83

60:                                               ; preds = %37
  %61 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %8, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %8, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @hex_encode(i32 %67, i32 %74, i8** %13)
  %76 = load i32*, i32** %7, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = call i32 (i32*, i8*, ...) @fprintf(i32* %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %77)
  %79 = load i8*, i8** %13, align 8
  %80 = call i32 @free(i8* %79)
  br label %83

81:                                               ; preds = %37
  %82 = call i32 @_hx509_abort(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %60, %45
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %8, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i8* @printable_time(i32 %88)
  %90 = call i32 (i32*, i8*, ...) @fprintf(i32* %84, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %89)
  %91 = load i32*, i32** %7, align 8
  %92 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %8, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 (i32*, i8*, ...) @fprintf(i32* %91, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %96)
  store i64 0, i64* %10, align 8
  br label %98

98:                                               ; preds = %163, %83
  %99 = load i64, i64* %10, align 8
  %100 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %8, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = icmp ult i64 %99, %105
  br i1 %106, label %107, label %166

107:                                              ; preds = %98
  %108 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %8, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %111, align 8
  %113 = load i64, i64* %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  switch i32 %117, label %121 [
    i32 132, label %118
    i32 131, label %119
    i32 130, label %120
  ]

118:                                              ; preds = %107
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %14, align 8
  br label %122

119:                                              ; preds = %107
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %14, align 8
  br label %122

120:                                              ; preds = %107
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %14, align 8
  br label %122

121:                                              ; preds = %107
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8** %14, align 8
  br label %122

122:                                              ; preds = %121, %120, %119, %118
  %123 = load i32*, i32** %7, align 8
  %124 = load i64, i64* %10, align 8
  %125 = load i8*, i8** %14, align 8
  %126 = call i32 (i32*, i8*, ...) @fprintf(i32* %123, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i64 %124, i8* %125)
  %127 = load i32*, i32** %7, align 8
  %128 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %8, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %131, align 8
  %133 = load i64, i64* %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i8* @printable_time(i32 %136)
  %138 = call i32 (i32*, i8*, ...) @fprintf(i32* %127, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* %137)
  %139 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %8, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %142, align 8
  %144 = load i64, i64* %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %122
  %150 = load i32*, i32** %7, align 8
  %151 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %8, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %154, align 8
  %156 = load i64, i64* %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i8* @printable_time(i32 %159)
  %161 = call i32 (i32*, i8*, ...) @fprintf(i32* %150, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %160)
  br label %162

162:                                              ; preds = %149, %122
  br label %163

163:                                              ; preds = %162
  %164 = load i64, i64* %10, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %10, align 8
  br label %98

166:                                              ; preds = %98
  %167 = load i32*, i32** %7, align 8
  %168 = call i32 (i32*, i8*, ...) @fprintf(i32* %167, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  %169 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %8, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %166
  %173 = load i32, i32* %5, align 4
  %174 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %8, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i32, i32* @hx509_ci_print_names, align 4
  %177 = load i32*, i32** %7, align 8
  %178 = call i32 @hx509_certs_iter_f(i32 %173, i64 %175, i32 %176, i32* %177)
  store i32 %178, i32* %9, align 4
  br label %179

179:                                              ; preds = %172, %166
  %180 = call i32 @free_ocsp(%struct.revoke_ocsp* %8)
  %181 = load i32, i32* %9, align 4
  store i32 %181, i32* %4, align 4
  br label %182

182:                                              ; preds = %179, %34, %27
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i32 @memset(%struct.revoke_ocsp*, i32, i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @load_ocsp(i32, %struct.revoke_ocsp*) #1

declare dso_local i32 @free_ocsp(%struct.revoke_ocsp*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @_hx509_name_from_Name(i32*, i32*) #1

declare dso_local i32 @hx509_name_to_string(i32, i8**) #1

declare dso_local i32 @hx509_name_free(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @hex_encode(i32, i32, i8**) #1

declare dso_local i32 @_hx509_abort(i8*) #1

declare dso_local i8* @printable_time(i32) #1

declare dso_local i32 @hx509_certs_iter_f(i32, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
