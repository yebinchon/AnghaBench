; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_init_creds_pw.c_pa_pw_or_afs3_salt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_init_creds_pw.c_pa_pw_or_afs3_salt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pa_info_data = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@ENCTYPE_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pa_info_data* (i32, i32, i32*, %struct.pa_info_data*, %struct.TYPE_5__*)* @pa_pw_or_afs3_salt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pa_info_data* @pa_pw_or_afs3_salt(i32 %0, i32 %1, i32* %2, %struct.pa_info_data* %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca %struct.pa_info_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pa_info_data*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store %struct.pa_info_data* %3, %struct.pa_info_data** %10, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %11, align 8
  %13 = load %struct.pa_info_data*, %struct.pa_info_data** %10, align 8
  %14 = getelementptr inbounds %struct.pa_info_data, %struct.pa_info_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ENCTYPE_NULL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store %struct.pa_info_data* null, %struct.pa_info_data** %6, align 8
  br label %41

19:                                               ; preds = %5
  %20 = load %struct.pa_info_data*, %struct.pa_info_data** %10, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.pa_info_data*, %struct.pa_info_data** %10, align 8
  %23 = getelementptr inbounds %struct.pa_info_data, %struct.pa_info_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.pa_info_data*, %struct.pa_info_data** %10, align 8
  %26 = getelementptr inbounds %struct.pa_info_data, %struct.pa_info_data* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @set_paid(%struct.pa_info_data* %20, i32 %21, i64 %24, i32 %28, i32 %31, i32 %34, i32* null)
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %12, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %19
  store %struct.pa_info_data* null, %struct.pa_info_data** %6, align 8
  br label %41

39:                                               ; preds = %19
  %40 = load %struct.pa_info_data*, %struct.pa_info_data** %10, align 8
  store %struct.pa_info_data* %40, %struct.pa_info_data** %6, align 8
  br label %41

41:                                               ; preds = %39, %38, %18
  %42 = load %struct.pa_info_data*, %struct.pa_info_data** %6, align 8
  ret %struct.pa_info_data* %42
}

declare dso_local i64 @set_paid(%struct.pa_info_data*, i32, i64, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
