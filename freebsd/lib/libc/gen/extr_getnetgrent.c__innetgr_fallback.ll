; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getnetgrent.c__innetgr_fallback.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getnetgrent.c__innetgr_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@NS_SUCCESS = common dso_local global i32 0, align 4
@NS_RETURN = common dso_local global i32 0, align 4
@NGRP_STORAGE_INITIAL = common dso_local global i64 0, align 8
@NS_UNAVAIL = common dso_local global i32 0, align 4
@setnetgrent_dtab = common dso_local global i32 0, align 4
@NSDB_NETGROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"setnetgrent\00", align 1
@getnetgrent_dtab = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"getnetgrent_r\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@NGRP_STORAGE_MAX = common dso_local global i64 0, align 8
@NS_NOTFOUND = common dso_local global i32 0, align 4
@endnetgrent_dtab = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"endnetgrent\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*, i8*, i8*)* @_innetgr_fallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_innetgr_fallback(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [2 x %struct.TYPE_3__], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %22 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %14, i64 0, i64 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i8*, i8** %9, align 8
  store i8* %24, i8** %23, align 16
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %26 = load i32, i32* @NS_SUCCESS, align 4
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i8* null, i8** %28, align 16
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32 0, i32* %29, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %6
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32, %6
  %39 = load i32, i32* @NS_RETURN, align 4
  store i32 %39, i32* %7, align 4
  br label %155

40:                                               ; preds = %32
  %41 = load i64, i64* @NGRP_STORAGE_INITIAL, align 8
  store i64 %41, i64* %19, align 8
  %42 = load i64, i64* %19, align 8
  %43 = call i8* @malloc(i64 %42)
  store i8* %43, i8** %18, align 8
  %44 = load i8*, i8** %18, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @NS_UNAVAIL, align 4
  store i32 %47, i32* %7, align 4
  br label %155

48:                                               ; preds = %40
  %49 = load i8*, i8** %8, align 8
  %50 = bitcast i8* %49 to i32*
  store i32 0, i32* %50, align 4
  %51 = load i32, i32* @setnetgrent_dtab, align 4
  %52 = load i32, i32* @NSDB_NETGROUP, align 4
  %53 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %14, i64 0, i64 0
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 (i32*, i32, i32, i8*, %struct.TYPE_3__*, ...) @_nsdispatch(i32* null, i32 %51, i32 %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %53, i8* %54)
  br label %56

56:                                               ; preds = %145, %48
  br label %57

57:                                               ; preds = %93, %56
  store i32 0, i32* %21, align 4
  %58 = load i32, i32* @getnetgrent_dtab, align 4
  %59 = load i32, i32* @NSDB_NETGROUP, align 4
  %60 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %14, i64 0, i64 0
  %61 = load i8*, i8** %18, align 8
  %62 = load i64, i64* %19, align 8
  %63 = call i32 (i32*, i32, i32, i8*, %struct.TYPE_3__*, ...) @_nsdispatch(i32* null, i32 %58, i32 %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_3__* %60, i8** %15, i8** %16, i8** %17, i8* %61, i64 %62, i32* %21)
  store i32 %63, i32* %20, align 4
  %64 = load i32, i32* %20, align 4
  %65 = load i32, i32* @NS_SUCCESS, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %57
  %68 = load i32, i32* %21, align 4
  %69 = load i32, i32* @ERANGE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %67
  %72 = load i64, i64* %19, align 8
  %73 = mul i64 %72, 2
  store i64 %73, i64* %19, align 8
  %74 = load i64, i64* %19, align 8
  %75 = load i64, i64* @NGRP_STORAGE_MAX, align 8
  %76 = icmp ugt i64 %74, %75
  br i1 %76, label %82, label %77

77:                                               ; preds = %71
  %78 = load i8*, i8** %18, align 8
  %79 = load i64, i64* %19, align 8
  %80 = call i8* @reallocf(i8* %78, i64 %79)
  store i8* %80, i8** %18, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %77, %71
  br label %147

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83, %67, %57
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %20, align 4
  %87 = load i32, i32* @NS_SUCCESS, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i32, i32* %21, align 4
  %91 = load i32, i32* @ERANGE, align 4
  %92 = icmp eq i32 %90, %91
  br label %93

93:                                               ; preds = %89, %85
  %94 = phi i1 [ false, %85 ], [ %92, %89 ]
  br i1 %94, label %57, label %95

95:                                               ; preds = %93
  %96 = load i32, i32* %20, align 4
  %97 = load i32, i32* @NS_SUCCESS, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %95
  %100 = load i32, i32* %20, align 4
  %101 = load i32, i32* @NS_NOTFOUND, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load i32, i32* %21, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i32, i32* @NS_SUCCESS, align 4
  store i32 %107, i32* %20, align 4
  br label %108

108:                                              ; preds = %106, %103, %99
  br label %146

109:                                              ; preds = %95
  %110 = load i8*, i8** %11, align 8
  %111 = icmp eq i8* %110, null
  br i1 %111, label %120, label %112

112:                                              ; preds = %109
  %113 = load i8*, i8** %15, align 8
  %114 = icmp eq i8* %113, null
  br i1 %114, label %120, label %115

115:                                              ; preds = %112
  %116 = load i8*, i8** %11, align 8
  %117 = load i8*, i8** %15, align 8
  %118 = call i64 @strcmp(i8* %116, i8* %117)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %145

120:                                              ; preds = %115, %112, %109
  %121 = load i8*, i8** %12, align 8
  %122 = icmp eq i8* %121, null
  br i1 %122, label %131, label %123

123:                                              ; preds = %120
  %124 = load i8*, i8** %16, align 8
  %125 = icmp eq i8* %124, null
  br i1 %125, label %131, label %126

126:                                              ; preds = %123
  %127 = load i8*, i8** %12, align 8
  %128 = load i8*, i8** %16, align 8
  %129 = call i64 @strcmp(i8* %127, i8* %128)
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %126, %123, %120
  %132 = load i8*, i8** %13, align 8
  %133 = icmp eq i8* %132, null
  br i1 %133, label %142, label %134

134:                                              ; preds = %131
  %135 = load i8*, i8** %17, align 8
  %136 = icmp eq i8* %135, null
  br i1 %136, label %142, label %137

137:                                              ; preds = %134
  %138 = load i8*, i8** %13, align 8
  %139 = load i8*, i8** %17, align 8
  %140 = call i64 @strcmp(i8* %138, i8* %139)
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %137, %134, %131
  %143 = load i8*, i8** %8, align 8
  %144 = bitcast i8* %143 to i32*
  store i32 1, i32* %144, align 4
  br label %146

145:                                              ; preds = %137, %126, %115
  br label %56

146:                                              ; preds = %142, %108
  br label %147

147:                                              ; preds = %146, %82
  %148 = load i8*, i8** %18, align 8
  %149 = call i32 @free(i8* %148)
  %150 = load i32, i32* @endnetgrent_dtab, align 4
  %151 = load i32, i32* @NSDB_NETGROUP, align 4
  %152 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %14, i64 0, i64 0
  %153 = call i32 (i32*, i32, i32, i8*, %struct.TYPE_3__*, ...) @_nsdispatch(i32* null, i32 %150, i32 %151, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_3__* %152)
  %154 = load i32, i32* %20, align 4
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %147, %46, %38
  %156 = load i32, i32* %7, align 4
  ret i32 %156
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @_nsdispatch(i32*, i32, i32, i8*, %struct.TYPE_3__*, ...) #1

declare dso_local i8* @reallocf(i8*, i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
