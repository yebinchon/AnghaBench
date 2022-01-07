; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_ipropd_master.c_prop_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_ipropd_master.c_prop_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.slave = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ONE_PRINC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.TYPE_10__*, i8*)* @prop_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prop_one(i32 %0, i32* %1, %struct.TYPE_10__* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca %struct.slave*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.slave*
  store %struct.slave* %15, %struct.slave** %13, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = call i32 @hdb_entry2value(i32 %16, i32* %18, %struct.TYPE_9__* %12)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %5, align 4
  br label %66

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 4
  %28 = call i32 @krb5_data_realloc(%struct.TYPE_9__* %12, i64 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = call i32 @krb5_data_free(%struct.TYPE_9__* %12)
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %5, align 4
  br label %66

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = getelementptr inbounds i8, i8* %37, i64 4
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %42, 4
  %44 = call i32 @memmove(i8* %38, i64 %40, i64 %43)
  %45 = call i32* @krb5_storage_from_data(%struct.TYPE_9__* %12)
  store i32* %45, i32** %11, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %34
  %49 = call i32 @krb5_data_free(%struct.TYPE_9__* %12)
  %50 = load i32, i32* @ENOMEM, align 4
  store i32 %50, i32* %5, align 4
  br label %66

51:                                               ; preds = %34
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* @ONE_PRINC, align 4
  %54 = call i32 @krb5_store_int32(i32* %52, i32 %53)
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @krb5_storage_free(i32* %55)
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.slave*, %struct.slave** %13, align 8
  %59 = getelementptr inbounds %struct.slave, %struct.slave* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.slave*, %struct.slave** %13, align 8
  %62 = getelementptr inbounds %struct.slave, %struct.slave* %61, i32 0, i32 0
  %63 = call i32 @krb5_write_priv_message(i32 %57, i32 %60, i32* %62, %struct.TYPE_9__* %12)
  store i32 %63, i32* %10, align 4
  %64 = call i32 @krb5_data_free(%struct.TYPE_9__* %12)
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %51, %48, %31, %22
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @hdb_entry2value(i32, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @krb5_data_realloc(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_9__*) #1

declare dso_local i32 @memmove(i8*, i64, i64) #1

declare dso_local i32* @krb5_storage_from_data(%struct.TYPE_9__*) #1

declare dso_local i32 @krb5_store_int32(i32*, i32) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

declare dso_local i32 @krb5_write_priv_message(i32, i32, i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
