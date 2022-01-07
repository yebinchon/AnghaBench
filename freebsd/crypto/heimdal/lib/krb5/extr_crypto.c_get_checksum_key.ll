; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_get_checksum_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_get_checksum_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct._krb5_key_data }
%struct._krb5_key_data = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct._krb5_checksum_type = type { i32 }

@F_DERIVED = common dso_local global i32 0, align 4
@F_VARIANT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_9__*, i32, %struct._krb5_checksum_type*, %struct._krb5_key_data**)* @get_checksum_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_checksum_key(i32 %0, %struct.TYPE_9__* %1, i32 %2, %struct._krb5_checksum_type* %3, %struct._krb5_key_data** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._krb5_checksum_type*, align 8
  %11 = alloca %struct._krb5_key_data**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct._krb5_checksum_type* %3, %struct._krb5_checksum_type** %10, align 8
  store %struct._krb5_key_data** %4, %struct._krb5_key_data*** %11, align 8
  store i64 0, i64* %12, align 8
  %14 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %10, align 8
  %15 = getelementptr inbounds %struct._krb5_checksum_type, %struct._krb5_checksum_type* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @F_DERIVED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load %struct._krb5_key_data**, %struct._krb5_key_data*** %11, align 8
  %25 = call i64 @_get_derived_key(i32 %21, %struct.TYPE_9__* %22, i32 %23, %struct._krb5_key_data** %24)
  store i64 %25, i64* %12, align 8
  br label %95

26:                                               ; preds = %5
  %27 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %10, align 8
  %28 = getelementptr inbounds %struct._krb5_checksum_type, %struct._krb5_checksum_type* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @F_VARIANT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %90

33:                                               ; preds = %26
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %35 = call %struct._krb5_key_data* @_new_derived_key(%struct.TYPE_9__* %34, i32 255)
  %36 = load %struct._krb5_key_data**, %struct._krb5_key_data*** %11, align 8
  store %struct._krb5_key_data* %35, %struct._krb5_key_data** %36, align 8
  %37 = load %struct._krb5_key_data**, %struct._krb5_key_data*** %11, align 8
  %38 = load %struct._krb5_key_data*, %struct._krb5_key_data** %37, align 8
  %39 = icmp eq %struct._krb5_key_data* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i32, i32* %7, align 4
  %42 = load i64, i64* @ENOMEM, align 8
  %43 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %44 = call i32 @krb5_set_error_message(i32 %41, i64 %42, i32 %43)
  %45 = load i64, i64* @ENOMEM, align 8
  store i64 %45, i64* %6, align 8
  br label %105

46:                                               ; preds = %33
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = load %struct._krb5_key_data**, %struct._krb5_key_data*** %11, align 8
  %53 = load %struct._krb5_key_data*, %struct._krb5_key_data** %52, align 8
  %54 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %53, i32 0, i32 0
  %55 = call i64 @krb5_copy_keyblock(i32 %47, %struct.TYPE_10__* %51, %struct.TYPE_10__** %54)
  store i64 %55, i64* %12, align 8
  %56 = load i64, i64* %12, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %46
  %59 = load i64, i64* %12, align 8
  store i64 %59, i64* %6, align 8
  br label %105

60:                                               ; preds = %46
  store i64 0, i64* %13, align 8
  br label %61

61:                                               ; preds = %86, %60
  %62 = load i64, i64* %13, align 8
  %63 = load %struct._krb5_key_data**, %struct._krb5_key_data*** %11, align 8
  %64 = load %struct._krb5_key_data*, %struct._krb5_key_data** %63, align 8
  %65 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %64, i32 0, i32 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ult i64 %62, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %61
  %72 = load %struct._krb5_key_data**, %struct._krb5_key_data*** %11, align 8
  %73 = load %struct._krb5_key_data*, %struct._krb5_key_data** %72, align 8
  %74 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %73, i32 0, i32 0
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = load i64, i64* %13, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = xor i32 %83, 240
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %81, align 1
  br label %86

86:                                               ; preds = %71
  %87 = load i64, i64* %13, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %13, align 8
  br label %61

89:                                               ; preds = %61
  br label %94

90:                                               ; preds = %26
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load %struct._krb5_key_data**, %struct._krb5_key_data*** %11, align 8
  store %struct._krb5_key_data* %92, %struct._krb5_key_data** %93, align 8
  br label %94

94:                                               ; preds = %90, %89
  br label %95

95:                                               ; preds = %94, %20
  %96 = load i64, i64* %12, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load i32, i32* %7, align 4
  %100 = load %struct._krb5_key_data**, %struct._krb5_key_data*** %11, align 8
  %101 = load %struct._krb5_key_data*, %struct._krb5_key_data** %100, align 8
  %102 = call i64 @_key_schedule(i32 %99, %struct._krb5_key_data* %101)
  store i64 %102, i64* %12, align 8
  br label %103

103:                                              ; preds = %98, %95
  %104 = load i64, i64* %12, align 8
  store i64 %104, i64* %6, align 8
  br label %105

105:                                              ; preds = %103, %58, %40
  %106 = load i64, i64* %6, align 8
  ret i64 %106
}

declare dso_local i64 @_get_derived_key(i32, %struct.TYPE_9__*, i32, %struct._krb5_key_data**) #1

declare dso_local %struct._krb5_key_data* @_new_derived_key(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i64 @krb5_copy_keyblock(i32, %struct.TYPE_10__*, %struct.TYPE_10__**) #1

declare dso_local i64 @_key_schedule(i32, %struct._krb5_key_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
