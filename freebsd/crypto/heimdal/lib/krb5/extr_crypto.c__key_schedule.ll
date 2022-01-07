; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c__key_schedule.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c__key_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._krb5_key_data = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct._krb5_encryption_type = type { %struct._krb5_key_type* }
%struct._krb5_key_type = type { i32 (i32, %struct._krb5_key_type*, %struct._krb5_key_data.0*)*, i32 }
%struct._krb5_key_data.0 = type opaque

@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct._krb5_key_data*)* @_key_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_key_schedule(i32 %0, %struct._krb5_key_data* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._krb5_key_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct._krb5_encryption_type*, align 8
  %8 = alloca %struct._krb5_key_type*, align 8
  store i32 %0, i32* %4, align 4
  store %struct._krb5_key_data* %1, %struct._krb5_key_data** %5, align 8
  %9 = load %struct._krb5_key_data*, %struct._krb5_key_data** %5, align 8
  %10 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct._krb5_encryption_type* @_krb5_find_enctype(i32 %13)
  store %struct._krb5_encryption_type* %14, %struct._krb5_encryption_type** %7, align 8
  %15 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %7, align 8
  %16 = icmp eq %struct._krb5_encryption_type* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load %struct._krb5_key_data*, %struct._krb5_key_data** %5, align 8
  %20 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @unsupported_enctype(i32 %18, i32 %23)
  store i64 %24, i64* %3, align 8
  br label %82

25:                                               ; preds = %2
  %26 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %7, align 8
  %27 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %26, i32 0, i32 0
  %28 = load %struct._krb5_key_type*, %struct._krb5_key_type** %27, align 8
  store %struct._krb5_key_type* %28, %struct._krb5_key_type** %8, align 8
  %29 = load %struct._krb5_key_type*, %struct._krb5_key_type** %8, align 8
  %30 = getelementptr inbounds %struct._krb5_key_type, %struct._krb5_key_type* %29, i32 0, i32 0
  %31 = load i32 (i32, %struct._krb5_key_type*, %struct._krb5_key_data.0*)*, i32 (i32, %struct._krb5_key_type*, %struct._krb5_key_data.0*)** %30, align 8
  %32 = icmp eq i32 (i32, %struct._krb5_key_type*, %struct._krb5_key_data.0*)* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i64 0, i64* %3, align 8
  br label %82

34:                                               ; preds = %25
  %35 = load %struct._krb5_key_data*, %struct._krb5_key_data** %5, align 8
  %36 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i64 0, i64* %3, align 8
  br label %82

40:                                               ; preds = %34
  %41 = load %struct._krb5_key_data*, %struct._krb5_key_data** %5, align 8
  %42 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @ALLOC(i32* %43, i32 1)
  %45 = load %struct._krb5_key_data*, %struct._krb5_key_data** %5, align 8
  %46 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load i32, i32* %4, align 4
  %51 = load i64, i64* @ENOMEM, align 8
  %52 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %53 = call i32 @krb5_set_error_message(i32 %50, i64 %51, i32 %52)
  %54 = load i64, i64* @ENOMEM, align 8
  store i64 %54, i64* %3, align 8
  br label %82

55:                                               ; preds = %40
  %56 = load %struct._krb5_key_data*, %struct._krb5_key_data** %5, align 8
  %57 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct._krb5_key_type*, %struct._krb5_key_type** %8, align 8
  %60 = getelementptr inbounds %struct._krb5_key_type, %struct._krb5_key_type* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @krb5_data_alloc(i32* %58, i32 %61)
  store i64 %62, i64* %6, align 8
  %63 = load i64, i64* %6, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %55
  %66 = load %struct._krb5_key_data*, %struct._krb5_key_data** %5, align 8
  %67 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @free(i32* %68)
  %70 = load %struct._krb5_key_data*, %struct._krb5_key_data** %5, align 8
  %71 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %70, i32 0, i32 0
  store i32* null, i32** %71, align 8
  %72 = load i64, i64* %6, align 8
  store i64 %72, i64* %3, align 8
  br label %82

73:                                               ; preds = %55
  %74 = load %struct._krb5_key_type*, %struct._krb5_key_type** %8, align 8
  %75 = getelementptr inbounds %struct._krb5_key_type, %struct._krb5_key_type* %74, i32 0, i32 0
  %76 = load i32 (i32, %struct._krb5_key_type*, %struct._krb5_key_data.0*)*, i32 (i32, %struct._krb5_key_type*, %struct._krb5_key_data.0*)** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = load %struct._krb5_key_type*, %struct._krb5_key_type** %8, align 8
  %79 = load %struct._krb5_key_data*, %struct._krb5_key_data** %5, align 8
  %80 = bitcast %struct._krb5_key_data* %79 to %struct._krb5_key_data.0*
  %81 = call i32 %76(i32 %77, %struct._krb5_key_type* %78, %struct._krb5_key_data.0* %80)
  store i64 0, i64* %3, align 8
  br label %82

82:                                               ; preds = %73, %65, %49, %39, %33, %17
  %83 = load i64, i64* %3, align 8
  ret i64 %83
}

declare dso_local %struct._krb5_encryption_type* @_krb5_find_enctype(i32) #1

declare dso_local i64 @unsupported_enctype(i32, i32) #1

declare dso_local i32 @ALLOC(i32*, i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i64 @krb5_data_alloc(i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
