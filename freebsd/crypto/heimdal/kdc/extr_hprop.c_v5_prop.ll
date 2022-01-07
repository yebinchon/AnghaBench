; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_hprop.c_v5_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_hprop.c_v5_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.prop_data = type { i32, i32 }

@encrypt_flag = common dso_local global i64 0, align 8
@mkey5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"hdb_seal_keys_mkey\00", align 1
@decrypt_flag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"hdb_unseal_keys_mkey\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"hdb_entry2value\00", align 1
@to_stdout = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @v5_prop(i32 %0, i32* %1, %struct.TYPE_3__* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.prop_data*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.prop_data*
  store %struct.prop_data* %14, %struct.prop_data** %11, align 8
  %15 = load i64, i64* @encrypt_flag, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* @mkey5, align 4
  %22 = call i64 @hdb_seal_keys_mkey(i32 %18, i32* %20, i32 %21)
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @krb5_warn(i32 %26, i64 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %29 = load i64, i64* %10, align 8
  store i64 %29, i64* %5, align 8
  br label %79

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %30, %4
  %32 = load i64, i64* @decrypt_flag, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* @mkey5, align 4
  %39 = call i64 @hdb_unseal_keys_mkey(i32 %35, i32* %37, i32 %38)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = load i32, i32* %6, align 4
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @krb5_warn(i32 %43, i64 %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i64, i64* %10, align 8
  store i64 %46, i64* %5, align 8
  br label %79

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47, %31
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = call i64 @hdb_entry2value(i32 %49, i32* %51, i32* %12)
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load i32, i32* %6, align 4
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @krb5_warn(i32 %56, i64 %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i64, i64* %10, align 8
  store i64 %59, i64* %5, align 8
  br label %79

60:                                               ; preds = %48
  %61 = load i64, i64* @to_stdout, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.prop_data*, %struct.prop_data** %11, align 8
  %66 = getelementptr inbounds %struct.prop_data, %struct.prop_data* %65, i32 0, i32 0
  %67 = call i64 @krb5_write_message(i32 %64, i32* %66, i32* %12)
  store i64 %67, i64* %10, align 8
  br label %76

68:                                               ; preds = %60
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.prop_data*, %struct.prop_data** %11, align 8
  %71 = getelementptr inbounds %struct.prop_data, %struct.prop_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.prop_data*, %struct.prop_data** %11, align 8
  %74 = getelementptr inbounds %struct.prop_data, %struct.prop_data* %73, i32 0, i32 0
  %75 = call i64 @krb5_write_priv_message(i32 %69, i32 %72, i32* %74, i32* %12)
  store i64 %75, i64* %10, align 8
  br label %76

76:                                               ; preds = %68, %63
  %77 = call i32 @krb5_data_free(i32* %12)
  %78 = load i64, i64* %10, align 8
  store i64 %78, i64* %5, align 8
  br label %79

79:                                               ; preds = %76, %55, %42, %25
  %80 = load i64, i64* %5, align 8
  ret i64 %80
}

declare dso_local i64 @hdb_seal_keys_mkey(i32, i32*, i32) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*) #1

declare dso_local i64 @hdb_unseal_keys_mkey(i32, i32*, i32) #1

declare dso_local i64 @hdb_entry2value(i32, i32*, i32*) #1

declare dso_local i64 @krb5_write_message(i32, i32*, i32*) #1

declare dso_local i64 @krb5_write_priv_message(i32, i32, i32*, i32*) #1

declare dso_local i32 @krb5_data_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
