; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibsysstat.c_mk_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibsysstat.c_mk_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }

@.str = private unnamed_addr constant [11 x i8] c"?hostname?\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"?domainname?\00", align 1
@host_ncpu = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"cpu %d: model %s MHZ %s\0A\00", align 1
@cpus = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"cpuinfo truncated\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"unknown attr %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @mk_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mk_reply(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %7, align 8
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %126 [
    i32 128, label %13
    i32 129, label %14
    i32 130, label %74
  ]

13:                                               ; preds = %3
  br label %129

14:                                               ; preds = %3
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @gethostname(i8* %15, i32 %16)
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %20, i32 %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %19, %14
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  store i8 0, i8* %28, align 1
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @strlen(i8* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %31, 1
  %33 = icmp sge i32 %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %10, align 4
  br label %129

36:                                               ; preds = %23
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8 46, i8* %40, align 1
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  %43 = load i8*, i8** %7, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %10, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @getdomainname(i8* %54, i32 %55)
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %36
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %59, i32 %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %58, %36
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @strlen(i8* %63)
  store i32 %64, i32* %8, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 -1
  store i8 0, i8* %68, align 1
  br label %73

69:                                               ; preds = %62
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %69, %66
  br label %129

74:                                               ; preds = %3
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  store i8 0, i8* %76, align 1
  store i32 0, i32* %9, align 4
  br label %77

77:                                               ; preds = %120, %74
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @host_ncpu, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* %6, align 4
  %83 = icmp sgt i32 %82, 0
  br label %84

84:                                               ; preds = %81, %77
  %85 = phi i1 [ false, %77 ], [ %83, %81 ]
  br i1 %85, label %86, label %123

86:                                               ; preds = %84
  %87 = load i8*, i8** %7, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpus, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpus, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %87, i32 %88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %89, i8* %95, i8* %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp sge i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %86
  %107 = call i32 @IBWARN(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %10, align 4
  br label %123

109:                                              ; preds = %86
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %6, align 4
  %112 = sub nsw i32 %111, %110
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i8*, i8** %7, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8* %116, i8** %7, align 8
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %109
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %9, align 4
  br label %77

123:                                              ; preds = %106, %84
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %129

126:                                              ; preds = %3
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %126, %123, %73, %34, %13
  %130 = load i32, i32* %10, align 4
  ret i32 %130
}

declare dso_local i32 @gethostname(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @getdomainname(i8*, i32) #1

declare dso_local i32 @IBWARN(i8*) #1

declare dso_local i32 @DEBUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
