; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_keytab_file.c_krb5_kt_ret_keyblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_keytab_file.c_krb5_kt_ret_keyblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fkt_data = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Cant read keyblock from file %s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fkt_data*, i32*, %struct.TYPE_3__*)* @krb5_kt_ret_keyblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @krb5_kt_ret_keyblock(i32 %0, %struct.fkt_data* %1, i32* %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fkt_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.fkt_data* %1, %struct.fkt_data** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = call i32 @krb5_ret_int16(i32* %12, i32* %11)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @N_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.fkt_data*, %struct.fkt_data** %7, align 8
  %21 = getelementptr inbounds %struct.fkt_data, %struct.fkt_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @krb5_set_error_message(i32 %17, i32 %18, i32 %19, i32 %22)
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %5, align 4
  br label %46

25:                                               ; preds = %4
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @krb5_kt_ret_data(i32 %29, i32* %30, i32* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %25
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @N_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.fkt_data*, %struct.fkt_data** %7, align 8
  %41 = getelementptr inbounds %struct.fkt_data, %struct.fkt_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @krb5_set_error_message(i32 %37, i32 %38, i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %36, %25
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %44, %16
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @krb5_ret_int16(i32*, i32*) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i32, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i32 @krb5_kt_ret_data(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
