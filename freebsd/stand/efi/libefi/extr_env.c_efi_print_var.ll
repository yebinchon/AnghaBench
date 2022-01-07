; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_env.c_efi_print_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_env.c_efi_print_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32*, i32*, i32*, i64*, i8*)* }

@CMD_OK = common dso_local global i32 0, align 4
@RS = common dso_local global %struct.TYPE_2__* null, align 8
@EFI_BUFFER_TOO_SMALL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Can't get the variable: error %#lx\0A\00", align 1
@CMD_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@EFI_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %S\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"freebsd\00", align 1
@EFI_MEMORY_TYPE_INFORMATION_VARIABLE_NAME = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [37 x i8] c"47c7b227-c42a-11d2-8e57-00a0c969723b\00", align 1
@MTC_VARIABLE_NAME = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CMD_WARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @efi_print_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efi_print_var(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @CMD_OK, align 4
  store i32 %14, i32* %13, align 4
  store i8* null, i8** %11, align 8
  store i64 0, i64* %8, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RS, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64 (i32*, i32*, i32*, i64*, i8*)*, i64 (i32*, i32*, i32*, i64*, i8*)** %16, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 %17(i32* %18, i32* %19, i32* %10, i64* %8, i8* null)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @EFI_BUFFER_TOO_SMALL, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @EFI_ERROR_CODE(i64 %25)
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @CMD_ERROR, align 4
  store i32 %28, i32* %4, align 4
  br label %146

29:                                               ; preds = %3
  %30 = load i64, i64* %8, align 8
  %31 = call i8* @malloc(i64 %30)
  store i8* %31, i8** %12, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @CMD_ERROR, align 4
  store i32 %36, i32* %4, align 4
  br label %146

37:                                               ; preds = %29
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RS, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64 (i32*, i32*, i32*, i64*, i8*)*, i64 (i32*, i32*, i32*, i64*, i8*)** %39, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = call i64 %40(i32* %41, i32* %42, i32* %10, i64* %8, i8* %43)
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @EFI_SUCCESS, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %37
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @EFI_ERROR_CODE(i64 %49)
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i8*, i8** %12, align 8
  %53 = call i32 @free(i8* %52)
  %54 = load i32, i32* @CMD_ERROR, align 4
  store i32 %54, i32* %4, align 4
  br label %146

55:                                               ; preds = %37
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @efi_guid_to_name(i32* %56, i8** %11)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @CMD_ERROR, align 4
  store i32 %60, i32* %13, align 4
  br label %140

61:                                               ; preds = %55
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @efi_print_var_attr(i32 %64)
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %66)
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %133

70:                                               ; preds = %61
  %71 = load i8*, i8** %11, align 8
  %72 = call i64 @strcmp(i8* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load i32*, i32** %5, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @efi_print_global(i32* %75, i8* %76, i64 %77)
  store i32 %78, i32* %13, align 4
  br label %132

79:                                               ; preds = %70
  %80 = load i8*, i8** %11, align 8
  %81 = call i64 @strcmp(i8* %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load i32*, i32** %5, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @efi_print_freebsd(i32* %84, i8* %85, i64 %86)
  store i32 %87, i32* %13, align 4
  br label %131

88:                                               ; preds = %79
  %89 = load i8*, i8** %11, align 8
  %90 = load i8*, i8** @EFI_MEMORY_TYPE_INFORMATION_VARIABLE_NAME, align 8
  %91 = call i64 @strcmp(i8* %89, i8* %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i32*, i32** %5, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @efi_print_mem_type(i32* %94, i8* %95, i64 %96)
  store i32 %97, i32* %13, align 4
  br label %130

98:                                               ; preds = %88
  %99 = load i8*, i8** %11, align 8
  %100 = call i64 @strcmp(i8* %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i32*, i32** %5, align 8
  %104 = load i8*, i8** %12, align 8
  %105 = load i64, i64* %8, align 8
  %106 = call i32 @efi_print_shell_str(i32* %103, i8* %104, i64 %105)
  store i32 %106, i32* %13, align 4
  br label %129

107:                                              ; preds = %98
  %108 = load i8*, i8** %11, align 8
  %109 = load i8*, i8** @MTC_VARIABLE_NAME, align 8
  %110 = call i64 @strcmp(i8* %108, i8* %109)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %107
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %114 = load i8*, i8** %12, align 8
  %115 = bitcast i8* %114 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* @CMD_OK, align 4
  store i32 %118, i32* %13, align 4
  %119 = call i64 @pager_output(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %112
  %122 = load i32, i32* @CMD_WARN, align 4
  store i32 %122, i32* %13, align 4
  br label %123

123:                                              ; preds = %121, %112
  br label %128

124:                                              ; preds = %107
  %125 = load i8*, i8** %12, align 8
  %126 = load i64, i64* %8, align 8
  %127 = call i32 @efi_print_other_value(i8* %125, i64 %126)
  store i32 %127, i32* %13, align 4
  br label %128

128:                                              ; preds = %124, %123
  br label %129

129:                                              ; preds = %128, %102
  br label %130

130:                                              ; preds = %129, %93
  br label %131

131:                                              ; preds = %130, %83
  br label %132

132:                                              ; preds = %131, %74
  br label %139

133:                                              ; preds = %61
  %134 = call i64 @pager_output(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = load i32, i32* @CMD_WARN, align 4
  store i32 %137, i32* %13, align 4
  br label %138

138:                                              ; preds = %136, %133
  br label %139

139:                                              ; preds = %138, %132
  br label %140

140:                                              ; preds = %139, %59
  %141 = load i8*, i8** %11, align 8
  %142 = call i32 @free(i8* %141)
  %143 = load i8*, i8** %12, align 8
  %144 = call i32 @free(i8* %143)
  %145 = load i32, i32* %13, align 4
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %140, %48, %34, %24
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @EFI_ERROR_CODE(i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @efi_guid_to_name(i32*, i8**) #1

declare dso_local i32 @efi_print_var_attr(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @efi_print_global(i32*, i8*, i64) #1

declare dso_local i32 @efi_print_freebsd(i32*, i8*, i64) #1

declare dso_local i32 @efi_print_mem_type(i32*, i8*, i64) #1

declare dso_local i32 @efi_print_shell_str(i32*, i8*, i64) #1

declare dso_local i64 @pager_output(i8*) #1

declare dso_local i32 @efi_print_other_value(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
