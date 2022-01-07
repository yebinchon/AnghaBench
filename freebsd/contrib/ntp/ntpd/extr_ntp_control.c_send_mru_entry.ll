; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_send_mru_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_send_mru_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@__const.send_mru_entry.first_fmt = private unnamed_addr constant [9 x i8] c"first.%d\00", align 1
@__const.send_mru_entry.ct_fmt = private unnamed_addr constant [6 x i8] c"ct.%d\00", align 1
@__const.send_mru_entry.mv_fmt = private unnamed_addr constant [6 x i8] c"mv.%d\00", align 1
@__const.send_mru_entry.rs_fmt = private unnamed_addr constant [6 x i8] c"rs.%d\00", align 1
@addr_fmt = common dso_local global i8* null, align 8
@last_fmt = common dso_local global i8* null, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @send_mru_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_mru_entry(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [9 x i8], align 1
  %6 = alloca [6 x i8], align 1
  %7 = alloca [6 x i8], align 1
  %8 = alloca [6 x i8], align 1
  %9 = alloca [32 x i8], align 16
  %10 = alloca [6 x i64], align 16
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = bitcast [9 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.send_mru_entry.first_fmt, i32 0, i32 0), i64 9, i1 false)
  %16 = bitcast [6 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.send_mru_entry.ct_fmt, i32 0, i32 0), i64 6, i1 false)
  %17 = bitcast [6 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.send_mru_entry.mv_fmt, i32 0, i32 0), i64 6, i1 false)
  %18 = bitcast [6 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.send_mru_entry.rs_fmt, i32 0, i32 0), i64 6, i1 false)
  %19 = getelementptr inbounds [6 x i64], [6 x i64]* %10, i64 0, i64 0
  %20 = call i64 @COUNTOF(i64* %19)
  store i64 %20, i64* %13, align 8
  %21 = getelementptr inbounds [6 x i64], [6 x i64]* %10, i64 0, i64 0
  %22 = call i32 @ZERO(i64* %21)
  %23 = call i32 (...) @rand()
  %24 = call i32 (...) @rand()
  %25 = shl i32 %24, 16
  %26 = xor i32 %23, %25
  store i32 %26, i32* %11, align 4
  br label %27

27:                                               ; preds = %113, %2
  %28 = load i64, i64* %13, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %119

30:                                               ; preds = %27
  %31 = load i32, i32* %11, align 4
  %32 = and i32 %31, 7
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [6 x i64], [6 x i64]* %10, i64 0, i64 0
  %35 = call i64 @COUNTOF(i64* %34)
  %36 = srem i64 %33, %35
  store i64 %36, i64* %12, align 8
  %37 = load i32, i32* %11, align 4
  %38 = ashr i32 %37, 3
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %44, %30
  %40 = load i64, i64* %12, align 8
  %41 = getelementptr inbounds [6 x i64], [6 x i64]* %10, i64 0, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i64, i64* %12, align 8
  %46 = add nsw i64 %45, 1
  %47 = getelementptr inbounds [6 x i64], [6 x i64]* %10, i64 0, i64 0
  %48 = call i64 @COUNTOF(i64* %47)
  %49 = srem i64 %46, %48
  store i64 %49, i64* %12, align 8
  br label %39

50:                                               ; preds = %39
  %51 = load i64, i64* %12, align 8
  switch i64 %51, label %113 [
    i64 0, label %52
    i64 1, label %65
    i64 2, label %74
    i64 3, label %83
    i64 4, label %93
    i64 5, label %103
  ]

52:                                               ; preds = %50
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %54 = load i8*, i8** @addr_fmt, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @snprintf(i8* %53, i32 32, i8* %54, i32 %55)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 5
  %59 = call i8* @sptoa(i32* %58)
  store i8* %59, i8** %14, align 8
  %60 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %61 = load i8*, i8** %14, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = call i32 @strlen(i8* %62)
  %64 = call i32 @ctl_putunqstr(i8* %60, i8* %61, i32 %63)
  br label %113

65:                                               ; preds = %50
  %66 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %67 = load i8*, i8** @last_fmt, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @snprintf(i8* %66, i32 32, i8* %67, i32 %68)
  %70 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 4
  %73 = call i32 @ctl_putts(i8* %70, i32* %72)
  br label %113

74:                                               ; preds = %50
  %75 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %76 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @snprintf(i8* %75, i32 32, i8* %76, i32 %77)
  %79 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  %82 = call i32 @ctl_putts(i8* %79, i32* %81)
  br label %113

83:                                               ; preds = %50
  %84 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %85 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @snprintf(i8* %84, i32 32, i8* %85, i32 %86)
  %88 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ctl_putint(i8* %88, i32 %91)
  br label %113

93:                                               ; preds = %50
  %94 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %95 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @snprintf(i8* %94, i32 32, i8* %95, i32 %96)
  %98 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ctl_putuint(i8* %98, i32 %101)
  br label %113

103:                                              ; preds = %50
  %104 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %105 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @snprintf(i8* %104, i32 32, i8* %105, i32 %106)
  %108 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ctl_puthex(i8* %108, i32 %111)
  br label %113

113:                                              ; preds = %50, %103, %93, %83, %74, %65, %52
  %114 = load i64, i64* @TRUE, align 8
  %115 = load i64, i64* %12, align 8
  %116 = getelementptr inbounds [6 x i64], [6 x i64]* %10, i64 0, i64 %115
  store i64 %114, i64* %116, align 8
  %117 = load i64, i64* %13, align 8
  %118 = add nsw i64 %117, -1
  store i64 %118, i64* %13, align 8
  br label %27

119:                                              ; preds = %27
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @COUNTOF(i64*) #2

declare dso_local i32 @ZERO(i64*) #2

declare dso_local i32 @rand(...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i8* @sptoa(i32*) #2

declare dso_local i32 @ctl_putunqstr(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @ctl_putts(i8*, i32*) #2

declare dso_local i32 @ctl_putint(i8*, i32) #2

declare dso_local i32 @ctl_putuint(i8*, i32) #2

declare dso_local i32 @ctl_puthex(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
