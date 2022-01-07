; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getarg.c_print_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getarg.c_print_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.getargs = type { i64, i8* }

@arg_counter = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"= Ns\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" Ar \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@arg_integer = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@arg_string = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@arg_strings = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"strings\00", align 1
@arg_double = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"<undefined>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i32, i32, %struct.getargs*, i8* (i8*)*)* @print_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @print_arg(i8* %0, i64 %1, i32 %2, i32 %3, %struct.getargs* %4, i8* (i8*)* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.getargs*, align 8
  %13 = alloca i8* (i8*)*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.getargs* %4, %struct.getargs** %12, align 8
  store i8* (i8*)* %5, i8* (i8*)** %13, align 8
  %15 = load i8*, i8** %8, align 8
  store i8 0, i8* %15, align 1
  %16 = load %struct.getargs*, %struct.getargs** %12, align 8
  %17 = bitcast %struct.getargs* %16 to { i64, i8* }*
  %18 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %17, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @ISFLAG(i64 %19, i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = load %struct.getargs*, %struct.getargs** %12, align 8
  %29 = getelementptr inbounds %struct.getargs, %struct.getargs* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @arg_counter, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %6
  store i64 0, i64* %7, align 8
  br label %118

34:                                               ; preds = %27, %24
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @strlcat(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %42)
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i8*, i8** %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @strlcat(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  br label %60

48:                                               ; preds = %34
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i8*, i8** %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @strlcat(i8* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  br label %59

55:                                               ; preds = %48
  %56 = load i8*, i8** %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @strlcat(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 %57)
  br label %59

59:                                               ; preds = %55, %51
  br label %60

60:                                               ; preds = %59, %44
  %61 = load %struct.getargs*, %struct.getargs** %12, align 8
  %62 = getelementptr inbounds %struct.getargs, %struct.getargs* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i8* (i8*)*, i8* (i8*)** %13, align 8
  %67 = load %struct.getargs*, %struct.getargs** %12, align 8
  %68 = getelementptr inbounds %struct.getargs, %struct.getargs* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i8* %66(i8* %69)
  store i8* %70, i8** %14, align 8
  br label %110

71:                                               ; preds = %60
  %72 = load %struct.getargs*, %struct.getargs** %12, align 8
  %73 = getelementptr inbounds %struct.getargs, %struct.getargs* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @arg_integer, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load %struct.getargs*, %struct.getargs** %12, align 8
  %79 = getelementptr inbounds %struct.getargs, %struct.getargs* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @arg_counter, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77, %71
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %14, align 8
  br label %109

84:                                               ; preds = %77
  %85 = load %struct.getargs*, %struct.getargs** %12, align 8
  %86 = getelementptr inbounds %struct.getargs, %struct.getargs* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @arg_string, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %14, align 8
  br label %108

91:                                               ; preds = %84
  %92 = load %struct.getargs*, %struct.getargs** %12, align 8
  %93 = getelementptr inbounds %struct.getargs, %struct.getargs* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @arg_strings, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %14, align 8
  br label %107

98:                                               ; preds = %91
  %99 = load %struct.getargs*, %struct.getargs** %12, align 8
  %100 = getelementptr inbounds %struct.getargs, %struct.getargs* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @arg_double, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %14, align 8
  br label %106

105:                                              ; preds = %98
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %14, align 8
  br label %106

106:                                              ; preds = %105, %104
  br label %107

107:                                              ; preds = %106, %97
  br label %108

108:                                              ; preds = %107, %90
  br label %109

109:                                              ; preds = %108, %83
  br label %110

110:                                              ; preds = %109, %65
  %111 = load i8*, i8** %8, align 8
  %112 = load i8*, i8** %14, align 8
  %113 = load i64, i64* %9, align 8
  %114 = call i32 @strlcat(i8* %111, i8* %112, i64 %113)
  %115 = load i8*, i8** %14, align 8
  %116 = call i64 @strlen(i8* %115)
  %117 = add i64 1, %116
  store i64 %117, i64* %7, align 8
  br label %118

118:                                              ; preds = %110, %33
  %119 = load i64, i64* %7, align 8
  ret i64 %119
}

declare dso_local i64 @ISFLAG(i64, i8*) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
