; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_init_creds_pw.c_pa_data_to_md_ts_enc.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_init_creds_pw.c_pa_data_to_md_ts_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_12__ = type { i32*, i32* }
%struct.pa_info_data = type { i32*, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"krb5_get_init_creds: pa-info not found, guessing salt\00", align 1
@KRB5_PW_SALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_13__*, i32, %struct.TYPE_12__*, %struct.pa_info_data*, i32*)* @pa_data_to_md_ts_enc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pa_data_to_md_ts_enc(i32 %0, %struct.TYPE_13__* %1, i32 %2, %struct.TYPE_12__* %3, %struct.pa_info_data* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.pa_info_data*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_11__, align 4
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %11, align 8
  store %struct.pa_info_data* %4, %struct.pa_info_data** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %6
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %6
  store i32 0, i32* %7, align 4
  br label %94

25:                                               ; preds = %19
  %26 = load %struct.pa_info_data*, %struct.pa_info_data** %12, align 8
  %27 = icmp ne %struct.pa_info_data* %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = load i32*, i32** %13, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.pa_info_data*, %struct.pa_info_data** %12, align 8
  %39 = getelementptr inbounds %struct.pa_info_data, %struct.pa_info_data* %38, i32 0, i32 2
  %40 = load %struct.pa_info_data*, %struct.pa_info_data** %12, align 8
  %41 = getelementptr inbounds %struct.pa_info_data, %struct.pa_info_data* %40, i32 0, i32 1
  %42 = load %struct.pa_info_data*, %struct.pa_info_data** %12, align 8
  %43 = getelementptr inbounds %struct.pa_info_data, %struct.pa_info_data* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @add_enc_ts_padata(i32 %29, i32* %30, i32 %31, i32* %34, i32* %37, i32* %39, i32 1, %struct.TYPE_11__* %41, i32* %44)
  br label %93

46:                                               ; preds = %25
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @_krb5_debug(i32 %47, i32 5, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* %8, align 4
  %50 = load i32*, i32** %13, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @add_enc_ts_padata(i32 %49, i32* %50, i32 %51, i32* %54, i32* %57, i32* %62, i32 %67, %struct.TYPE_11__* null, i32* null)
  %69 = load i32, i32* @KRB5_PW_SALT, align 4
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %72 = call i32 @krb5_data_zero(i32* %71)
  %73 = load i32, i32* %8, align 4
  %74 = load i32*, i32** %13, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @add_enc_ts_padata(i32 %73, i32* %74, i32 %75, i32* %78, i32* %81, i32* %86, i32 %91, %struct.TYPE_11__* %14, i32* null)
  br label %93

93:                                               ; preds = %46, %28
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %93, %24
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local i32 @add_enc_ts_padata(i32, i32*, i32, i32*, i32*, i32*, i32, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @_krb5_debug(i32, i32, i8*) #1

declare dso_local i32 @krb5_data_zero(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
