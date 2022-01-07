; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_misc.c__kdc_db_fetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_misc.c__kdc_db_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_21__** }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_21__ = type { i32, i32 (i32, %struct.TYPE_21__*)*, i32 (i32, %struct.TYPE_21__*, %struct.TYPE_19__*, i32, i32, i32*)*, i32 (i32, %struct.TYPE_21__*, i32, i32)* }

@HDB_ERR_NOENTRY = common dso_local global i32 0, align 4
@HDB_F_KVNO_SPECIFIED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@HDB_CAP_F_HANDLE_ENTERPRISE_PRINCIPAL = common dso_local global i32 0, align 4
@KRB5_NT_ENTERPRISE_PRINCIPAL = common dso_local global i64 0, align 8
@KRB5_PARSE_MALFORMED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"malformed request: enterprise name with %d name components\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to open database: %s\00", align 1
@HDB_F_DECRYPT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"no such entry found in hdb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_kdc_db_fetch(i32 %0, %struct.TYPE_20__* %1, %struct.TYPE_19__* %2, i32 %3, i32* %4, %struct.TYPE_21__** %5, i32** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_21__**, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_19__*, align 8
  %21 = alloca i8*, align 8
  store i32 %0, i32* %9, align 4
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %10, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store %struct.TYPE_21__** %5, %struct.TYPE_21__*** %14, align 8
  store i32** %6, i32*** %15, align 8
  %22 = load i32, i32* @HDB_ERR_NOENTRY, align 4
  store i32 %22, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %23 = load i32*, i32** %13, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %7
  %26 = load i32*, i32** %13, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %19, align 4
  %28 = load i32, i32* @HDB_F_KVNO_SPECIFIED, align 4
  %29 = load i32, i32* %12, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %12, align 4
  br label %31

