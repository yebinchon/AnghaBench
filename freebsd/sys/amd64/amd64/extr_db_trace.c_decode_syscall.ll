; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_db_trace.c_decode_syscall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_db_trace.c_decode_syscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [5 x i8] c" (%d\00", align 1
@DB_STGY_ANY = common dso_local global i32 0, align 4
@DB_SYM_NULL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c", %s, %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.thread*)* @decode_syscall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_syscall(i32 %0, %struct.thread* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.thread* %1, %struct.thread** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.thread*, %struct.thread** %4, align 8
  %13 = icmp ne %struct.thread* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.thread*, %struct.thread** %4, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 0
  %17 = load %struct.proc*, %struct.proc** %16, align 8
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi %struct.proc* [ %17, %14 ], [ null, %18 ]
  store %struct.proc* %20, %struct.proc** %5, align 8
  %21 = load %struct.proc*, %struct.proc** %5, align 8
  %22 = icmp ne %struct.proc* %21, null
  br i1 %22, label %23, label %66

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = icmp sle i32 0, %24
  br i1 %25, label %26, label %66

26:                                               ; preds = %23
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.proc*, %struct.proc** %5, align 8
  %29 = getelementptr inbounds %struct.proc, %struct.proc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %27, %32
  br i1 %33, label %34, label %66

34:                                               ; preds = %26
  %35 = load %struct.proc*, %struct.proc** %5, align 8
  %36 = getelementptr inbounds %struct.proc, %struct.proc* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %8, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = ptrtoint i32* %45 to i32
  %47 = load i32, i32* @DB_STGY_ANY, align 4
  %48 = call i64 @db_search_symbol(i32 %46, i32 %47, i64* %7)
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @DB_SYM_NULL, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %34
  %53 = load i64, i64* %7, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @db_symbol_values(i64 %56, i8** %9, i32* null)
  %58 = load %struct.proc*, %struct.proc** %5, align 8
  %59 = getelementptr inbounds %struct.proc, %struct.proc* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %62, i8* %63)
  br label %65

65:                                               ; preds = %55, %52, %34
  br label %66

66:                                               ; preds = %65, %26, %23, %19
  %67 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @db_printf(i8*, ...) #1

declare dso_local i64 @db_search_symbol(i32, i32, i64*) #1

declare dso_local i32 @db_symbol_values(i64, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
