; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_log.c_kadm5_log_previous.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_log.c_kadm5_log_previous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_CUR = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@KADM5_BAD_DB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [95 x i8] c"kadm5_log_previous: log entry have consistency failure, version number wrong (tmp %lu ver %lu)\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"kadm5_log_previous: log entry have consistency failure, length wrong\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"kadm5_log_previous: end of storage reached before end\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kadm5_log_previous(i32 %0, i32* %1, i64* %2, i64* %3, i32* %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64* %5, i64** %13, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* @SEEK_CUR, align 4
  %20 = call i32 @krb5_storage_seek(i32* %18, i32 0, i32 %19)
  store i32 %20, i32* %16, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* @SEEK_CUR, align 4
  %23 = call i32 @krb5_storage_seek(i32* %21, i32 -8, i32 %22)
  %24 = load i32*, i32** %9, align 8
  %25 = call i64 @krb5_ret_int32(i32* %24, i64* %17)
  store i64 %25, i64* %14, align 8
  %26 = load i64, i64* %14, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  br label %109

29:                                               ; preds = %6
  %30 = load i64, i64* %17, align 8
  %31 = load i64*, i64** %13, align 8
  store i64 %30, i64* %31, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i64 @krb5_ret_int32(i32* %32, i64* %17)
  store i64 %33, i64* %14, align 8
  %34 = load i64, i64* %14, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %109

37:                                               ; preds = %29
  %38 = load i64, i64* %17, align 8
  %39 = load i64*, i64** %10, align 8
  store i64 %38, i64* %39, align 8
  %40 = load i64*, i64** %13, align 8
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 24, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %15, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %15, align 4
  %46 = sub nsw i32 0, %45
  %47 = load i32, i32* @SEEK_CUR, align 4
  %48 = call i32 @krb5_storage_seek(i32* %44, i32 %46, i32 %47)
  %49 = load i32*, i32** %9, align 8
  %50 = call i64 @krb5_ret_int32(i32* %49, i64* %17)
  store i64 %50, i64* %14, align 8
  %51 = load i64, i64* %14, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %37
  br label %109

54:                                               ; preds = %37
  %55 = load i64, i64* %17, align 8
  %56 = load i64*, i64** %10, align 8
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %55, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* @SEEK_SET, align 4
  %63 = call i32 @krb5_storage_seek(i32* %60, i32 %61, i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = load i64, i64* @KADM5_BAD_DB, align 8
  %66 = load i64, i64* %17, align 8
  %67 = load i64*, i64** %10, align 8
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (i32, i64, i8*, ...) @krb5_set_error_message(i32 %64, i64 %65, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i64 %66, i64 %68)
  %70 = load i64, i64* @KADM5_BAD_DB, align 8
  store i64 %70, i64* %7, align 8
  br label %118

71:                                               ; preds = %54
  %72 = load i32*, i32** %9, align 8
  %73 = call i64 @krb5_ret_int32(i32* %72, i64* %17)
  store i64 %73, i64* %14, align 8
  %74 = load i64, i64* %14, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %109

77:                                               ; preds = %71
  %78 = load i64, i64* %17, align 8
  %79 = load i64*, i64** %11, align 8
  store i64 %78, i64* %79, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = call i64 @krb5_ret_int32(i32* %80, i64* %17)
  store i64 %81, i64* %14, align 8
  %82 = load i64, i64* %14, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %109

85:                                               ; preds = %77
  %86 = load i64, i64* %17, align 8
  %87 = trunc i64 %86 to i32
  %88 = load i32*, i32** %12, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = call i64 @krb5_ret_int32(i32* %89, i64* %17)
  store i64 %90, i64* %14, align 8
  %91 = load i64, i64* %14, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %109

94:                                               ; preds = %85
  %95 = load i64, i64* %17, align 8
  %96 = load i64*, i64** %13, align 8
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %95, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %94
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* @SEEK_SET, align 4
  %103 = call i32 @krb5_storage_seek(i32* %100, i32 %101, i32 %102)
  %104 = load i32, i32* %8, align 4
  %105 = load i64, i64* @KADM5_BAD_DB, align 8
  %106 = call i32 (i32, i64, i8*, ...) @krb5_set_error_message(i32 %104, i64 %105, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  %107 = load i64, i64* @KADM5_BAD_DB, align 8
  store i64 %107, i64* %7, align 8
  br label %118

108:                                              ; preds = %94
  store i64 0, i64* %7, align 8
  br label %118

109:                                              ; preds = %93, %84, %76, %53, %36, %28
  %110 = load i32*, i32** %9, align 8
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* @SEEK_SET, align 4
  %113 = call i32 @krb5_storage_seek(i32* %110, i32 %111, i32 %112)
  %114 = load i32, i32* %8, align 4
  %115 = load i64, i64* %14, align 8
  %116 = call i32 (i32, i64, i8*, ...) @krb5_set_error_message(i32 %114, i64 %115, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %117 = load i64, i64* %14, align 8
  store i64 %117, i64* %7, align 8
  br label %118

118:                                              ; preds = %109, %108, %99, %59
  %119 = load i64, i64* %7, align 8
  ret i64 %119
}

declare dso_local i32 @krb5_storage_seek(i32*, i32, i32) #1

declare dso_local i64 @krb5_ret_int32(i32*, i64*) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
