; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/sysctl/extr_sysctl.c_parse_numeric.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/sysctl/extr_sysctl.c_parse_numeric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@CTLTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"IK\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i8**, i64*)* @parse_numeric to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_numeric(i8* %0, i8* %1, i32 %2, i8** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i64* %4, i64** %11, align 8
  store i8* null, i8** %27, align 8
  store i64 0, i64* @errno, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @CTLTYPE, align 4
  %30 = and i32 %28, %29
  switch i32 %30, label %96 [
    i32 139, label %31
    i32 129, label %45
    i32 138, label %50
    i32 128, label %54
    i32 134, label %58
    i32 137, label %63
    i32 136, label %68
    i32 135, label %73
    i32 130, label %77
    i32 133, label %82
    i32 132, label %87
    i32 131, label %92
  ]

31:                                               ; preds = %5
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @strncmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @strIKtoi(i8* %36, i8** %27, i8* %37)
  store i32 %38, i32* %20, align 4
  br label %43

39:                                               ; preds = %31
  %40 = load i8*, i8** %7, align 8
  %41 = call i64 @strtol(i8* %40, i8** %27, i32 0)
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %20, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = bitcast i32* %20 to i8*
  store i8* %44, i8** %13, align 8
  store i64 4, i64* %26, align 8
  br label %98

45:                                               ; preds = %5
  %46 = load i8*, i8** %7, align 8
  %47 = call i64 @strtoul(i8* %46, i8** %27, i32 0)
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %21, align 4
  %49 = bitcast i32* %21 to i8*
  store i8* %49, i8** %13, align 8
  store i64 4, i64* %26, align 8
  br label %98

50:                                               ; preds = %5
  %51 = load i8*, i8** %7, align 8
  %52 = call i64 @strtol(i8* %51, i8** %27, i32 0)
  store i64 %52, i64* %22, align 8
  %53 = bitcast i64* %22 to i8*
  store i8* %53, i8** %13, align 8
  store i64 8, i64* %26, align 8
  br label %98

54:                                               ; preds = %5
  %55 = load i8*, i8** %7, align 8
  %56 = call i64 @strtoul(i8* %55, i8** %27, i32 0)
  store i64 %56, i64* %23, align 8
  %57 = bitcast i64* %23 to i8*
  store i8* %57, i8** %13, align 8
  store i64 8, i64* %26, align 8
  br label %98

58:                                               ; preds = %5
  %59 = load i8*, i8** %7, align 8
  %60 = call i64 @strtol(i8* %59, i8** %27, i32 0)
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %14, align 4
  %62 = bitcast i32* %14 to i8*
  store i8* %62, i8** %13, align 8
  store i64 4, i64* %26, align 8
  br label %98

63:                                               ; preds = %5
  %64 = load i8*, i8** %7, align 8
  %65 = call i64 @strtol(i8* %64, i8** %27, i32 0)
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %16, align 4
  %67 = bitcast i32* %16 to i8*
  store i8* %67, i8** %13, align 8
  store i64 4, i64* %26, align 8
  br label %98

68:                                               ; preds = %5
  %69 = load i8*, i8** %7, align 8
  %70 = call i64 @strtol(i8* %69, i8** %27, i32 0)
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %18, align 4
  %72 = bitcast i32* %18 to i8*
  store i8* %72, i8** %13, align 8
  store i64 4, i64* %26, align 8
  br label %98

73:                                               ; preds = %5
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @strtoimax(i8* %74, i8** %27, i32 0)
  store i32 %75, i32* %24, align 4
  %76 = bitcast i32* %24 to i8*
  store i8* %76, i8** %13, align 8
  store i64 4, i64* %26, align 8
  br label %98

77:                                               ; preds = %5
  %78 = load i8*, i8** %7, align 8
  %79 = call i64 @strtoul(i8* %78, i8** %27, i32 0)
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %15, align 4
  %81 = bitcast i32* %15 to i8*
  store i8* %81, i8** %13, align 8
  store i64 4, i64* %26, align 8
  br label %98

82:                                               ; preds = %5
  %83 = load i8*, i8** %7, align 8
  %84 = call i64 @strtoul(i8* %83, i8** %27, i32 0)
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %17, align 4
  %86 = bitcast i32* %17 to i8*
  store i8* %86, i8** %13, align 8
  store i64 4, i64* %26, align 8
  br label %98

87:                                               ; preds = %5
  %88 = load i8*, i8** %7, align 8
  %89 = call i64 @strtoul(i8* %88, i8** %27, i32 0)
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %19, align 4
  %91 = bitcast i32* %19 to i8*
  store i8* %91, i8** %13, align 8
  store i64 4, i64* %26, align 8
  br label %98

92:                                               ; preds = %5
  %93 = load i8*, i8** %7, align 8
  %94 = call i32 @strtoumax(i8* %93, i8** %27, i32 0)
  store i32 %94, i32* %25, align 4
  %95 = bitcast i32* %25 to i8*
  store i8* %95, i8** %13, align 8
  store i64 4, i64* %26, align 8
  br label %98

96:                                               ; preds = %5
  %97 = call i32 (...) @abort() #3
  unreachable

98:                                               ; preds = %92, %87, %82, %77, %73, %68, %63, %58, %54, %50, %45, %43
  %99 = load i64, i64* @errno, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %113, label %101

101:                                              ; preds = %98
  %102 = load i8*, i8** %27, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = icmp eq i8* %102, %103
  br i1 %104, label %113, label %105

105:                                              ; preds = %101
  %106 = load i8*, i8** %27, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load i8*, i8** %27, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108, %101, %98
  store i32 0, i32* %6, align 4
  br label %140

114:                                              ; preds = %108, %105
  %115 = load i8**, i8*** %10, align 8
  %116 = load i8*, i8** %115, align 8
  %117 = load i64*, i64** %11, align 8
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %26, align 8
  %120 = add i64 %118, %119
  %121 = call i8* @realloc(i8* %116, i64 %120)
  store i8* %121, i8** %12, align 8
  %122 = load i8*, i8** %12, align 8
  %123 = icmp eq i8* %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %114
  %125 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %114
  %127 = load i8*, i8** %12, align 8
  %128 = load i64*, i64** %11, align 8
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i8*, i8** %13, align 8
  %132 = load i64, i64* %26, align 8
  %133 = call i32 @memcpy(i8* %130, i8* %131, i64 %132)
  %134 = load i8*, i8** %12, align 8
  %135 = load i8**, i8*** %10, align 8
  store i8* %134, i8** %135, align 8
  %136 = load i64, i64* %26, align 8
  %137 = load i64*, i64** %11, align 8
  %138 = load i64, i64* %137, align 8
  %139 = add i64 %138, %136
  store i64 %139, i64* %137, align 8
  store i32 1, i32* %6, align 4
  br label %140

140:                                              ; preds = %126, %113
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strIKtoi(i8*, i8**, i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @strtoimax(i8*, i8**, i32) #1

declare dso_local i32 @strtoumax(i8*, i8**, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
