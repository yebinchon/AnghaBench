; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_lib.c_recinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_lib.c_recinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }

@record = common dso_local global i8* null, align 8
@fields = common dso_local global i8* null, align 8
@nfields = common dso_local global i32 0, align 4
@fldtab = common dso_local global %struct.TYPE_4__** null, align 8
@.str = private unnamed_addr constant [31 x i8] c"out of space for $0 and fields\00", align 1
@dollar0 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @recinit(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i64 @malloc(i32 %3)
  %5 = inttoptr i64 %4 to i8*
  store i8* %5, i8** @record, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = add i32 %8, 1
  %10 = call i64 @malloc(i32 %9)
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** @fields, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %7
  %14 = load i32, i32* @nfields, align 4
  %15 = add nsw i32 %14, 2
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 8
  %18 = trunc i64 %17 to i32
  %19 = call i64 @malloc(i32 %18)
  %20 = inttoptr i64 %19 to %struct.TYPE_4__**
  store %struct.TYPE_4__** %20, %struct.TYPE_4__*** @fldtab, align 8
  %21 = icmp eq %struct.TYPE_4__** %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %13
  %23 = call i64 @malloc(i32 16)
  %24 = inttoptr i64 %23 to %struct.TYPE_4__*
  %25 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @fldtab, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %25, i64 0
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %26, align 8
  %27 = icmp eq %struct.TYPE_4__* %24, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %22, %13, %7, %1
  %29 = call i32 @FATAL(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %22
  %31 = load i8*, i8** @record, align 8
  store i8 0, i8* %31, align 1
  %32 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @fldtab, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %32, i64 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = bitcast %struct.TYPE_4__* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 bitcast (%struct.TYPE_4__* @dollar0 to i8*), i64 16, i1 false)
  %36 = load i8*, i8** @record, align 8
  %37 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @fldtab, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %37, i64 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i8* %36, i8** %40, align 8
  %41 = call i32 @tostring(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @fldtab, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %42, i64 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i32 %41, i32* %45, align 8
  %46 = load i32, i32* @nfields, align 4
  %47 = call i32 @makefields(i32 1, i32 %46)
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @FATAL(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tostring(i8*) #1

declare dso_local i32 @makefields(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
