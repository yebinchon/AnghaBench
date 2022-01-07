; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_print_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_print_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._s_x = type { i32, i32 }
%struct.buf_pr = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@f_tcpflags = common dso_local global %struct._s_x* null, align 8
@TH_SYN = common dso_local global i32 0, align 4
@TH_ACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c" setup\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s!%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf_pr*, i8*, %struct.TYPE_3__*, %struct._s_x*)* @print_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_flags(%struct.buf_pr* %0, i8* %1, %struct.TYPE_3__* %2, %struct._s_x* %3) #0 {
  %5 = alloca %struct.buf_pr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct._s_x*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.buf_pr* %0, %struct.buf_pr** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store %struct._s_x* %3, %struct._s_x** %8, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 255
  store i32 %16, i32* %11, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 8
  %21 = and i32 %20, 255
  store i32 %21, i32* %12, align 4
  %22 = load %struct._s_x*, %struct._s_x** %8, align 8
  %23 = load %struct._s_x*, %struct._s_x** @f_tcpflags, align 8
  %24 = icmp eq %struct._s_x* %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @TH_SYN, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @TH_ACK, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.buf_pr*, %struct.buf_pr** %5, align 8
  %35 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %110

36:                                               ; preds = %29, %25, %4
  %37 = load %struct.buf_pr*, %struct.buf_pr** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %107, %36
  %41 = load %struct._s_x*, %struct._s_x** %8, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct._s_x, %struct._s_x* %41, i64 %43
  %45 = getelementptr inbounds %struct._s_x, %struct._s_x* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %110

48:                                               ; preds = %40
  %49 = load i32, i32* %11, align 4
  %50 = load %struct._s_x*, %struct._s_x** %8, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct._s_x, %struct._s_x* %50, i64 %52
  %54 = getelementptr inbounds %struct._s_x, %struct._s_x* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %49, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %48
  %59 = load %struct._s_x*, %struct._s_x** %8, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct._s_x, %struct._s_x* %59, i64 %61
  %63 = getelementptr inbounds %struct._s_x, %struct._s_x* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %11, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %11, align 4
  %68 = load %struct.buf_pr*, %struct.buf_pr** %5, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load %struct._s_x*, %struct._s_x** %8, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct._s_x, %struct._s_x* %70, i64 %72
  %74 = getelementptr inbounds %struct._s_x, %struct._s_x* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %69, i32 %75)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %77

77:                                               ; preds = %58, %48
  %78 = load i32, i32* %12, align 4
  %79 = load %struct._s_x*, %struct._s_x** %8, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct._s_x, %struct._s_x* %79, i64 %81
  %83 = getelementptr inbounds %struct._s_x, %struct._s_x* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %78, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %106

87:                                               ; preds = %77
  %88 = load %struct._s_x*, %struct._s_x** %8, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct._s_x, %struct._s_x* %88, i64 %90
  %92 = getelementptr inbounds %struct._s_x, %struct._s_x* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %12, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %12, align 4
  %97 = load %struct.buf_pr*, %struct.buf_pr** %5, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = load %struct._s_x*, %struct._s_x** %8, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct._s_x, %struct._s_x* %99, i64 %101
  %103 = getelementptr inbounds %struct._s_x, %struct._s_x* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %98, i32 %104)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %106

106:                                              ; preds = %87, %77
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %40

110:                                              ; preds = %33, %40
  ret void
}

declare dso_local i32 @bprintf(%struct.buf_pr*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
