; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_validate.c_check_toptext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_validate.c_check_toptext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"OpenBSD\00", align 1
@MANDOCERR_BX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"Ox\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"NetBSD\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"Nx\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"Fx\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"DragonFly\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"Dx\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@MANDOCERR_FUNC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"%.*s()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.roff_man*, i32, i32, i8*)* @check_toptext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_toptext(%struct.roff_man* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.roff_man*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.roff_man* %0, %struct.roff_man** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %145

16:                                               ; preds = %4
  %17 = load i8*, i8** %8, align 8
  %18 = call i8* @strstr(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %18, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load i32, i32* @MANDOCERR_BX, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = ptrtoint i8* %24 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = trunc i64 %28 to i32
  %30 = add nsw i32 %23, %29
  %31 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %21, i32 %22, i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %20, %16
  %33 = load i8*, i8** %8, align 8
  %34 = call i8* @strstr(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %34, i8** %9, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load i32, i32* @MANDOCERR_BX, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = add nsw i32 %39, %45
  %47 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %37, i32 %38, i32 %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %36, %32
  %49 = load i8*, i8** %8, align 8
  %50 = call i8* @strstr(i8* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i8* %50, i8** %9, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load i32, i32* @MANDOCERR_BX, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i8*, i8** %9, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  %62 = add nsw i32 %55, %61
  %63 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %53, i32 %54, i32 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %64

64:                                               ; preds = %52, %48
  %65 = load i8*, i8** %8, align 8
  %66 = call i8* @strstr(i8* %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i8* %66, i8** %9, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = load i32, i32* @MANDOCERR_BX, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i8*, i8** %9, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = trunc i64 %76 to i32
  %78 = add nsw i32 %71, %77
  %79 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %69, i32 %70, i32 %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %80

80:                                               ; preds = %68, %64
  %81 = load i8*, i8** %8, align 8
  store i8* %81, i8** %9, align 8
  br label %82

82:                                               ; preds = %144, %80
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = call i8* @strstr(i8* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i8* %85, i8** %9, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %145

87:                                               ; preds = %82
  %88 = load i8*, i8** %9, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 -1
  store i8* %89, i8** %10, align 8
  br label %90

90:                                               ; preds = %106, %87
  %91 = load i8*, i8** %10, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = icmp uge i8* %91, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %90
  %95 = load i8*, i8** %10, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 95
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load i8*, i8** %10, align 8
  %101 = load i8, i8* %100, align 1
  %102 = call i32 @isalnum(i8 zeroext %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  br label %109

105:                                              ; preds = %99, %94
  br label %106

106:                                              ; preds = %105
  %107 = load i8*, i8** %10, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 -1
  store i8* %108, i8** %10, align 8
  br label %90

109:                                              ; preds = %104, %90
  %110 = load i8*, i8** %10, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = icmp ult i8* %110, %111
  br i1 %112, label %118, label %113

113:                                              ; preds = %109
  %114 = load i8*, i8** %10, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 32
  br i1 %117, label %118, label %144

118:                                              ; preds = %113, %109
  %119 = load i8*, i8** %10, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  %121 = load i8*, i8** %9, align 8
  %122 = icmp ult i8* %120, %121
  br i1 %122, label %123, label %144

123:                                              ; preds = %118
  %124 = load i8*, i8** %10, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %10, align 8
  %126 = load i32, i32* @MANDOCERR_FUNC, align 4
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %7, align 4
  %129 = load i8*, i8** %10, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = ptrtoint i8* %129 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  %134 = trunc i64 %133 to i32
  %135 = add nsw i32 %128, %134
  %136 = load i8*, i8** %9, align 8
  %137 = load i8*, i8** %10, align 8
  %138 = ptrtoint i8* %136 to i64
  %139 = ptrtoint i8* %137 to i64
  %140 = sub i64 %138, %139
  %141 = trunc i64 %140 to i32
  %142 = load i8*, i8** %10, align 8
  %143 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %126, i32 %127, i32 %135, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %141, i8* %142)
  br label %144

144:                                              ; preds = %123, %118, %113
  br label %82

145:                                              ; preds = %15, %82
  ret void
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @mandoc_msg(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @isalnum(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
