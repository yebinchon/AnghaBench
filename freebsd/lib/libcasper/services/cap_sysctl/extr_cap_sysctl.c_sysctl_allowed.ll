; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_sysctl/extr_cap_sysctl.c_sysctl_allowed.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_sysctl/extr_cap_sysctl.c_sysctl_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"mib\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@NV_TYPE_NVLIST = common dso_local global i32 0, align 4
@CAP_SYSCTL_RECURSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @sysctl_allowed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysctl_allowed(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %126

22:                                               ; preds = %2
  %23 = load i32*, i32** %5, align 8
  %24 = call i32* @dnvlist_get_binary(i32* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %14, i32* null, i32 0)
  store i32* %24, i32** %16, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i8* @dnvlist_get_string(i32* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8* %26, i8** %11, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @nvlist_get_number(i32* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %28, i32* %8, align 4
  store i8* null, i8** %12, align 8
  br label %29

29:                                               ; preds = %122, %115, %101, %93, %78, %68, %57, %48, %22
  %30 = load i32*, i32** %4, align 8
  %31 = call i8* @nvlist_next(i32* %30, i32* %17, i8** %12)
  store i8* %31, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %125

33:                                               ; preds = %29
  %34 = load i32, i32* %17, align 4
  %35 = load i32, i32* @NV_TYPE_NVLIST, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i8*, i8** %12, align 8
  %40 = call i32* @cnvlist_get_nvlist(i8* %39)
  store i32* %40, i32** %6, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @nvlist_get_number(i32* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %33
  br label %29

49:                                               ; preds = %33
  %50 = load i8*, i8** %11, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %96

52:                                               ; preds = %49
  %53 = load i32*, i32** %6, align 8
  %54 = call i8* @dnvlist_get_string(i32* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8* %54, i8** %9, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %29

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @CAP_SYSCTL_RECURSIVE, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load i8*, i8** %9, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = call i64 @strcmp(i8* %64, i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %29

69:                                               ; preds = %63
  br label %95

70:                                               ; preds = %58
  %71 = load i8*, i8** %9, align 8
  %72 = call i64 @strlen(i8* %71)
  store i64 %72, i64* %18, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = load i64, i64* %18, align 8
  %76 = call i64 @strncmp(i8* %73, i8* %74, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %29

79:                                               ; preds = %70
  %80 = load i8*, i8** %11, align 8
  %81 = load i64, i64* %18, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 46
  br i1 %85, label %86, label %94

86:                                               ; preds = %79
  %87 = load i8*, i8** %11, align 8
  %88 = load i64, i64* %18, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %29

94:                                               ; preds = %86, %79
  br label %95

95:                                               ; preds = %94, %69
  br label %124

96:                                               ; preds = %49
  %97 = load i32*, i32** %6, align 8
  %98 = call i32* @dnvlist_get_binary(i32* %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %13, i32* null, i32 0)
  store i32* %98, i32** %15, align 8
  %99 = load i32*, i32** %15, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %29

102:                                              ; preds = %96
  %103 = load i64, i64* %13, align 8
  %104 = load i64, i64* %14, align 8
  %105 = icmp ugt i64 %103, %104
  br i1 %105, label %115, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @CAP_SYSCTL_RECURSIVE, align 4
  %109 = and i32 %107, %108
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load i64, i64* %13, align 8
  %113 = load i64, i64* %14, align 8
  %114 = icmp ult i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111, %102
  br label %29

116:                                              ; preds = %111, %106
  %117 = load i32*, i32** %15, align 8
  %118 = load i32*, i32** %16, align 8
  %119 = load i64, i64* %13, align 8
  %120 = call i64 @memcmp(i32* %117, i32* %118, i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %29

123:                                              ; preds = %116
  br label %124

124:                                              ; preds = %123, %95
  store i32 1, i32* %3, align 4
  br label %126

125:                                              ; preds = %29
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %124, %21
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32* @dnvlist_get_binary(i32*, i8*, i64*, i32*, i32) #1

declare dso_local i8* @dnvlist_get_string(i32*, i8*, i32*) #1

declare dso_local i32 @nvlist_get_number(i32*, i8*) #1

declare dso_local i8* @nvlist_next(i32*, i32*, i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @cnvlist_get_nvlist(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @memcmp(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
