; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_common.c_hdb_check_aliases.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_common.c_hdb_check_aliases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 (i32, %struct.TYPE_17__*, i32, i32*)* }
%struct.TYPE_14__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32* }
%struct.TYPE_15__ = type { i32 }

@HDB_ERR_NOENTRY = common dso_local global i32 0, align 4
@ASN1_BAD_ID = common dso_local global i32 0, align 4
@HDB_ERR_EXISTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_17__*, %struct.TYPE_14__*)* @hdb_check_aliases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdb_check_aliases(i32 %0, %struct.TYPE_17__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_15__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = call i32 @hdb_entry_get_aliases(%struct.TYPE_18__* %15, %struct.TYPE_16__** %8)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %95

21:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  br label %22

22:                                               ; preds = %91, %21
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %24 = icmp ne %struct.TYPE_16__* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %26, %30
  br label %32

32:                                               ; preds = %25, %22
  %33 = phi i1 [ false, %22 ], [ %31, %25 ]
  br i1 %33, label %34, label %94

34:                                               ; preds = %32
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = call i32 @hdb_principal2key(i32 %35, i32* %41, i32* %12)
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i32 (i32, %struct.TYPE_17__*, i32, i32*)*, i32 (i32, %struct.TYPE_17__*, i32, i32*)** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 %45(i32 %46, %struct.TYPE_17__* %47, i32 %48, i32* %13)
  store i32 %49, i32* %9, align 4
  %50 = call i32 @krb5_data_free(i32* %12)
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @HDB_ERR_NOENTRY, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %34
  br label %91

55:                                               ; preds = %34
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %4, align 4
  br label %95

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @hdb_value2entry_alias(i32 %62, i32* %13, %struct.TYPE_15__* %11)
  store i32 %63, i32* %9, align 4
  %64 = call i32 @krb5_data_free(i32* %13)
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @ASN1_BAD_ID, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* @HDB_ERR_EXISTS, align 4
  store i32 %69, i32* %4, align 4
  br label %95

70:                                               ; preds = %61
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %4, align 4
  br label %95

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %5, align 4
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @krb5_principal_compare(i32 %77, i32 %79, i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = call i32 @free_hdb_entry_alias(%struct.TYPE_15__* %11)
  %86 = load i32, i32* %9, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %76
  %89 = load i32, i32* @HDB_ERR_EXISTS, align 4
  store i32 %89, i32* %4, align 4
  br label %95

90:                                               ; preds = %76
  br label %91

91:                                               ; preds = %90, %54
  %92 = load i64, i64* %10, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %10, align 8
  br label %22

94:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %94, %88, %73, %68, %58, %19
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @hdb_entry_get_aliases(%struct.TYPE_18__*, %struct.TYPE_16__**) #1

declare dso_local i32 @hdb_principal2key(i32, i32*, i32*) #1

declare dso_local i32 @krb5_data_free(i32*) #1

declare dso_local i32 @hdb_value2entry_alias(i32, i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @krb5_principal_compare(i32, i32, i32) #1

declare dso_local i32 @free_hdb_entry_alias(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
