; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_keytab_file.c_krb5_kt_ret_principal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_keytab_file.c_krb5_kt_ret_principal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fkt_data = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Failed decoding length of keytab principal in keytab file %s\00", align 1
@KRB5_STORAGE_PRINCIPAL_WRONG_NUM_COMPONENTS = common dso_local global i32 0, align 4
@KRB5_KT_END = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"Keytab principal contains invalid length in keytab %s\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Can't read realm from keytab: %s\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Can't read principal from keytab: %s\00", align 1
@KRB5_STORAGE_PRINCIPAL_NO_NAME_TYPE = common dso_local global i32 0, align 4
@KRB5_NT_UNKNOWN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Can't read name-type from keytab: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fkt_data*, i32*, %struct.TYPE_9__**)* @krb5_kt_ret_principal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @krb5_kt_ret_principal(i32 %0, %struct.fkt_data* %1, i32* %2, %struct.TYPE_9__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fkt_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.fkt_data* %1, %struct.fkt_data** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_9__** %3, %struct.TYPE_9__*** %9, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %16 = call i32 @ALLOC(%struct.TYPE_9__* %15, i32 1)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %18 = icmp eq %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 (i32, i32, i32, ...) @krb5_set_error_message(i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* @ENOMEM, align 4
  store i32 %24, i32* %5, align 4
  br label %168

25:                                               ; preds = %4
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @krb5_ret_int16(i32* %26, i64* %13)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @N_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.fkt_data*, %struct.fkt_data** %7, align 8
  %35 = getelementptr inbounds %struct.fkt_data, %struct.fkt_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i32, i32, ...) @krb5_set_error_message(i32 %31, i32 %32, i32 %33, i32 %36)
  br label %163

38:                                               ; preds = %25
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* @KRB5_STORAGE_PRINCIPAL_WRONG_NUM_COMPONENTS, align 4
  %41 = call i64 @krb5_storage_is_flags(i32* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i64, i64* %13, align 8
  %45 = add nsw i64 %44, -1
  store i64 %45, i64* %13, align 8
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i64, i64* %13, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load i32, i32* @KRB5_KT_END, align 4
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @N_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.fkt_data*, %struct.fkt_data** %7, align 8
  %55 = getelementptr inbounds %struct.fkt_data, %struct.fkt_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i32, i32, ...) @krb5_set_error_message(i32 %51, i32 %52, i32 %53, i32 %56)
  br label %163

58:                                               ; preds = %46
  %59 = load i32, i32* %6, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = call i32 @krb5_kt_ret_string(i32 %59, i32* %60, i32* %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %58
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @N_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.fkt_data*, %struct.fkt_data** %7, align 8
  %71 = getelementptr inbounds %struct.fkt_data, %struct.fkt_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i32, i32, i32, ...) @krb5_set_error_message(i32 %67, i32 %68, i32 %69, i32 %72)
  br label %163

74:                                               ; preds = %58
  %75 = load i64, i64* %13, align 8
  %76 = call i32* @calloc(i64 %75, i32 4)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  store i32* %76, i32** %80, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %74
  %88 = load i32, i32* @ENOMEM, align 4
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %92 = call i32 (i32, i32, i32, ...) @krb5_set_error_message(i32 %89, i32 %90, i32 %91)
  br label %163

93:                                               ; preds = %74
  %94 = load i64, i64* %13, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  store i64 %94, i64* %98, align 8
  store i64 0, i64* %10, align 8
  br label %99

99:                                               ; preds = %129, %93
  %100 = load i64, i64* %10, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ult i64 %100, %105
  br i1 %106, label %107, label %132

107:                                              ; preds = %99
  %108 = load i32, i32* %6, align 4
  %109 = load i32*, i32** %8, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* %10, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = call i32 @krb5_kt_ret_string(i32 %108, i32* %109, i32* %116)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %107
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @N_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %124 = load %struct.fkt_data*, %struct.fkt_data** %7, align 8
  %125 = getelementptr inbounds %struct.fkt_data, %struct.fkt_data* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i32, i32, i32, ...) @krb5_set_error_message(i32 %121, i32 %122, i32 %123, i32 %126)
  br label %163

128:                                              ; preds = %107
  br label %129

129:                                              ; preds = %128
  %130 = load i64, i64* %10, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %10, align 8
  br label %99

132:                                              ; preds = %99
  %133 = load i32*, i32** %8, align 8
  %134 = load i32, i32* @KRB5_STORAGE_PRINCIPAL_NO_NAME_TYPE, align 4
  %135 = call i64 @krb5_storage_is_flags(i32* %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load i32, i32* @KRB5_NT_UNKNOWN, align 4
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  store i32 %138, i32* %141, align 8
  br label %160

142:                                              ; preds = %132
  %143 = load i32*, i32** %8, align 8
  %144 = call i32 @krb5_ret_int32(i32* %143, i32* %14)
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %14, align 4
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  store i32 %145, i32* %148, align 8
  %149 = load i32, i32* %11, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %142
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* %11, align 4
  %154 = call i32 @N_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %155 = load %struct.fkt_data*, %struct.fkt_data** %7, align 8
  %156 = getelementptr inbounds %struct.fkt_data, %struct.fkt_data* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (i32, i32, i32, ...) @krb5_set_error_message(i32 %152, i32 %153, i32 %154, i32 %157)
  br label %163

159:                                              ; preds = %142
  br label %160

160:                                              ; preds = %159, %137
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %162 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  store %struct.TYPE_9__* %161, %struct.TYPE_9__** %162, align 8
  store i32 0, i32* %5, align 4
  br label %168

163:                                              ; preds = %151, %120, %87, %66, %49, %30
  %164 = load i32, i32* %6, align 4
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %166 = call i32 @krb5_free_principal(i32 %164, %struct.TYPE_9__* %165)
  %167 = load i32, i32* %11, align 4
  store i32 %167, i32* %5, align 4
  br label %168

168:                                              ; preds = %163, %160, %19
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local i32 @ALLOC(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i32, ...) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i32 @krb5_ret_int16(i32*, i64*) #1

declare dso_local i64 @krb5_storage_is_flags(i32*, i32) #1

declare dso_local i32 @krb5_kt_ret_string(i32, i32*, i32*) #1

declare dso_local i32* @calloc(i64, i32) #1

declare dso_local i32 @krb5_ret_int32(i32*, i32*) #1

declare dso_local i32 @krb5_free_principal(i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
