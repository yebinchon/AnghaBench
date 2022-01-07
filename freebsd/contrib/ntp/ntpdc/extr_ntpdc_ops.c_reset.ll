; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc_ops.c_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc_ops.c_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.parse = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.reset_flags = type { i32 }

@sreset = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"Flag %s unknown\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Not done due to errors\0A\00", align 1
@impl_ver = common dso_local global i64 0, align 8
@REQ_RESET_STATS = common dso_local global i32 0, align 4
@INFO_ERR_IMPL = common dso_local global i64 0, align 8
@IMPL_XNTPD = common dso_local global i64 0, align 8
@IMPL_XNTPD_OLD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"done!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32*)* @reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset(%struct.parse* %0, i32* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.reset_flags, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.reset_flags, %struct.reset_flags* %5, i32 0, i32 0
  store i32 0, i32* %12, align 4
  store i64 0, i64* %10, align 8
  br label %13

13:                                               ; preds = %78, %2
  %14 = load i64, i64* %10, align 8
  %15 = load %struct.parse*, %struct.parse** %3, align 8
  %16 = getelementptr inbounds %struct.parse, %struct.parse* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %81

19:                                               ; preds = %13
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %46, %19
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sreset, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %20
  %29 = load %struct.parse*, %struct.parse** %3, align 8
  %30 = getelementptr inbounds %struct.parse, %struct.parse* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sreset, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @STREQ(i8* %35, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %28
  br label %49

45:                                               ; preds = %28
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %20

49:                                               ; preds = %44, %20
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sreset, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %49
  %58 = load i32*, i32** %4, align 8
  %59 = load %struct.parse*, %struct.parse** %3, align 8
  %60 = getelementptr inbounds %struct.parse, %struct.parse* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i32*, i8*, ...) @fprintf(i32* %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %65)
  store i32 1, i32* %11, align 4
  br label %77

67:                                               ; preds = %49
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sreset, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.reset_flags, %struct.reset_flags* %5, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %73
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %67, %57
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %10, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %10, align 8
  br label %13

81:                                               ; preds = %13
  %82 = getelementptr inbounds %struct.reset_flags, %struct.reset_flags* %5, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @htonl(i32 %83)
  %85 = getelementptr inbounds %struct.reset_flags, %struct.reset_flags* %5, i32 0, i32 0
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 (i32*, i8*, ...) @fprintf(i32* %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %113

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %104, %91
  %93 = load i64, i64* @impl_ver, align 8
  %94 = load i32, i32* @REQ_RESET_STATS, align 4
  %95 = bitcast %struct.reset_flags* %5 to i8*
  %96 = call i64 @doquery(i64 %93, i32 %94, i32 1, i32 1, i32 4, i8* %95, i64* %6, i64* %7, i8** %8, i32 0, i32 4)
  store i64 %96, i64* %10, align 8
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* @INFO_ERR_IMPL, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %92
  %101 = load i64, i64* @impl_ver, align 8
  %102 = load i64, i64* @IMPL_XNTPD, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i64, i64* @IMPL_XNTPD_OLD, align 8
  store i64 %105, i64* @impl_ver, align 8
  br label %92

106:                                              ; preds = %100, %92
  %107 = load i64, i64* %10, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 (i32*, i8*, ...) @fprintf(i32* %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %106
  br label %113

113:                                              ; preds = %112, %88
  ret void
}

declare dso_local i64 @STREQ(i8*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @doquery(i64, i32, i32, i32, i32, i8*, i64*, i64*, i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
