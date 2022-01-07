; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_addr_families.c_addrport_print_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_addr_families.c_addrport_print_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@KRB5_STORAGE_BYTEORDER_LE = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@KRB5_ADDRESS_IPPORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"ADDRPORT:\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c",PORT=%u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i64)* @addrport_print_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addrport_print_addr(%struct.TYPE_6__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %14, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = call i64 @rk_UNCONST(%struct.TYPE_7__* %18)
  %20 = inttoptr i64 %19 to i32*
  %21 = call i32* @krb5_storage_from_data(i32* %20)
  store i32* %21, i32** %15, align 8
  %22 = load i32*, i32** %15, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* %4, align 4
  br label %121

26:                                               ; preds = %3
  %27 = load i32*, i32** %15, align 8
  %28 = load i32, i32* @KRB5_STORAGE_BYTEORDER_LE, align 4
  %29 = call i32 @krb5_storage_set_byteorder(i32* %27, i32 %28)
  %30 = load i32*, i32** %15, align 8
  %31 = load i32, i32* @SEEK_CUR, align 4
  %32 = call i32 @krb5_storage_seek(i32* %30, i32 2, i32 %31)
  %33 = load i32*, i32** %15, align 8
  %34 = call i32 @krb5_ret_address(i32* %33, %struct.TYPE_6__* %9)
  %35 = load i32*, i32** %15, align 8
  %36 = load i32, i32* @SEEK_CUR, align 4
  %37 = call i32 @krb5_storage_seek(i32* %35, i32 2, i32 %36)
  %38 = load i32*, i32** %15, align 8
  %39 = call i32 @krb5_ret_address(i32* %38, %struct.TYPE_6__* %10)
  %40 = load i32*, i32** %15, align 8
  %41 = call i32 @krb5_storage_free(i32* %40)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @KRB5_ADDRESS_IPPORT, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %26
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @_krb5_get_int(i32 %54, i64* %16, i32 2)
  %56 = load i64, i64* %16, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %51, %46, %26
  %59 = load i8*, i8** %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i64 @strlcpy(i8* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %60)
  store i64 %61, i64* %13, align 8
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* %12, align 8
  %64 = add i64 %63, %62
  store i64 %64, i64* %12, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %13, align 8
  %67 = icmp ugt i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* %14, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %14, align 8
  br label %74

72:                                               ; preds = %58
  %73 = load i64, i64* %7, align 8
  store i64 %73, i64* %14, align 8
  br label %74

74:                                               ; preds = %72, %68
  %75 = load i8*, i8** %6, align 8
  %76 = load i64, i64* %14, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %14, align 8
  %80 = sub i64 %78, %79
  %81 = call i32 @krb5_print_address(%struct.TYPE_6__* %9, i8* %77, i64 %80, i64* %13)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %4, align 4
  br label %121

86:                                               ; preds = %74
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* %12, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %12, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* %14, align 8
  %92 = sub i64 %90, %91
  %93 = load i64, i64* %13, align 8
  %94 = icmp ugt i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %86
  %96 = load i64, i64* %13, align 8
  %97 = load i64, i64* %14, align 8
  %98 = add i64 %97, %96
  store i64 %98, i64* %14, align 8
  br label %101

99:                                               ; preds = %86
  %100 = load i64, i64* %7, align 8
  store i64 %100, i64* %14, align 8
  br label %101

101:                                              ; preds = %99, %95
  %102 = load i8*, i8** %6, align 8
  %103 = load i64, i64* %14, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  %105 = load i64, i64* %7, align 8
  %106 = load i64, i64* %14, align 8
  %107 = sub i64 %105, %106
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @snprintf(i8* %104, i64 %107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %101
  %113 = load i32, i32* @EINVAL, align 4
  store i32 %113, i32* %4, align 4
  br label %121

114:                                              ; preds = %101
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* %12, align 8
  %118 = add i64 %117, %116
  store i64 %118, i64* %12, align 8
  %119 = load i64, i64* %12, align 8
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %114, %112, %84, %24
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32* @krb5_storage_from_data(i32*) #1

declare dso_local i64 @rk_UNCONST(%struct.TYPE_7__*) #1

declare dso_local i32 @krb5_storage_set_byteorder(i32*, i32) #1

declare dso_local i32 @krb5_storage_seek(i32*, i32, i32) #1

declare dso_local i32 @krb5_ret_address(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

declare dso_local i32 @_krb5_get_int(i32, i64*, i32) #1

declare dso_local i64 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @krb5_print_address(%struct.TYPE_6__*, i8*, i64, i64*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