31:                                               ; preds = %25, %7
  %32 = call i32* @calloc(i32 1, i32 4)
  store i32* %32, i32** %16, align 8
  %33 = load i32*, i32** %16, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = call i32 (i32, i32, i8*, ...) @krb5_set_error_message(i32 %36, i32 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENOMEM, align 4
  store i32 %39, i32* %8, align 4
  br label %212

40:                                               ; preds = %31
  store i32 0, i32* %18, align 4
  br label %41

41:                                               ; preds = %202, %40
  %42 = load i32, i32* %18, align 4
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %205

47:                                               ; preds = %41
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %20, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %49, align 8
  %51 = load i32, i32* %18, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %50, i64 %52
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @HDB_CAP_F_HANDLE_ENTERPRISE_PRINCIPAL, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %105, label %60

60:                                               ; preds = %47
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @KRB5_NT_ENTERPRISE_PRINCIPAL, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %105

67:                                               ; preds = %60
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 1
  br i1 %73, label %74, label %87

74:                                               ; preds = %67
  %75 = load i32, i32* @KRB5_PARSE_MALFORMED, align 4
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %17, align 4
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i32, i32, i8*, ...) @krb5_set_error_message(i32 %76, i32 %77, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load i32*, i32** %16, align 8
  %85 = call i32 @free(i32* %84)
  %86 = load i32, i32* %17, align 4
  store i32 %86, i32* %8, align 4
  br label %212

87:                                               ; preds = %67
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @krb5_parse_name(i32 %88, i32 %95, %struct.TYPE_19__** %20)
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %17, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %87
  %100 = load i32*, i32** %16, align 8
  %101 = call i32 @free(i32* %100)
  %102 = load i32, i32* %17, align 4
  store i32 %102, i32* %8, align 4
  br label %212

103:                                              ; preds = %87
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  store %struct.TYPE_19__* %104, %struct.TYPE_19__** %11, align 8
  br label %105

105:                                              ; preds = %103, %60, %47
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %107, align 8
  %109 = load i32, i32* %18, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %108, i64 %110
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 3
  %114 = load i32 (i32, %struct.TYPE_21__*, i32, i32)*, i32 (i32, %struct.TYPE_21__*, i32, i32)** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %117, align 8
  %119 = load i32, i32* %18, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %118, i64 %120
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %121, align 8
  %123 = load i32, i32* @O_RDONLY, align 4
  %124 = call i32 %114(i32 %115, %struct.TYPE_21__* %122, i32 %123, i32 0)
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* %17, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %105
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %17, align 4
  %130 = call i8* @krb5_get_error_message(i32 %128, i32 %129)
  store i8* %130, i8** %21, align 8
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %133 = load i8*, i8** %21, align 8
  %134 = call i32 @kdc_log(i32 %131, %struct.TYPE_20__* %132, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %133)
  %135 = load i32, i32* %9, align 4
  %136 = load i8*, i8** %21, align 8
  %137 = call i32 @krb5_free_error_message(i32 %135, i8* %136)
  br label %202

138:                                              ; preds = %105
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %140, align 8
  %142 = load i32, i32* %18, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %141, i64 %143
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 2
  %147 = load i32 (i32, %struct.TYPE_21__*, %struct.TYPE_19__*, i32, i32, i32*)*, i32 (i32, %struct.TYPE_21__*, %struct.TYPE_19__*, i32, i32, i32*)** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %150, align 8
  %152 = load i32, i32* %18, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %151, i64 %153
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %154, align 8
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* @HDB_F_DECRYPT, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* %19, align 4
  %161 = load i32*, i32** %16, align 8
  %162 = call i32 %147(i32 %148, %struct.TYPE_21__* %155, %struct.TYPE_19__* %156, i32 %159, i32 %160, i32* %161)
  store i32 %162, i32* %17, align 4
  %163 = load i32, i32* %9, align 4
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %165 = call i32 @krb5_free_principal(i32 %163, %struct.TYPE_19__* %164)
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %167, align 8
  %169 = load i32, i32* %18, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %168, i64 %170
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 1
  %174 = load i32 (i32, %struct.TYPE_21__*)*, i32 (i32, %struct.TYPE_21__*)** %173, align 8
  %175 = load i32, i32* %9, align 4
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %177, align 8
  %179 = load i32, i32* %18, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %178, i64 %180
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %181, align 8
  %183 = call i32 %174(i32 %175, %struct.TYPE_21__* %182)
  %184 = load i32, i32* %17, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %201

186:                                              ; preds = %138
  %187 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %14, align 8
  %188 = icmp ne %struct.TYPE_21__** %187, null
  br i1 %188, label %189, label %198

189:                                              ; preds = %186
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %191, align 8
  %193 = load i32, i32* %18, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %192, i64 %194
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %195, align 8
  %197 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %14, align 8
  store %struct.TYPE_21__* %196, %struct.TYPE_21__** %197, align 8
  br label %198

198:                                              ; preds = %189, %186
  %199 = load i32*, i32** %16, align 8
  %200 = load i32**, i32*** %15, align 8
  store i32* %199, i32** %200, align 8
  store i32 0, i32* %8, align 4
  br label %212

201:                                              ; preds = %138
  br label %202

202:                                              ; preds = %201, %127
  %203 = load i32, i32* %18, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %18, align 4
  br label %41

205:                                              ; preds = %41
  %206 = load i32*, i32** %16, align 8
  %207 = call i32 @free(i32* %206)
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* %17, align 4
  %210 = call i32 (i32, i32, i8*, ...) @krb5_set_error_message(i32 %208, i32 %209, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %211 = load i32, i32* %17, align 4
  store i32 %211, i32* %8, align 4
  br label %212

212:                                              ; preds = %205, %198, %99, %74, %35
  %213 = load i32, i32* %8, align 4
  ret i32 %213
}

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i8*, ...) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @krb5_parse_name(i32, i32, %struct.TYPE_19__**) #1

declare dso_local i8* @krb5_get_error_message(i32, i32) #1

declare dso_local i32 @kdc_log(i32, %struct.TYPE_20__*, i32, i8*, i8*) #1

declare dso_local i32 @krb5_free_error_message(i32, i8*) #1

declare dso_local i32 @krb5_free_principal(i32, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
