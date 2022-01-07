; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_common.c_hdb_remove_aliases.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_common.c_hdb_remove_aliases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 (i32, %struct.TYPE_10__*, i32, i32*)*, i64 (i32, %struct.TYPE_10__*, i32)* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32* }

@HDB_ERR_NOENTRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_10__*, i32*)* @hdb_remove_aliases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hdb_remove_aliases(i32 %0, %struct.TYPE_10__* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64 (i32, %struct.TYPE_10__*, i32, i32*)*, i64 (i32, %struct.TYPE_10__*, i32, i32*)** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i64 %16(i32 %17, %struct.TYPE_10__* %18, i32 %20, i32* %11)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @HDB_ERR_NOENTRY, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %86

26:                                               ; preds = %3
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i64, i64* %9, align 8
  store i64 %30, i64* %4, align 8
  br label %86

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @hdb_value2entry(i32 %33, i32* %11, i32* %10)
  store i64 %34, i64* %9, align 8
  %35 = call i32 @krb5_data_free(i32* %11)
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i64, i64* %9, align 8
  store i64 %39, i64* %4, align 8
  br label %86

40:                                               ; preds = %32
  %41 = call i64 @hdb_entry_get_aliases(i32* %10, %struct.TYPE_9__** %8)
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %46 = icmp eq %struct.TYPE_9__* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44, %40
  %48 = call i32 @free_hdb_entry(i32* %10)
  %49 = load i64, i64* %9, align 8
  store i64 %49, i64* %4, align 8
  br label %86

50:                                               ; preds = %44
  store i64 0, i64* %12, align 8
  br label %51

51:                                               ; preds = %81, %50
  %52 = load i64, i64* %12, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %52, %56
  br i1 %57, label %58, label %84

58:                                               ; preds = %51
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %12, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = call i32 @hdb_principal2key(i32 %59, i32* %65, i32* %13)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i64 (i32, %struct.TYPE_10__*, i32)*, i64 (i32, %struct.TYPE_10__*, i32)** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call i64 %69(i32 %70, %struct.TYPE_10__* %71, i32 %72)
  store i64 %73, i64* %9, align 8
  %74 = call i32 @krb5_data_free(i32* %13)
  %75 = load i64, i64* %9, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %58
  %78 = call i32 @free_hdb_entry(i32* %10)
  %79 = load i64, i64* %9, align 8
  store i64 %79, i64* %4, align 8
  br label %86

80:                                               ; preds = %58
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %12, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %12, align 8
  br label %51

84:                                               ; preds = %51
  %85 = call i32 @free_hdb_entry(i32* %10)
  store i64 0, i64* %4, align 8
  br label %86

86:                                               ; preds = %84, %77, %47, %38, %29, %25
  %87 = load i64, i64* %4, align 8
  ret i64 %87
}

declare dso_local i64 @hdb_value2entry(i32, i32*, i32*) #1

declare dso_local i32 @krb5_data_free(i32*) #1

declare dso_local i64 @hdb_entry_get_aliases(i32*, %struct.TYPE_9__**) #1

declare dso_local i32 @free_hdb_entry(i32*) #1

declare dso_local i32 @hdb_principal2key(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
