; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_hprop.c_dump_database.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_hprop.c_dump_database.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prop_data = type { i32, i32*, i32 }

@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"iterate failure\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"krb5_write_message\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32*)* @dump_database to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_database(i32 %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.prop_data, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = getelementptr inbounds %struct.prop_data, %struct.prop_data* %10, i32 0, i32 2
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.prop_data, %struct.prop_data* %10, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = load i32, i32* @STDOUT_FILENO, align 4
  %16 = getelementptr inbounds %struct.prop_data, %struct.prop_data* %10, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @iterate(i32 %17, i8* %18, i32* %19, i32 %20, %struct.prop_data* %10)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @krb5_errx(i32 %25, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %4
  %28 = call i32 @krb5_data_zero(i32* %11)
  %29 = load i32, i32* %5, align 4
  %30 = getelementptr inbounds %struct.prop_data, %struct.prop_data* %10, i32 0, i32 0
  %31 = call i64 @krb5_write_message(i32 %29, i32* %30, i32* %11)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @krb5_err(i32 %35, i32 1, i64 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %27
  ret i32 0
}

declare dso_local i64 @iterate(i32, i8*, i32*, i32, %struct.prop_data*) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*) #1

declare dso_local i32 @krb5_data_zero(i32*) #1

declare dso_local i64 @krb5_write_message(i32, i32*, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
