; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/revnetgroup/extr_parse_netgroup.c___endnetgrent.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/revnetgroup/extr_parse_netgroup.c___endnetgrent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linelist = type { i8*, i8*, %struct.linelist* }
%struct.TYPE_2__ = type { i8*, %struct.netgrp* }
%struct.netgrp = type { i8**, %struct.netgrp* }

@linehead = common dso_local global %struct.linelist* null, align 8
@grouphead = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NG_HOST = common dso_local global i64 0, align 8
@NG_USER = common dso_local global i64 0, align 8
@NG_DOM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__endnetgrent() #0 {
  %1 = alloca %struct.linelist*, align 8
  %2 = alloca %struct.linelist*, align 8
  %3 = alloca %struct.netgrp*, align 8
  %4 = alloca %struct.netgrp*, align 8
  %5 = load %struct.linelist*, %struct.linelist** @linehead, align 8
  store %struct.linelist* %5, %struct.linelist** %1, align 8
  br label %6

6:                                                ; preds = %9, %0
  %7 = load %struct.linelist*, %struct.linelist** %1, align 8
  %8 = icmp ne %struct.linelist* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = load %struct.linelist*, %struct.linelist** %1, align 8
  store %struct.linelist* %10, %struct.linelist** %2, align 8
  %11 = load %struct.linelist*, %struct.linelist** %1, align 8
  %12 = getelementptr inbounds %struct.linelist, %struct.linelist* %11, i32 0, i32 2
  %13 = load %struct.linelist*, %struct.linelist** %12, align 8
  store %struct.linelist* %13, %struct.linelist** %1, align 8
  %14 = load %struct.linelist*, %struct.linelist** %2, align 8
  %15 = getelementptr inbounds %struct.linelist, %struct.linelist* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @free(i8* %16)
  %18 = load %struct.linelist*, %struct.linelist** %2, align 8
  %19 = getelementptr inbounds %struct.linelist, %struct.linelist* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @free(i8* %20)
  %22 = load %struct.linelist*, %struct.linelist** %2, align 8
  %23 = bitcast %struct.linelist* %22 to i8*
  %24 = call i32 @free(i8* %23)
  br label %6

25:                                               ; preds = %6
  store %struct.linelist* null, %struct.linelist** @linehead, align 8
  %26 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @grouphead, i32 0, i32 0), align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @grouphead, i32 0, i32 0), align 8
  %30 = call i32 @free(i8* %29)
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @grouphead, i32 0, i32 0), align 8
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.netgrp*, %struct.netgrp** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @grouphead, i32 0, i32 1), align 8
  store %struct.netgrp* %32, %struct.netgrp** %3, align 8
  br label %33

33:                                               ; preds = %88, %31
  %34 = load %struct.netgrp*, %struct.netgrp** %3, align 8
  %35 = icmp ne %struct.netgrp* %34, null
  br i1 %35, label %36, label %92

36:                                               ; preds = %33
  %37 = load %struct.netgrp*, %struct.netgrp** %3, align 8
  store %struct.netgrp* %37, %struct.netgrp** %4, align 8
  %38 = load %struct.netgrp*, %struct.netgrp** %3, align 8
  %39 = getelementptr inbounds %struct.netgrp, %struct.netgrp* %38, i32 0, i32 1
  %40 = load %struct.netgrp*, %struct.netgrp** %39, align 8
  store %struct.netgrp* %40, %struct.netgrp** %3, align 8
  %41 = load %struct.netgrp*, %struct.netgrp** %4, align 8
  %42 = getelementptr inbounds %struct.netgrp, %struct.netgrp* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = load i64, i64* @NG_HOST, align 8
  %45 = getelementptr inbounds i8*, i8** %43, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %36
  %49 = load %struct.netgrp*, %struct.netgrp** %4, align 8
  %50 = getelementptr inbounds %struct.netgrp, %struct.netgrp* %49, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  %52 = load i64, i64* @NG_HOST, align 8
  %53 = getelementptr inbounds i8*, i8** %51, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @free(i8* %54)
  br label %56

56:                                               ; preds = %48, %36
  %57 = load %struct.netgrp*, %struct.netgrp** %4, align 8
  %58 = getelementptr inbounds %struct.netgrp, %struct.netgrp* %57, i32 0, i32 0
  %59 = load i8**, i8*** %58, align 8
  %60 = load i64, i64* @NG_USER, align 8
  %61 = getelementptr inbounds i8*, i8** %59, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %56
  %65 = load %struct.netgrp*, %struct.netgrp** %4, align 8
  %66 = getelementptr inbounds %struct.netgrp, %struct.netgrp* %65, i32 0, i32 0
  %67 = load i8**, i8*** %66, align 8
  %68 = load i64, i64* @NG_USER, align 8
  %69 = getelementptr inbounds i8*, i8** %67, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @free(i8* %70)
  br label %72

72:                                               ; preds = %64, %56
  %73 = load %struct.netgrp*, %struct.netgrp** %4, align 8
  %74 = getelementptr inbounds %struct.netgrp, %struct.netgrp* %73, i32 0, i32 0
  %75 = load i8**, i8*** %74, align 8
  %76 = load i64, i64* @NG_DOM, align 8
  %77 = getelementptr inbounds i8*, i8** %75, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %72
  %81 = load %struct.netgrp*, %struct.netgrp** %4, align 8
  %82 = getelementptr inbounds %struct.netgrp, %struct.netgrp* %81, i32 0, i32 0
  %83 = load i8**, i8*** %82, align 8
  %84 = load i64, i64* @NG_DOM, align 8
  %85 = getelementptr inbounds i8*, i8** %83, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @free(i8* %86)
  br label %88

88:                                               ; preds = %80, %72
  %89 = load %struct.netgrp*, %struct.netgrp** %4, align 8
  %90 = bitcast %struct.netgrp* %89 to i8*
  %91 = call i32 @free(i8* %90)
  br label %33

92:                                               ; preds = %33
  store %struct.netgrp* null, %struct.netgrp** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @grouphead, i32 0, i32 1), align 8
  ret void
}

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
