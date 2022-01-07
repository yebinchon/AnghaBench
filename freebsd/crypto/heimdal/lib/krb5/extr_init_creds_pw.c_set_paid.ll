; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_init_creds_pw.c_set_paid.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_init_creds_pw.c_set_paid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pa_info_data = type { i32*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i32* }

@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pa_info_data*, i32, i32, i32, i8*, i64, i32*)* @set_paid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_paid(%struct.pa_info_data* %0, i32 %1, i32 %2, i32 %3, i8* %4, i64 %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.pa_info_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store %struct.pa_info_data* %0, %struct.pa_info_data** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  %17 = load i32, i32* %11, align 4
  %18 = load %struct.pa_info_data*, %struct.pa_info_data** %9, align 8
  %19 = getelementptr inbounds %struct.pa_info_data, %struct.pa_info_data* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load %struct.pa_info_data*, %struct.pa_info_data** %9, align 8
  %22 = getelementptr inbounds %struct.pa_info_data, %struct.pa_info_data* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 8
  %24 = load i64, i64* %14, align 8
  %25 = add i64 %24, 1
  %26 = call i32* @malloc(i64 %25)
  %27 = load %struct.pa_info_data*, %struct.pa_info_data** %9, align 8
  %28 = getelementptr inbounds %struct.pa_info_data, %struct.pa_info_data* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32* %26, i32** %30, align 8
  %31 = load %struct.pa_info_data*, %struct.pa_info_data** %9, align 8
  %32 = getelementptr inbounds %struct.pa_info_data, %struct.pa_info_data* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %7
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @krb5_clear_error_message(i32 %38)
  %40 = load i64, i64* @ENOMEM, align 8
  store i64 %40, i64* %8, align 8
  br label %86

41:                                               ; preds = %7
  %42 = load %struct.pa_info_data*, %struct.pa_info_data** %9, align 8
  %43 = getelementptr inbounds %struct.pa_info_data, %struct.pa_info_data* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = load i64, i64* %14, align 8
  %49 = call i32 @memcpy(i32* %46, i8* %47, i64 %48)
  %50 = load %struct.pa_info_data*, %struct.pa_info_data** %9, align 8
  %51 = getelementptr inbounds %struct.pa_info_data, %struct.pa_info_data* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = bitcast i32* %54 to i8*
  %56 = load i64, i64* %14, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8 0, i8* %57, align 1
  %58 = load i64, i64* %14, align 8
  %59 = load %struct.pa_info_data*, %struct.pa_info_data** %9, align 8
  %60 = getelementptr inbounds %struct.pa_info_data, %struct.pa_info_data* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i64 %58, i64* %62, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %82

65:                                               ; preds = %41
  %66 = load i32, i32* %10, align 4
  %67 = load i32*, i32** %15, align 8
  %68 = load %struct.pa_info_data*, %struct.pa_info_data** %9, align 8
  %69 = getelementptr inbounds %struct.pa_info_data, %struct.pa_info_data* %68, i32 0, i32 0
  %70 = call i64 @krb5_copy_data(i32 %66, i32* %67, i32** %69)
  store i64 %70, i64* %16, align 8
  %71 = load i64, i64* %16, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %65
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @krb5_clear_error_message(i32 %74)
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.pa_info_data*, %struct.pa_info_data** %9, align 8
  %78 = getelementptr inbounds %struct.pa_info_data, %struct.pa_info_data* %77, i32 0, i32 1
  %79 = call i32 @krb5_free_salt(i32 %76, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %78)
  %80 = load i64, i64* %16, align 8
  store i64 %80, i64* %8, align 8
  br label %86

81:                                               ; preds = %65
  br label %85

82:                                               ; preds = %41
  %83 = load %struct.pa_info_data*, %struct.pa_info_data** %9, align 8
  %84 = getelementptr inbounds %struct.pa_info_data, %struct.pa_info_data* %83, i32 0, i32 0
  store i32* null, i32** %84, align 8
  br label %85

85:                                               ; preds = %82, %81
  store i64 0, i64* %8, align 8
  br label %86

86:                                               ; preds = %85, %73, %37
  %87 = load i64, i64* %8, align 8
  ret i64 %87
}

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @krb5_clear_error_message(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i64 @krb5_copy_data(i32, i32*, i32**) #1

declare dso_local i32 @krb5_free_salt(i32, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
