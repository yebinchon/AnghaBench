; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_common.c_hdb_add_aliases.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_common.c_hdb_add_aliases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 (i32, %struct.TYPE_16__*, i32, i32, i32)* }
%struct.TYPE_13__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32* }
%struct.TYPE_14__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_16__*, i32, %struct.TYPE_13__*)* @hdb_add_aliases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hdb_add_aliases(i32 %0, %struct.TYPE_16__* %1, i32 %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_14__, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = call i64 @hdb_entry_get_aliases(%struct.TYPE_17__* %17, %struct.TYPE_15__** %10)
  store i64 %18, i64* %11, align 8
  %19 = load i64, i64* %11, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %23 = icmp eq %struct.TYPE_15__* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %4
  %25 = load i64, i64* %11, align 8
  store i64 %25, i64* %5, align 8
  br label %76

26:                                               ; preds = %21
  store i64 0, i64* %14, align 8
  br label %27

27:                                               ; preds = %72, %26
  %28 = load i64, i64* %14, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %28, %32
  br i1 %33, label %34, label %75

34:                                               ; preds = %27
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %14, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = call i32 @hdb_principal2key(i32 %40, i32* %46, i32* %12)
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @hdb_entry_alias2value(i32 %48, %struct.TYPE_14__* %15, i32* %13)
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %11, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %34
  %53 = call i32 @krb5_data_free(i32* %12)
  %54 = load i64, i64* %11, align 8
  store i64 %54, i64* %5, align 8
  br label %76

55:                                               ; preds = %34
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i64 (i32, %struct.TYPE_16__*, i32, i32, i32)*, i64 (i32, %struct.TYPE_16__*, i32, i32, i32)** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i64 %58(i32 %59, %struct.TYPE_16__* %60, i32 %61, i32 %62, i32 %63)
  store i64 %64, i64* %11, align 8
  %65 = call i32 @krb5_data_free(i32* %12)
  %66 = call i32 @krb5_data_free(i32* %13)
  %67 = load i64, i64* %11, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %55
  %70 = load i64, i64* %11, align 8
  store i64 %70, i64* %5, align 8
  br label %76

71:                                               ; preds = %55
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %14, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %14, align 8
  br label %27

75:                                               ; preds = %27
  store i64 0, i64* %5, align 8
  br label %76

76:                                               ; preds = %75, %69, %52, %24
  %77 = load i64, i64* %5, align 8
  ret i64 %77
}

declare dso_local i64 @hdb_entry_get_aliases(%struct.TYPE_17__*, %struct.TYPE_15__**) #1

declare dso_local i32 @hdb_principal2key(i32, i32*, i32*) #1

declare dso_local i64 @hdb_entry_alias2value(i32, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @krb5_data_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
