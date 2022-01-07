; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_keytab_file.c_fkt_start_seq_get_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_keytab_file.c_fkt_start_seq_get_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.fkt_data* }
%struct.fkt_data = type { i32 }
%struct.TYPE_5__ = type { i32*, i32 }

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"keytab %s open failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@KRB5_KT_END = common dso_local global i32 0, align 4
@KRB5_KEYTAB_BADVNO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__*)* @fkt_start_seq_get_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fkt_start_seq_get_int(i32 %0, %struct.TYPE_6__* %1, i32 %2, i32 %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.fkt_data*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %11, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.fkt_data*, %struct.fkt_data** %17, align 8
  store %struct.fkt_data* %18, %struct.fkt_data** %15, align 8
  %19 = load %struct.fkt_data*, %struct.fkt_data** %15, align 8
  %20 = getelementptr inbounds %struct.fkt_data, %struct.fkt_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @open(i32 %21, i32 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %5
  %31 = load i64, i64* @errno, align 8
  store i64 %31, i64* %14, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i64, i64* %14, align 8
  %34 = call i32 @N_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.fkt_data*, %struct.fkt_data** %15, align 8
  %36 = getelementptr inbounds %struct.fkt_data, %struct.fkt_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %14, align 8
  %39 = call i32 @strerror(i64 %38)
  %40 = call i32 (i32, i64, i32, ...) @krb5_set_error_message(i32 %32, i64 %33, i32 %34, i32 %37, i32 %39)
  %41 = load i64, i64* %14, align 8
  store i64 %41, i64* %6, align 8
  br label %175

42:                                               ; preds = %5
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @rk_cloexec(i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.fkt_data*, %struct.fkt_data** %15, align 8
  %53 = getelementptr inbounds %struct.fkt_data, %struct.fkt_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @_krb5_xlock(i32 %47, i32 %50, i32 %51, i32 %54)
  store i64 %55, i64* %14, align 8
  %56 = load i64, i64* %14, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %42
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @close(i32 %61)
  %63 = load i64, i64* %14, align 8
  store i64 %63, i64* %6, align 8
  br label %175

64:                                               ; preds = %42
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32* @krb5_storage_from_fd(i32 %67)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32* %68, i32** %70, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %90

75:                                               ; preds = %64
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @_krb5_xunlock(i32 %76, i32 %79)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @close(i32 %83)
  %85 = load i32, i32* %7, align 4
  %86 = load i64, i64* @ENOMEM, align 8
  %87 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %88 = call i32 (i32, i64, i32, ...) @krb5_set_error_message(i32 %85, i64 %86, i32 %87)
  %89 = load i64, i64* @ENOMEM, align 8
  store i64 %89, i64* %6, align 8
  br label %175

90:                                               ; preds = %64
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* @KRB5_KT_END, align 4
  %95 = call i32 @krb5_storage_set_eof_code(i32* %93, i32 %94)
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = call i64 @krb5_ret_int8(i32* %98, i32* %12)
  store i64 %99, i64* %14, align 8
  %100 = load i64, i64* %14, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %90
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @krb5_storage_free(i32* %105)
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @_krb5_xunlock(i32 %107, i32 %110)
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @close(i32 %114)
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @krb5_clear_error_message(i32 %116)
  %118 = load i64, i64* %14, align 8
  store i64 %118, i64* %6, align 8
  br label %175

119:                                              ; preds = %90
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 5
  br i1 %121, label %122, label %139

122:                                              ; preds = %119
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @krb5_storage_free(i32* %125)
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @_krb5_xunlock(i32 %127, i32 %130)
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @close(i32 %134)
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @krb5_clear_error_message(i32 %136)
  %138 = load i64, i64* @KRB5_KEYTAB_BADVNO, align 8
  store i64 %138, i64* %6, align 8
  br label %175

139:                                              ; preds = %119
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = call i64 @krb5_ret_int8(i32* %142, i32* %13)
  store i64 %143, i64* %14, align 8
  %144 = load i64, i64* %14, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %163

146:                                              ; preds = %139
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @krb5_storage_free(i32* %149)
  %151 = load i32, i32* %7, align 4
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @_krb5_xunlock(i32 %151, i32 %154)
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @close(i32 %158)
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @krb5_clear_error_message(i32 %160)
  %162 = load i64, i64* %14, align 8
  store i64 %162, i64* %6, align 8
  br label %175

163:                                              ; preds = %139
  %164 = load i32, i32* %13, align 4
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  %167 = load i32, i32* %7, align 4
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @storage_set_flags(i32 %167, i32* %170, i32 %173)
  store i64 0, i64* %6, align 8
  br label %175

175:                                              ; preds = %163, %146, %122, %102, %75, %58, %30
  %176 = load i64, i64* %6, align 8
  ret i64 %176
}

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i32, ...) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @rk_cloexec(i32) #1

declare dso_local i64 @_krb5_xlock(i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32* @krb5_storage_from_fd(i32) #1

declare dso_local i32 @_krb5_xunlock(i32, i32) #1

declare dso_local i32 @krb5_storage_set_eof_code(i32*, i32) #1

declare dso_local i64 @krb5_ret_int8(i32*, i32*) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

declare dso_local i32 @krb5_clear_error_message(i32) #1

declare dso_local i32 @storage_set_flags(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
