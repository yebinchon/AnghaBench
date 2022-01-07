; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libefivar/extr_efivar.c_efi_get_next_variable_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libefivar/extr_efivar.c_efi_get_next_variable_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efi_var_ioc = type { i64, i32, i64* }

@efi_get_next_variable_name.buf = internal global i64* null, align 8
@efi_get_next_variable_name.buflen = internal global i64 2048, align 8
@efi_get_next_variable_name.retguid = internal global i32 0, align 4
@efi_fd = common dso_local global i32 0, align 4
@EFIIOC_VAR_NEXT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efi_get_next_variable_name(i32** %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.efi_var_ioc, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i32** %0, i32*** %4, align 8
  store i8** %1, i8*** %5, align 8
  %10 = call i32 (...) @efi_open_dev()
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %112

13:                                               ; preds = %2
  %14 = load i64*, i64** @efi_get_next_variable_name.buf, align 8
  %15 = icmp eq i64* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i64, i64* @efi_get_next_variable_name.buflen, align 8
  %18 = add i64 %17, 8
  %19 = call i64* @malloc(i64 %18)
  store i64* %19, i64** @efi_get_next_variable_name.buf, align 8
  br label %20

20:                                               ; preds = %16, %13
  br label %21

21:                                               ; preds = %66, %20
  %22 = call i32 @efi_var_reset(%struct.efi_var_ioc* %6)
  %23 = load i64*, i64** @efi_get_next_variable_name.buf, align 8
  %24 = getelementptr inbounds %struct.efi_var_ioc, %struct.efi_var_ioc* %6, i32 0, i32 2
  store i64* %23, i64** %24, align 8
  %25 = load i64, i64* @efi_get_next_variable_name.buflen, align 8
  %26 = getelementptr inbounds %struct.efi_var_ioc, %struct.efi_var_ioc* %6, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  %27 = load i8**, i8*** %5, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i64*, i64** @efi_get_next_variable_name.buf, align 8
  store i64 0, i64* %31, align 8
  br label %45

32:                                               ; preds = %21
  %33 = load i8**, i8*** %5, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds %struct.efi_var_ioc, %struct.efi_var_ioc* %6, i32 0, i32 2
  %36 = call i32 @utf8_to_ucs2(i8* %34, i64** %35, i64* %8)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %97

40:                                               ; preds = %32
  %41 = load i32**, i32*** %4, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.efi_var_ioc, %struct.efi_var_ioc* %6, i32 0, i32 1
  store i32 %43, i32* %44, align 8
  br label %45

45:                                               ; preds = %40, %30
  %46 = load i32, i32* @efi_fd, align 4
  %47 = load i32, i32* @EFIIOC_VAR_NEXT, align 4
  %48 = call i32 @ioctl(i32 %46, i32 %47, %struct.efi_var_ioc* %6)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.efi_var_ioc, %struct.efi_var_ioc* %6, i32 0, i32 2
  %53 = load i64*, i64** %52, align 8
  %54 = icmp eq i64* %53, null
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load i64*, i64** @efi_get_next_variable_name.buf, align 8
  %57 = getelementptr inbounds %struct.efi_var_ioc, %struct.efi_var_ioc* %6, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 8
  %60 = trunc i64 %59 to i32
  %61 = call i8* @realloc(i64* %56, i32 %60)
  store i8* %61, i8** %9, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  store i32 -1, i32* %7, align 4
  %65 = load i64, i64* @ENOMEM, align 8
  store i64 %65, i64* @errno, align 8
  br label %98

66:                                               ; preds = %55
  %67 = getelementptr inbounds %struct.efi_var_ioc, %struct.efi_var_ioc* %6, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* @efi_get_next_variable_name.buflen, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = bitcast i8* %69 to i64*
  store i64* %70, i64** @efi_get_next_variable_name.buf, align 8
  br label %21

71:                                               ; preds = %51, %45
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %96

74:                                               ; preds = %71
  %75 = load i8**, i8*** %5, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load i8**, i8*** %5, align 8
  store i8* null, i8** %78, align 8
  %79 = getelementptr inbounds %struct.efi_var_ioc, %struct.efi_var_ioc* %6, i32 0, i32 2
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds %struct.efi_var_ioc, %struct.efi_var_ioc* %6, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = udiv i64 %82, 8
  %84 = getelementptr inbounds i64, i64* %80, i64 %83
  store i64 0, i64* %84, align 8
  %85 = getelementptr inbounds %struct.efi_var_ioc, %struct.efi_var_ioc* %6, i32 0, i32 2
  %86 = load i64*, i64** %85, align 8
  %87 = load i8**, i8*** %5, align 8
  %88 = call i32 @ucs2_to_utf8(i64* %86, i8** %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %74
  br label %97

92:                                               ; preds = %74
  %93 = getelementptr inbounds %struct.efi_var_ioc, %struct.efi_var_ioc* %6, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* @efi_get_next_variable_name.retguid, align 4
  %95 = load i32**, i32*** %4, align 8
  store i32* @efi_get_next_variable_name.retguid, i32** %95, align 8
  br label %96

96:                                               ; preds = %92, %71
  br label %97

97:                                               ; preds = %96, %91, %39
  br label %98

98:                                               ; preds = %97, %64
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %98
  %102 = load i64, i64* @errno, align 8
  %103 = load i64, i64* @ENOENT, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  store i64 0, i64* @errno, align 8
  %106 = load i8**, i8*** %5, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @free(i8* %107)
  store i32 0, i32* %3, align 4
  br label %112

109:                                              ; preds = %101, %98
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @rv_to_linux_rv(i32 %110)
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %109, %105, %12
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @efi_open_dev(...) #1

declare dso_local i64* @malloc(i64) #1

declare dso_local i32 @efi_var_reset(%struct.efi_var_ioc*) #1

declare dso_local i32 @utf8_to_ucs2(i8*, i64**, i64*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.efi_var_ioc*) #1

declare dso_local i8* @realloc(i64*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ucs2_to_utf8(i64*, i8**) #1

declare dso_local i32 @rv_to_linux_rv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
