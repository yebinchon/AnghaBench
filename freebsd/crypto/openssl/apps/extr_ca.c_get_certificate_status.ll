; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_ca.c_get_certificate_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_ca.c_get_certificate_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@DB_NUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"row serial#\00", align 1
@DB_serial = common dso_local global i64 0, align 8
@bio_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Serial %s not present in db.\0A\00", align 1
@DB_type = common dso_local global i64 0, align 8
@DB_TYPE_VAL = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s=Valid (%c)\0A\00", align 1
@DB_TYPE_REV = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"%s=Revoked (%c)\0A\00", align 1
@DB_TYPE_EXP = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%s=Expired (%c)\0A\00", align 1
@DB_TYPE_SUSP = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"%s=Suspended (%c)\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"%s=Unknown (%c).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_3__*)* @get_certificate_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_certificate_status(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %11 = load i32, i32* @DB_NUMBER, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i8*, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  store i32 -1, i32* %8, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %10, align 8
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %25, %2
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @DB_NUMBER, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %14, i64 %23
  store i8* null, i8** %24, align 8
  br label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %9, align 4
  br label %17

28:                                               ; preds = %17
  %29 = load i64, i64* %10, align 8
  %30 = add i64 %29, 2
  %31 = call i8* @app_malloc(i64 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %32 = load i64, i64* @DB_serial, align 8
  %33 = getelementptr inbounds i8*, i8** %14, i64 %32
  store i8* %31, i8** %33, align 8
  %34 = load i64, i64* %10, align 8
  %35 = urem i64 %34, 2
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %28
  %38 = load i64, i64* @DB_serial, align 8
  %39 = getelementptr inbounds i8*, i8** %14, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 48, i8* %41, align 1
  %42 = load i64, i64* @DB_serial, align 8
  %43 = getelementptr inbounds i8*, i8** %14, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8*, i8** %3, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @memcpy(i8* %45, i8* %46, i64 %47)
  %49 = load i64, i64* @DB_serial, align 8
  %50 = getelementptr inbounds i8*, i8** %14, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %52, 1
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  store i8 0, i8* %54, align 1
  br label %67

55:                                               ; preds = %28
  %56 = load i64, i64* @DB_serial, align 8
  %57 = getelementptr inbounds i8*, i8** %14, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = load i8*, i8** %3, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @memcpy(i8* %58, i8* %59, i64 %60)
  %62 = load i64, i64* @DB_serial, align 8
  %63 = getelementptr inbounds i8*, i8** %14, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8 0, i8* %66, align 1
  br label %67

67:                                               ; preds = %55, %37
  %68 = load i64, i64* @DB_serial, align 8
  %69 = getelementptr inbounds i8*, i8** %14, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @make_uppercase(i8* %70)
  store i32 1, i32* %8, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* @DB_serial, align 8
  %76 = call i8** @TXT_DB_get_by_index(i32 %74, i64 %75, i8** %14)
  store i8** %76, i8*** %7, align 8
  %77 = load i8**, i8*** %7, align 8
  %78 = icmp eq i8** %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %67
  %80 = load i32, i32* @bio_err, align 4
  %81 = load i64, i64* @DB_serial, align 8
  %82 = getelementptr inbounds i8*, i8** %14, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 (i32, i8*, i8*, ...) @BIO_printf(i32 %80, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %83)
  store i32 -1, i32* %8, align 4
  br label %199

85:                                               ; preds = %67
  %86 = load i8**, i8*** %7, align 8
  %87 = load i64, i64* @DB_type, align 8
  %88 = getelementptr inbounds i8*, i8** %86, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = load i8, i8* @DB_TYPE_VAL, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %85
  %97 = load i32, i32* @bio_err, align 4
  %98 = load i64, i64* @DB_serial, align 8
  %99 = getelementptr inbounds i8*, i8** %14, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = load i8**, i8*** %7, align 8
  %102 = load i64, i64* @DB_type, align 8
  %103 = getelementptr inbounds i8*, i8** %101, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = call i32 (i32, i8*, i8*, ...) @BIO_printf(i32 %97, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %100, i32 %107)
  br label %199

109:                                              ; preds = %85
  %110 = load i8**, i8*** %7, align 8
  %111 = load i64, i64* @DB_type, align 8
  %112 = getelementptr inbounds i8*, i8** %110, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = load i8, i8* @DB_TYPE_REV, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %133

120:                                              ; preds = %109
  %121 = load i32, i32* @bio_err, align 4
  %122 = load i64, i64* @DB_serial, align 8
  %123 = getelementptr inbounds i8*, i8** %14, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = load i8**, i8*** %7, align 8
  %126 = load i64, i64* @DB_type, align 8
  %127 = getelementptr inbounds i8*, i8** %125, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 0
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = call i32 (i32, i8*, i8*, ...) @BIO_printf(i32 %121, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %124, i32 %131)
  br label %199

133:                                              ; preds = %109
  %134 = load i8**, i8*** %7, align 8
  %135 = load i64, i64* @DB_type, align 8
  %136 = getelementptr inbounds i8*, i8** %134, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 0
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = load i8, i8* @DB_TYPE_EXP, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %144, label %157

144:                                              ; preds = %133
  %145 = load i32, i32* @bio_err, align 4
  %146 = load i64, i64* @DB_serial, align 8
  %147 = getelementptr inbounds i8*, i8** %14, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = load i8**, i8*** %7, align 8
  %150 = load i64, i64* @DB_type, align 8
  %151 = getelementptr inbounds i8*, i8** %149, i64 %150
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 0
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = call i32 (i32, i8*, i8*, ...) @BIO_printf(i32 %145, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %148, i32 %155)
  br label %199

157:                                              ; preds = %133
  %158 = load i8**, i8*** %7, align 8
  %159 = load i64, i64* @DB_type, align 8
  %160 = getelementptr inbounds i8*, i8** %158, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 0
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = load i8, i8* @DB_TYPE_SUSP, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %164, %166
  br i1 %167, label %168, label %181

168:                                              ; preds = %157
  %169 = load i32, i32* @bio_err, align 4
  %170 = load i64, i64* @DB_serial, align 8
  %171 = getelementptr inbounds i8*, i8** %14, i64 %170
  %172 = load i8*, i8** %171, align 8
  %173 = load i8**, i8*** %7, align 8
  %174 = load i64, i64* @DB_type, align 8
  %175 = getelementptr inbounds i8*, i8** %173, i64 %174
  %176 = load i8*, i8** %175, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 0
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = call i32 (i32, i8*, i8*, ...) @BIO_printf(i32 %169, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %172, i32 %179)
  br label %199

181:                                              ; preds = %157
  %182 = load i32, i32* @bio_err, align 4
  %183 = load i64, i64* @DB_serial, align 8
  %184 = getelementptr inbounds i8*, i8** %14, i64 %183
  %185 = load i8*, i8** %184, align 8
  %186 = load i8**, i8*** %7, align 8
  %187 = load i64, i64* @DB_type, align 8
  %188 = getelementptr inbounds i8*, i8** %186, i64 %187
  %189 = load i8*, i8** %188, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 0
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = call i32 (i32, i8*, i8*, ...) @BIO_printf(i32 %182, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %185, i32 %192)
  store i32 -1, i32* %8, align 4
  br label %194

194:                                              ; preds = %181
  br label %195

195:                                              ; preds = %194
  br label %196

196:                                              ; preds = %195
  br label %197

197:                                              ; preds = %196
  br label %198

198:                                              ; preds = %197
  br label %199

199:                                              ; preds = %198, %168, %144, %120, %96, %79
  store i32 0, i32* %9, align 4
  br label %200

200:                                              ; preds = %210, %199
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* @DB_NUMBER, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %213

204:                                              ; preds = %200
  %205 = load i32, i32* %9, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8*, i8** %14, i64 %206
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 @OPENSSL_free(i8* %208)
  br label %210

210:                                              ; preds = %204
  %211 = load i32, i32* %9, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %9, align 4
  br label %200

213:                                              ; preds = %200
  %214 = load i32, i32* %8, align 4
  %215 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %215)
  ret i32 %214
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i8* @app_malloc(i64, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @make_uppercase(i8*) #2

declare dso_local i8** @TXT_DB_get_by_index(i32, i64, i8**) #2

declare dso_local i32 @BIO_printf(i32, i8*, i8*, ...) #2

declare dso_local i32 @OPENSSL_free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
