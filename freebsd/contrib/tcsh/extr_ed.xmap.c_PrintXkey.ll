; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.xmap.c_PrintXkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.xmap.c_PrintXkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Strbuf = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }

@Strbuf_INIT = common dso_local global %struct.Strbuf zeroinitializer, align 4
@STRNULL = common dso_local global i32 0, align 4
@Xmap = common dso_local global i32* null, align 8
@Strbuf_cleanup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unbound extended key \22%S\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrintXkey(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.Strbuf, align 4
  %4 = alloca %struct.TYPE_4__, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = bitcast %struct.Strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.Strbuf* @Strbuf_INIT to i8*), i64 4, i1 false)
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i32 %11, i32* %12, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  br label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @STRNULL, align 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %17, %8
  %22 = load i32*, i32** @Xmap, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %43

29:                                               ; preds = %24, %21
  %30 = call i32 @Strbuf_append1(%struct.Strbuf* %3, i8 signext 34)
  %31 = load i32, i32* @Strbuf_cleanup, align 4
  %32 = call i32 @cleanup_push(%struct.Strbuf* %3, i32 %31)
  %33 = load i32*, i32** @Xmap, align 8
  %34 = call i32 @Lookup(%struct.Strbuf* %3, %struct.TYPE_4__* %4, i32* %33)
  %35 = icmp sle i32 %34, -1
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = call i32 @CGETS(i32 9, i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @xprintf(i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %36, %29
  %42 = call i32 @cleanup_until(%struct.Strbuf* %3)
  br label %43

43:                                               ; preds = %41, %28
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @Strbuf_append1(%struct.Strbuf*, i8 signext) #2

declare dso_local i32 @cleanup_push(%struct.Strbuf*, i32) #2

declare dso_local i32 @Lookup(%struct.Strbuf*, %struct.TYPE_4__*, i32*) #2

declare dso_local i32 @xprintf(i32, i32) #2

declare dso_local i32 @CGETS(i32, i32, i8*) #2

declare dso_local i32 @cleanup_until(%struct.Strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
