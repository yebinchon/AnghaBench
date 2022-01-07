; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_simple.c_universal.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_simple.c_universal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proglst = type { i64, i64, i64, i8*, i8* (i8*)*, i64, i32, i64, i32, %struct.proglst* }
%struct.svc_req = type { i64, i64, i64 }
%struct.TYPE_7__ = type { i32 }

@NULLPROC = common dso_local global i64 0, align 8
@xdr_void = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"svc_sendreply failed\00", align 1
@proglst_lock = common dso_local global i32 0, align 4
@proglst = common dso_local global %struct.proglst* null, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"rpc: rpc_reg trouble replying to prog %u vers %u\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"rpc: rpc_reg: never registered prog %u vers %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_req*, %struct.TYPE_7__*)* @universal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @universal(%struct.svc_req* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.svc_req*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.proglst*, align 8
  store %struct.svc_req* %0, %struct.svc_req** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %11 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %12 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NULLPROC, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = load i64, i64* @xdr_void, align 8
  %19 = call i64 @svc_sendreply(%struct.TYPE_7__* %17, i64 %18, i8* null)
  %20 = load i64, i64* @FALSE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %16
  br label %138

25:                                               ; preds = %2
  %26 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %27 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %5, align 8
  %29 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %30 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %6, align 8
  %32 = load %struct.svc_req*, %struct.svc_req** %3, align 8
  %33 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %7, align 8
  %35 = call i32 @mutex_lock(i32* @proglst_lock)
  %36 = load %struct.proglst*, %struct.proglst** @proglst, align 8
  store %struct.proglst* %36, %struct.proglst** %10, align 8
  br label %37

37:                                               ; preds = %127, %25
  %38 = load %struct.proglst*, %struct.proglst** %10, align 8
  %39 = icmp ne %struct.proglst* %38, null
  br i1 %39, label %40, label %131

40:                                               ; preds = %37
  %41 = load %struct.proglst*, %struct.proglst** %10, align 8
  %42 = getelementptr inbounds %struct.proglst, %struct.proglst* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %126

46:                                               ; preds = %40
  %47 = load %struct.proglst*, %struct.proglst** %10, align 8
  %48 = getelementptr inbounds %struct.proglst, %struct.proglst* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %126

52:                                               ; preds = %46
  %53 = load %struct.proglst*, %struct.proglst** %10, align 8
  %54 = getelementptr inbounds %struct.proglst, %struct.proglst* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %126

58:                                               ; preds = %52
  %59 = load %struct.proglst*, %struct.proglst** %10, align 8
  %60 = getelementptr inbounds %struct.proglst, %struct.proglst* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @strcmp(i32 %61, i32 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %126

67:                                               ; preds = %58
  %68 = load %struct.proglst*, %struct.proglst** %10, align 8
  %69 = getelementptr inbounds %struct.proglst, %struct.proglst* %68, i32 0, i32 3
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %9, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load %struct.proglst*, %struct.proglst** %10, align 8
  %73 = getelementptr inbounds %struct.proglst, %struct.proglst* %72, i32 0, i32 7
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @memset(i8* %71, i32 0, i64 %74)
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = load %struct.proglst*, %struct.proglst** %10, align 8
  %78 = getelementptr inbounds %struct.proglst, %struct.proglst* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 @svc_getargs(%struct.TYPE_7__* %76, i32 %79, i8* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %67
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %85 = call i32 @svcerr_decode(%struct.TYPE_7__* %84)
  %86 = call i32 @mutex_unlock(i32* @proglst_lock)
  br label %138

87:                                               ; preds = %67
  %88 = load %struct.proglst*, %struct.proglst** %10, align 8
  %89 = getelementptr inbounds %struct.proglst, %struct.proglst* %88, i32 0, i32 4
  %90 = load i8* (i8*)*, i8* (i8*)** %89, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = call i8* %90(i8* %91)
  store i8* %92, i8** %8, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %103

95:                                               ; preds = %87
  %96 = load %struct.proglst*, %struct.proglst** %10, align 8
  %97 = getelementptr inbounds %struct.proglst, %struct.proglst* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @xdr_void, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = call i32 @mutex_unlock(i32* @proglst_lock)
  br label %138

103:                                              ; preds = %95, %87
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = load %struct.proglst*, %struct.proglst** %10, align 8
  %106 = getelementptr inbounds %struct.proglst, %struct.proglst* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = call i64 @svc_sendreply(%struct.TYPE_7__* %104, i64 %107, i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %103
  %112 = load i64, i64* %5, align 8
  %113 = trunc i64 %112 to i32
  %114 = load i64, i64* %6, align 8
  %115 = trunc i64 %114 to i32
  %116 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %113, i32 %115)
  %117 = call i32 @mutex_unlock(i32* @proglst_lock)
  br label %138

118:                                              ; preds = %103
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %120 = load %struct.proglst*, %struct.proglst** %10, align 8
  %121 = getelementptr inbounds %struct.proglst, %struct.proglst* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 8
  %123 = load i8*, i8** %9, align 8
  %124 = call i32 @svc_freeargs(%struct.TYPE_7__* %119, i32 %122, i8* %123)
  %125 = call i32 @mutex_unlock(i32* @proglst_lock)
  br label %138

126:                                              ; preds = %58, %52, %46, %40
  br label %127

127:                                              ; preds = %126
  %128 = load %struct.proglst*, %struct.proglst** %10, align 8
  %129 = getelementptr inbounds %struct.proglst, %struct.proglst* %128, i32 0, i32 9
  %130 = load %struct.proglst*, %struct.proglst** %129, align 8
  store %struct.proglst* %130, %struct.proglst** %10, align 8
  br label %37

131:                                              ; preds = %37
  %132 = call i32 @mutex_unlock(i32* @proglst_lock)
  %133 = load i64, i64* %5, align 8
  %134 = trunc i64 %133 to i32
  %135 = load i64, i64* %6, align 8
  %136 = trunc i64 %135 to i32
  %137 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %134, i32 %136)
  br label %138

138:                                              ; preds = %131, %118, %111, %101, %83, %24
  ret void
}

declare dso_local i64 @svc_sendreply(%struct.TYPE_7__*, i64, i8*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @svc_getargs(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @svcerr_decode(%struct.TYPE_7__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @svc_freeargs(%struct.TYPE_7__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
