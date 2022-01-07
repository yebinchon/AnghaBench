; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_create_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_create_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._krb5_checksum_type = type { i32, i64 (i32, %struct._krb5_key_data*, i8*, i64, i32, %struct.TYPE_4__*)*, i32, i32, i32 }
%struct._krb5_key_data = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@F_DISABLED = common dso_local global i32 0, align 4
@KRB5_PROG_SUMTYPE_NOSUPP = common dso_local global i64 0, align 8
@F_KEYED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Checksum type %s is keyed but no crypto context (key) was passed in\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct._krb5_checksum_type*, i32*, i32, i8*, i64, %struct.TYPE_4__*)* @create_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_checksum(i32 %0, %struct._krb5_checksum_type* %1, i32* %2, i32 %3, i8* %4, i64 %5, %struct.TYPE_4__* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._krb5_checksum_type*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct._krb5_key_data*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct._krb5_checksum_type* %1, %struct._krb5_checksum_type** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %15, align 8
  %19 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %10, align 8
  %20 = getelementptr inbounds %struct._krb5_checksum_type, %struct._krb5_checksum_type* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @F_DISABLED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %7
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @krb5_clear_error_message(i32 %26)
  %28 = load i64, i64* @KRB5_PROG_SUMTYPE_NOSUPP, align 8
  store i64 %28, i64* %8, align 8
  br label %93

29:                                               ; preds = %7
  %30 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %10, align 8
  %31 = getelementptr inbounds %struct._krb5_checksum_type, %struct._krb5_checksum_type* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @F_KEYED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %18, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %29
  %40 = load i32*, i32** %11, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load i32, i32* %9, align 4
  %44 = load i64, i64* @KRB5_PROG_SUMTYPE_NOSUPP, align 8
  %45 = call i32 @N_(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %10, align 8
  %47 = getelementptr inbounds %struct._krb5_checksum_type, %struct._krb5_checksum_type* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @krb5_set_error_message(i32 %43, i64 %44, i32 %45, i32 %48)
  %50 = load i64, i64* @KRB5_PROG_SUMTYPE_NOSUPP, align 8
  store i64 %50, i64* %8, align 8
  br label %93

51:                                               ; preds = %39, %29
  %52 = load i32, i32* %18, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %10, align 8
  %59 = call i64 @get_checksum_key(i32 %55, i32* %56, i32 %57, %struct._krb5_checksum_type* %58, %struct._krb5_key_data** %17)
  store i64 %59, i64* %16, align 8
  %60 = load i64, i64* %16, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i64, i64* %16, align 8
  store i64 %63, i64* %8, align 8
  br label %93

64:                                               ; preds = %54
  br label %66

65:                                               ; preds = %51
  store %struct._krb5_key_data* null, %struct._krb5_key_data** %17, align 8
  br label %66

66:                                               ; preds = %65, %64
  %67 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %10, align 8
  %68 = getelementptr inbounds %struct._krb5_checksum_type, %struct._krb5_checksum_type* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %10, align 8
  %75 = getelementptr inbounds %struct._krb5_checksum_type, %struct._krb5_checksum_type* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @krb5_data_alloc(i32* %73, i32 %76)
  store i64 %77, i64* %16, align 8
  %78 = load i64, i64* %16, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %66
  %81 = load i64, i64* %16, align 8
  store i64 %81, i64* %8, align 8
  br label %93

82:                                               ; preds = %66
  %83 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %10, align 8
  %84 = getelementptr inbounds %struct._krb5_checksum_type, %struct._krb5_checksum_type* %83, i32 0, i32 1
  %85 = load i64 (i32, %struct._krb5_key_data*, i8*, i64, i32, %struct.TYPE_4__*)*, i64 (i32, %struct._krb5_key_data*, i8*, i64, i32, %struct.TYPE_4__*)** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load %struct._krb5_key_data*, %struct._krb5_key_data** %17, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = load i64, i64* %14, align 8
  %90 = load i32, i32* %12, align 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %92 = call i64 %85(i32 %86, %struct._krb5_key_data* %87, i8* %88, i64 %89, i32 %90, %struct.TYPE_4__* %91)
  store i64 %92, i64* %8, align 8
  br label %93

93:                                               ; preds = %82, %80, %62, %42, %25
  %94 = load i64, i64* %8, align 8
  ret i64 %94
}

declare dso_local i32 @krb5_clear_error_message(i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i32, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i64 @get_checksum_key(i32, i32*, i32, %struct._krb5_checksum_type*, %struct._krb5_key_data**) #1

declare dso_local i64 @krb5_data_alloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
